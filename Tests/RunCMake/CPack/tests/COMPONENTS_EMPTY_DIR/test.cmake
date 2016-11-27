if(GENERATOR_TYPE STREQUAL "DEB")
  set(CPACK_PACKAGE_CONTACT "someone")
  set(CPACK_DEB_COMPONENT_INSTALL "ON")
  set(CPACK_DEBIAN_FILE_NAME "DEB-DEFAULT")
elseif(GENERATOR_TYPE STREQUAL "RPM")
  set(CPACK_RPM_COMPONENT_INSTALL "ON")
  set(CPACK_RPM_FILE_NAME "RPM-DEFAULT")
elseif(GENERATOR_TYPE STREQUAL "TGZ")
  set(CPACK_ARCHIVE_COMPONENT_INSTALL "ON")
endif()

set(CPACK_COMPONENTS_ALL test)
install(DIRECTORY DESTINATION empty
        COMPONENT test)
