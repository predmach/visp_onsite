project(${the_module})

glob_more_specific_sources(H "${CMAKE_CURRENT_SOURCE_DIR}/../generator/src" handwritten_h_sources)
glob_more_specific_sources(CPP "${CMAKE_CURRENT_SOURCE_DIR}/../generator/src" handwritten_cpp_sources)

set(__type MODULE)
if(BUILD_FAT_JAVA_LIB)
  set(__type SHARED) # samples link to libvisp_java
elseif(APPLE)
  set(CMAKE_SHARED_MODULE_SUFFIX ".dylib")  # Java is not able to load .so files
endif()
vp_add_library(${the_module} ${__type}
    ${handwritten_h_sources} ${handwritten_cpp_sources} ${generated_cpp_sources}
    ${copied_files}
)
add_dependencies(${the_module} gen_visp_java_source)

# TODO: Some strange error. VISP_JAVA_BINDINGS_DIR is null at this line of execution. I dont know why its happening 
# Currently using a temporary workaround  
set(VISP_JAVA_BINDINGS_DIR "${VISP_BINARY_DIR}/modules/java_bindings_generator") 
 
vp_target_include_directories(${the_module} "${CMAKE_CURRENT_SOURCE_DIR}/../generator/src/cpp")
vp_target_include_directories(${the_module} "${VISP_JAVA_BINDINGS_DIR}/gen/cpp")
vp_target_include_modules(${the_module} ${VISP_MODULE_${the_module}_DEPS})
if(NOT ANDROID)
  vp_target_include_directories(${the_module} SYSTEM ${JNI_INCLUDE_DIRS})
endif()

set(__deps ${VISP_MODULE_${the_module}_DEPS})
list(REMOVE_ITEM __deps visp_java_bindings_generator) # don't add dummy module to target_link_libraries list

if(BUILD_FAT_JAVA_LIB)
  vp_list_unique(__deps)
  set(__extradeps ${__deps})
  vp_list_filterout(__extradeps "^visp_")
  if(__extradeps)
    list(REMOVE_ITEM __deps ${__extradeps})
  endif()
  if(APPLE)
    foreach(_dep ${__deps})
      vp_target_link_libraries(${the_module} LINK_PRIVATE -Wl,-force_load "${_dep}")
    endforeach()
	# TODO: Just check open-cv's file once, they had a condition I ignored
  elseif(((UNIX) OR (VISP_FORCE_FAT_JAVA_LIB_LD_RULES)) AND (NOT VISP_SKIP_FAT_JAVA_LIB_LD_RULES))
    vp_target_link_libraries(${the_module} LINK_PRIVATE -Wl,-whole-archive ${__deps} -Wl,-no-whole-archive)
  else()
    vp_target_link_libraries(${the_module} LINK_PRIVATE ${__deps})
  endif()
  vp_target_link_libraries(${the_module} LINK_PRIVATE ${__extradeps} ${VISP_LINKER_LIBS})
else()
  vp_target_link_libraries(${the_module} LINK_PRIVATE ${__deps} ${VISP_LINKER_LIBS})
endif()

# Additional target properties
set_target_properties(${the_module} PROPERTIES
    OUTPUT_NAME "${the_module}${VISP_JAVA_LIB_NAME_SUFFIX}"
    ARCHIVE_OUTPUT_DIRECTORY ${LIBRARY_OUTPUT_PATH}
    LIBRARY_OUTPUT_DIRECTORY ${LIBRARY_OUTPUT_PATH}
    RUNTIME_OUTPUT_DIRECTORY ${BINARY_OUTPUT_PATH}
    DEFINE_SYMBOL visp_EXPORTS
    )

if(ANDROID)
  vp_target_link_libraries(${the_module} LINK_PUBLIC jnigraphics) # for Mat <=> Bitmap converters
  vp_target_link_libraries(${the_module} LINK_PUBLIC log dl z)

  # force strip library after the build command
  # because samples and tests will make a copy of the library before install
  if(NOT CMAKE_BUILD_TYPE MATCHES "Debug")
    add_custom_command(TARGET ${the_module} POST_BUILD COMMAND ${CMAKE_STRIP} --strip-unneeded "$<TARGET_FILE:${the_module}>")
  endif()
endif()

if(ENABLE_SOLUTION_FOLDERS)
  set_target_properties(${the_module} PROPERTIES FOLDER "bindings")
endif()

set(__install_export "")
if(BUILD_FAT_JAVA_LIB)
  set(__install_export EXPORT VISPModules)
endif()

vp_install_target(${the_module} OPTIONAL ${__install_export}
    RUNTIME DESTINATION ${VISP_JNI_BIN_INSTALL_PATH} COMPONENT java
    LIBRARY DESTINATION ${VISP_JNI_INSTALL_PATH} COMPONENT java
    ARCHIVE DESTINATION ${VISP_JNI_INSTALL_PATH} COMPONENT java
)
