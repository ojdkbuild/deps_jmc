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
        <Directory Id="INSTALLDIR" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <xsl:apply-templates select="@* | *"/>
            <xsl:copy-of select="document('jmc_directory.xml')/*"/>
        </Directory>
    </xsl:template>

    <xsl:template match="w:Feature[@Id='jdk']">
        <Feature Id="jdk" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <xsl:apply-templates select="@* | *"/>
        </Feature>

        <xsl:copy-of select="document('jmc_feature.xml')/*"/>

        <!-- impersonated -->
        <CustomAction Id="jmc_cleanup_impersonated_misssioncontrol_prop" Property="WixQuietExec64CmdLine" Value="&quot;[JMCDIR]install\local_cleaner.exe&quot; -d &quot;${openjdk_VENDOR_DIRNAME}/${openjdk_IMAGE}/missioncontrol&quot;" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_impersonated_misssioncontrol" BinaryKey="WixCA" DllEntry="WixQuietExec64" Return="ignore" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_impersonated_image_prop" Property="WixQuietExec64CmdLine" Value="&quot;[JMCDIR]install\local_cleaner.exe&quot; -e -d &quot;${openjdk_VENDOR_DIRNAME}/${openjdk_IMAGE}&quot;" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_impersonated_image" BinaryKey="WixCA" DllEntry="WixQuietExec64" Return="ignore" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_impersonated_vendor_prop" Property="WixQuietExec64CmdLine" Value="&quot;[JMCDIR]install\local_cleaner.exe&quot; -e -d &quot;${openjdk_VENDOR_DIRNAME}&quot;" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_impersonated_vendor" BinaryKey="WixCA" DllEntry="WixQuietExec64" Return="ignore" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>

        <InstallExecuteSequence xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <!-- impersonated -->
            <Custom Action="jmc_cleanup_impersonated_misssioncontrol_prop" Before="jmc_cleanup_impersonated_misssioncontrol"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_impersonated_misssioncontrol" Before="jmc_cleanup_impersonated_image_prop"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_impersonated_image_prop" Before="jmc_cleanup_impersonated_image"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_impersonated_image" Before="jmc_cleanup_impersonated_vendor_prop"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_impersonated_vendor_prop" Before="jmc_cleanup_impersonated_vendor"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_impersonated_vendor" Before="RemoveFiles"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
        </InstallExecuteSequence>

    </xsl:template>

</xsl:stylesheet>
