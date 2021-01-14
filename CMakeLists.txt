# Copyright 2018, akashche at redhat.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required ( VERSION 2.8.12 )

# project
project ( jmc NONE )

# options
set ( ${PROJECT_NAME}_INSTALLER_FEATURE_LEVEL "2" CACHE STRING "MSI Feature 'Level' for 'icedtea_web' component" )
set ( ${PROJECT_NAME}_INSTALLER_FEATURE_TITLE "Mission Control" CACHE STRING "MSI Feature title for 'jmc' component" )
set ( ${PROJECT_NAME}_INSTALLER_FEATURE_DESCRIPTION "JDK Mission Control." CACHE STRING "MSI Feature description for 'jmc' component" )

option ( ${PROJECT_NAME}_ENABLE_STANDALONE "Build JMC without building JDK" OFF )

configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/env.bat
        ${CMAKE_CURRENT_BINARY_DIR}/env.bat )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/jmc.product
        ${OJDKBUILD_DIR}/upstream/jmc/application/org.openjdk.jmc.rcp.product/jmc.product )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/platform-definition-2019-09.target
        ${OJDKBUILD_DIR}/upstream/jmc/releng/platform-definitions/platform-definition-2019-09/platform-definition-2019-09.target )
# cleaner
ojdkbuild_add_subdirectory ( ${OJDKBUILD_DIR}/contrib/local-cleaner local_cleaner )

add_custom_target ( ${PROJECT_NAME}_buildjdk )
if ( NOT ${PROJECT_NAME}_ENABLE_STANDALONE )
    add_dependencies ( ${PROJECT_NAME}_buildjdk image )
endif ( )

add_custom_command ( OUTPUT ${OJDKBUILD_DIR}/upstream/jmc/target/products/org.openjdk.jmc/win32/win32/x86_64/jmc.exe
        # core
        COMMAND cd "${OJDKBUILD_DIR}/upstream/jmc/core" && cmd /c
                ${CMAKE_CURRENT_BINARY_DIR}/env.bat
                mvn clean install
                --offline
                -Dmaven.repo.local=${OJDKBUILD_DIR}/deps/jmc-mvnrepo
        # app
        COMMAND cd ${OJDKBUILD_DIR}/upstream/jmc && cmd /c
                ${CMAKE_CURRENT_BINARY_DIR}/env.bat
                mvn clean package
                --offline
                -Dmaven.repo.local=${OJDKBUILD_DIR}/deps/jmc-mvnrepo
        DEPENDS ${PROJECT_NAME}_buildjdk
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Building JDK Mission Control ..." )
add_custom_target ( ${PROJECT_NAME}_build DEPENDS ${OJDKBUILD_DIR}/upstream/jmc/target/products/org.openjdk.jmc/win32/win32/x86_64/jmc.exe )

add_custom_target ( ${PROJECT_NAME}
        COMMAND if exist dist rd /s /q dist
        COMMAND (robocopy ${OJDKBUILD_DIR}/upstream/jmc/target/products/org.openjdk.jmc/win32/win32/x86_64 dist /e /nfl ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        COMMAND cd dist && mkdir install
        COMMAND (robocopy ${CMAKE_RUNTIME_OUTPUT_DIRECTORY} dist/install local_cleaner.exe ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        COMMAND if exist ${${PROJECT_NAME}_JAVA_HOME}/bin/msvcp140.dll
                (robocopy ${${PROJECT_NAME}_JAVA_HOME}/bin dist msvcp140.dll ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        DEPENDS ${PROJECT_NAME}_build local_cleaner
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Building JDK Mission Control distribution at [${CMAKE_CURRENT_BINARY_DIR}/dist] ..." )

# installer
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/installer.json
        ${CMAKE_CURRENT_BINARY_DIR}/installer.json )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/installer.xsl
        ${CMAKE_CURRENT_BINARY_DIR}/installer.xsl )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/installer_env.xsl
        ${CMAKE_CURRENT_BINARY_DIR}/installer_env.xsl )
