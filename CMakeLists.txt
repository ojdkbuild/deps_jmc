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
set ( ${PROJECT_NAME}_JAVA_HOME ${OJDKBUILD_DIR}/tools/jdk8-jmc CACHE STRING "Path to jdk to use for building JMC" )
set ( ${PROJECT_NAME}_INSTALLER_FEATURE_LEVEL "2" CACHE STRING "MSI Feature 'Level' for 'icedtea_web' component" )
set ( ${PROJECT_NAME}_INSTALLER_FEATURE_TITLE "Mission Control" CACHE STRING "MSI Feature title for 'jmc' component" )

configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/env.bat
        ${CMAKE_CURRENT_BINARY_DIR}/env.bat )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/platform-definition-photon.target
        ${OJDKBUILD_DIR}/upstream/jmc/releng/platform-definitions/platform-definition-photon/platform-definition-photon.target )

add_custom_command ( OUTPUT ${OJDKBUILD_DIR}/upstream/jmc/target/products/org.openjdk.jmc/win32/win32/x86_64/jmc.exe
        # mvnrepo
        COMMAND (robocopy ${OJDKBUILD_DIR}/deps/jmc-mvnrepo mvnrepo /e /nfl ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        # core
        COMMAND cd "${OJDKBUILD_DIR}/upstream/jmc/core" && cmd /c
                ${CMAKE_CURRENT_BINARY_DIR}/env.bat
                mvn clean install
                --offline
                -Dmaven.repo.local=${CMAKE_CURRENT_BINARY_DIR}/mvnrepo
        # app
        COMMAND cd ${OJDKBUILD_DIR}/upstream/jmc && cmd /c
                ${CMAKE_CURRENT_BINARY_DIR}/env.bat
                mvn clean install
                --offline
                -Dmaven.repo.local=${CMAKE_CURRENT_BINARY_DIR}/mvnrepo
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Building JDK Mission Control ..." )
add_custom_target ( ${PROJECT_NAME}_build DEPENDS ${OJDKBUILD_DIR}/upstream/jmc/target/products/org.openjdk.jmc/win32/win32/x86_64/jmc.exe )

add_custom_target ( ${PROJECT_NAME}
        COMMAND if exist dist rd /s /q dist
        COMMAND (robocopy ${OJDKBUILD_DIR}/upstream/jmc/target/products/org.openjdk.jmc/win32/win32/x86_64 dist /e /nfl ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        COMMAND (robocopy ${CMAKE_CURRENT_LIST_DIR}/resources dist jmc.ini ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        DEPENDS ${PROJECT_NAME}_build
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Building JDK Mission Control distribution at [${CMAKE_CURRENT_BINARY_DIR}/dist] ..." )

# installer
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/installer.xsl
        ${CMAKE_CURRENT_BINARY_DIR}/installer.xsl )