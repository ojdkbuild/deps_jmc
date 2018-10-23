<?xml version="1.0" encoding="UTF-8"?>
<!--
 Copyright 2018 akashche at redhat.com

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/wix/2006/wi" exclude-result-prefixes="w">

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="w:Directory[@Id='INSTALLDIR']">
        <Directory Id="JMCDIR" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <xsl:apply-templates select="@* | *"/>
        </Directory>

        <!-- jmc_env -->
        <Component Id="jmc_env_path_comp" Guid="038c5bba-1dfb-4bb1-b4ed-8d6ef43f1312" KeyPath="yes" Win64="yes" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <Environment Id="jmc_env_path_key" Name="PATH" Value="[JMCDIR]" Action="set" Part="last" System="yes"/>
        </Component>

    </xsl:template>

    <xsl:template match="w:Feature[@Id='jmc']">
        <Feature Id="jmc" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <xsl:apply-templates select="@* | *"/>
            <Feature Id="jmc_env" Absent="allow" AllowAdvertise="no" Level="2"
                     Title="PATH Variable"
                     Description="Appends '&lt;jdk&gt;/missioncontrol' to the 'PATH' system environment variable."
                     xmlns="http://schemas.microsoft.com/wix/2006/wi">
                <ComponentRef Id="jmc_env_path_comp"/>
            </Feature>
        </Feature>
    </xsl:template>

</xsl:stylesheet>



