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

configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/env.bat
        ${CMAKE_CURRENT_BINARY_DIR}/env.bat )
configure_file ( ${CMAKE_CURRENT_LIST_DIR}/resources/platform-definition-photon.target
        ${OJDKBUILD_DIR}/upstream/jmc/releng/platform-definitions/platform-definition-photon/platform-definition-photon.target )

add_custom_target ( ${PROJECT_NAME}_mvnrepo
        COMMAND (robocopy ${OJDKBUILD_DIR}/deps/jmc-mvnrepo mvnrepo /e ${openjdk_RBCFLAGS} ) ${openjdk_RBCPOSTFIX}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} )

add_custom_target ( ${PROJECT_NAME}_core
        COMMAND cmd /c
                ${CMAKE_CURRENT_BINARY_DIR}/env.bat
                mvn clean install
                --offline
                -Dmaven.repo.local=${CMAKE_CURRENT_BINARY_DIR}/mvnrepo
        DEPENDS ${PROJECT_NAME}_mvnrepo
        WORKING_DIRECTORY ${OJDKBUILD_DIR}/upstream/jmc/core )

add_custom_target ( ${PROJECT_NAME}
        COMMAND cmd /c
                ${CMAKE_CURRENT_BINARY_DIR}/env.bat
                mvn clean install
                --offline
                -Dmaven.repo.local=${CMAKE_CURRENT_BINARY_DIR}/mvnrepo
        DEPENDS ${PROJECT_NAME}_core
        WORKING_DIRECTORY ${OJDKBUILD_DIR}/upstream/jmc )

