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

        <!-- immediate -->
        <CustomAction Id="jmc_cleanup_immediate" Property="jmc_cleanup_deferred" Value="&quot;[System64Folder]cmd.exe&quot; /c rd /s /q &quot;[JMCDIR]&quot;" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_local_immediate" Property="jmc_cleanup_local_deferred" Value="&quot;[System64Folder]cmd.exe&quot; /c rd /s /q &quot;[%LOCALAPPDATA]/${openjdk_VENDOR_DIRNAME}&quot;" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>

        <!-- deferred -->
        <CustomAction Id="jmc_cleanup_deferred" BinaryKey="WixCA" DllEntry="WixQuietExec64" Return="ignore" Execute="deferred" Impersonate="no" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>
        <CustomAction Id="jmc_cleanup_local_deferred" BinaryKey="WixCA" DllEntry="WixQuietExec64" Return="ignore" Execute="deferred" Impersonate="no" xmlns="http://schemas.microsoft.com/wix/2006/wi"/>

        <InstallExecuteSequence xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <Custom Action="jmc_cleanup_immediate" Before="jmc_cleanup_local_immediate"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_local_immediate" Before="InstallInitialize"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_deferred" Before="jmc_cleanup_local_deferred"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
            <Custom Action="jmc_cleanup_local_deferred" Before="RemoveFiles"><![CDATA[!jmc=3 AND REMOVE]]></Custom>
        </InstallExecuteSequence>

    </xsl:template>

</xsl:stylesheet>
