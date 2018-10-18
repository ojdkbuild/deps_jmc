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
            <Directory Id="JMCDIR" Name="jmc">

                <Component Id="_e4e990c6_d3ff_4473_acdd_0f1d6931957e" Guid="5ce0f624-62be-42d4-b34c-61f109d1aa65" Win64="yes">
                    <File Id="_d57e8a10_376c_47d9_b3c1_122a807c5c0a" Name="artifacts.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/artifacts.xml"/>
                </Component>
                <Directory Id="_e8446cc5_d617_49fa_8ec5_5bab66727f60" Name="configuration">
                    <Component Id="_3c2f02ae_db76_4f7a_b2ba_eae1353f5054" Guid="92e4b009-01e3-4cb8-9a7f-1fba9146bb28" Win64="yes">
                        <File Id="_82f326f3_f829_4b8f_8f4d_7f147e6fdade" Name="config.ini" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/configuration/config.ini"/>
                    </Component>
                    <Directory Id="_05801489_7094_4024_b4a7_03dc3a71cb0d" Name="org.eclipse.equinox.simpleconfigurator">
                        <Component Id="_e2854efd_e023_4322_9fe6_36386f8a090f" Guid="fc30ee1c-48fe-455b-b176-6ce41c7f3360" Win64="yes">
                            <File Id="_57eacf14_1ac0_495f_9c61_f5e5e379a508" Name="bundles.info" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info"/>
                        </Component>
                    </Directory>
                    <Directory Id="_1ee4de04_11a3_4c33_bddb_5831a4750c8a" Name="org.eclipse.update">
                        <Component Id="_5f277ebb_e581_4b71_addd_1e9f290a89e4" Guid="4caf2e79-af4c-4583-b1e4-97a92e7a76d8" Win64="yes">
                            <File Id="_cd8611b2_037a_4a20_bd86_c45b49b6239e" Name="platform.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/configuration/org.eclipse.update/platform.xml"/>
                        </Component>
                    </Directory>
                </Directory>
                <Directory Id="_b307d6bb_e6f0_4a80_a4e4_8a2b53e7bfe5" Name="dropins">
                    <Component Id="_a4e8fe13_6702_4a2f_8f5b_6582d6c6265a" Guid="c51b4995-c2f4-44e1-884d-8880650ff54e" Win64="yes">
                        <File Id="_a1ae82ed_df9b_4033_a8cd_284120d4208c" Name="README.TXT" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/dropins/README.TXT"/>
                    </Component>
                </Directory>
                <Component Id="_f57fed72_89f1_4e8b_8732_91e8b52fef69" Guid="e3d140bb-1371-4fb9-a2c4-5cd6ce3278b2" Win64="yes">
                    <File Id="_af1b469c_4062_4294_99e8_cc2f993f57a2" Name="eclipsec.exe" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/eclipsec.exe"/>
                </Component>
                <Directory Id="_d9afc7a4_f463_4613_b90e_c2bf8071b4df" Name="features">
                    <Directory Id="_640c1642_03b8_40fa_93f5_ba3e0899fd10" Name="org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002">
                        <Component Id="_41d48b02_569b_4b5b_a5f2_27716e7e6e31" Guid="cecb84d1-bc5a-486c-ace3-de030de3c8ee" Win64="yes">
                            <File Id="_610bc5a6_ff0c_48ae_afd6_bfc51bf74eca" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002/about.html"/>
                        </Component>
                        <Component Id="_17dff905_8e15_4503_9554_b72b6e9e9609" Guid="06129559-b709-468f-af80-c707453473bd" Win64="yes">
                            <File Id="_d8a7d1c4_d684_4409_9d47_fb7d49296543" Name="eclipse_update_120.jpg" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002/eclipse_update_120.jpg"/>
                        </Component>
                        <Component Id="_1a99b6ce_72ca_417e_878e_0fc0f8d69034" Guid="6400ebd1-0aa7-4453-9701-a91c921371d0" Win64="yes">
                            <File Id="_38ed27f5_b970_4afd_83df_b0a08e869270" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002/epl-v10.html"/>
                        </Component>
                        <Component Id="_49aaba8e_d219_4e66_9c9a_b1b295961756" Guid="c086704b-928f-47b8-8e82-c2e904107713" Win64="yes">
                            <File Id="_9be72fcb_3d00_45f1_954e_6600c0eb4a5a" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002/feature.properties"/>
                        </Component>
                        <Component Id="_6e17cc25_7e73_4fdc_b9d1_b425f5bf6b62" Guid="91acb5cc-8020-4181-8643-bf7f0880421a" Win64="yes">
                            <File Id="_9fc4bfc6_d7e3_44e8_9c68_3b2ef6e4b998" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002/feature.xml"/>
                        </Component>
                        <Component Id="_cf7068a0_c3d2_4938_9c41_62817736d867" Guid="28c1a220-ad68-4cd0-bf0b-be338ab91442" Win64="yes">
                            <File Id="_ead40b8e_e0e7_4529_9f48_43546279fe84" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_ja_4.7.0.v20171231020002/license.html"/>
                        </Component>
                    </Directory>
                    <Directory Id="_841ed85d_cc15_47d2_90e7_8159d85d8f0d" Name="org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002">
                        <Component Id="_adc7034e_3c0c_4749_bc82_7defc6e9a9cc" Guid="156def70-8d2b-43e3-b72d-85b1bf618f1f" Win64="yes">
                            <File Id="_095b15c0_37f5_4184_91ad_0b6fc8ba7619" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002/about.html"/>
                        </Component>
                        <Component Id="_73d90cc9_52f8_4e28_ba1a_838d3505fd95" Guid="29d43317-5115-4b61-bbc8-f7657c84fec4" Win64="yes">
                            <File Id="_31e4f14e_1ddd_41aa_a144_88b745a4e1e7" Name="eclipse_update_120.jpg" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002/eclipse_update_120.jpg"/>
                        </Component>
                        <Component Id="_454ad656_4c3c_4f8c_ad27_be84c29fcfc0" Guid="755a75b6-fe4c-41d3-9015-d9ecb78e41ec" Win64="yes">
                            <File Id="_fb6847b7_3739_4b49_a773_1543f3ad209b" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002/epl-v10.html"/>
                        </Component>
                        <Component Id="_26ecc6cc_58d0_4f1e_858f_388513cb44a1" Guid="053ef250-0899-4853-9d9c-b716e0a8c5e8" Win64="yes">
                            <File Id="_b933a46d_fe0c_4fb4_a6b9_929d7733f21b" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002/feature.properties"/>
                        </Component>
                        <Component Id="_2343bb13_1106_41db_a4fb_21da8a39c924" Guid="4f48c80a-8db6-4750-bc86-ecec02f62c98" Win64="yes">
                            <File Id="_5f12de1c_7352_42a0_833f_49fae0f2d1fe" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002/feature.xml"/>
                        </Component>
                        <Component Id="_61ea2d1c_36ff_42ec_a179_399dc4e36170" Guid="9e7c44fa-4c26-4987-b9f9-440e3f80a38d" Win64="yes">
                            <File Id="_6a22c299_a6b1_4565_9fe3_4ab31cc65023" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.babel.nls_eclipse_zh_4.7.0.v20171231020002/license.html"/>
                        </Component>
                    </Directory>
                    <Directory Id="_06855a86_f809_4f0e_b695_43a5a5adb068" Name="org.eclipse.e4.rcp_1.6.100.v20180611-0422">
                        <Component Id="_12f2f828_1bc2_468b_9c7c_8dbabbf0786d" Guid="2e5246b6-550c-4400-ae15-b35fcea0ed7e" Win64="yes">
                            <File Id="_d74a0dd6_0ab9_49ed_a3bf_43ff5d93b26a" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/epl-v10.html"/>
                        </Component>
                        <Component Id="_48e37541_41f2_4465_96ab_57b78a3089cd" Guid="42d83fed-77d3-4068-8ff7-58374d320cbc" Win64="yes">
                            <File Id="_4e377957_5754_433c_8eb6_5bb02d0cd909" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/feature.properties"/>
                        </Component>
                        <Component Id="_1127942a_df56_473c_928a_690a445eae68" Guid="2d0e77a8-b6d8-49e1-a569-2d40561ef5fe" Win64="yes">
                            <File Id="_e25cfe9b_75f3_4588_a580_74904c917863" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/feature.xml"/>
                        </Component>
                        <Component Id="_4496d009_96aa_4f0d_b1ab_49058df13e71" Guid="1e01652f-e4e2-4694-9350-b7243c7c3719" Win64="yes">
                            <File Id="_63cea7ce_b84e_4a43_8e60_bafebb85c8fe" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/license.html"/>
                        </Component>
                        <Directory Id="_2b97ceaf_6a6a_451e_9e8f_f924a271acb8" Name="META-INF">
                            <Component Id="_397fff42_0531_4145_a5fc_51d019bbe4b0" Guid="295bc10b-7ae1-4809-bd8b-dbbb641b209c" Win64="yes">
                                <File Id="_81243ac4_57ad_477a_8c02_c1ce20609c17" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_4478750a_99b6_48eb_9160_047c9cc32246" Guid="4ea58bec-f2c9-465e-b28e-5f6bd73af6fd" Win64="yes">
                                <File Id="_8247599c_8c29_49f1_9254_eee314e16000" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_f2e17d19_ed1f_4868_aabb_ff38fc3c65a6" Guid="ebfaecab-262f-4161-8a22-7590f8822266" Win64="yes">
                                <File Id="_0385eb6b_de06_4d9f_abdb_9470f9a35559" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.e4.rcp_1.6.100.v20180611-0422/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_f4c7f5e9_1d01_4f1f_b062_b2ec086974e4" Name="org.eclipse.ecf.core.feature_1.5.0.v20180426-1936">
                        <Component Id="_c523ef73_031f_49bd_ac0d_71c998b5b68a" Guid="8ce44efc-e63f-4d4e-9776-f253a6aae7c0" Win64="yes">
                            <File Id="_19ca6632_c852_4549_8a4e_ee30ecbf0661" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/about.html"/>
                        </Component>
                        <Component Id="_9e40753f_17c6_4ad5_8bc7_82c003dd30b2" Guid="a071d6b3-a43a-4c1a-853d-99817f9d69cf" Win64="yes">
                            <File Id="_af315307_5306_4758_8b84_b6e47e02dd33" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/epl-v10.html"/>
                        </Component>
                        <Component Id="_e2db3611_9f0a_4038_95dc_47e96d9f2fef" Guid="94aa354d-ab62-4305-9cbc-b3206d912045" Win64="yes">
                            <File Id="_8da0279a_fd5f_4d1b_aa88_7d2a94303146" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/feature.properties"/>
                        </Component>
                        <Component Id="_3e979338_fee4_4ac4_b8b0_d806a2dc3613" Guid="a89c69af-0445-4da1-b9a2-8349e0fbd13b" Win64="yes">
                            <File Id="_21be25a3_a8f6_43ef_b2d3_6364b859ae54" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/feature.xml"/>
                        </Component>
                        <Component Id="_c6f4800e_80f4_43c1_aee6_f372de8edf0b" Guid="422aab97-d5dd-48cf-8a4e-01c54d6b3c7e" Win64="yes">
                            <File Id="_4377685f_7ef2_4f18_9a60_805f38015054" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/license.html"/>
                        </Component>
                        <Directory Id="_e5538ed8_d446_43de_85d4_0d0c4010ad97" Name="META-INF">
                            <Component Id="_b7c75c56_c206_4dc4_9466_fe97da35492c" Guid="b2b7ccf3-dc24-4063-8faf-5dc5ee004fa7" Win64="yes">
                                <File Id="_65d9ddbe_b6ac_4f09_ba4e_e5e1b41d3b43" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_e6cea186_1c81_4707_acbb_1b061b1de0ad" Guid="e0969322-939c-41e0-a5da-405fb6e55a23" Win64="yes">
                                <File Id="_d3990f34_d8c4_474e_86f6_fa8fef81210c" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_6839078c_476a_4030_b576_5a2645a95336" Guid="0e48b5e3-f0a8-4391-9c3d-f70e4eda00ae" Win64="yes">
                                <File Id="_768c40c7_82d4_4906_a7d0_f5ae9fa62a81" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.feature_1.5.0.v20180426-1936/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_5d0fab6d_0373_4615_bff2_f61e1e32375f" Name="org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201">
                        <Component Id="_5df4c497_e67f_4a2f_b695_90fe2f968819" Guid="32bda995-5fcb-4b19-9123-deeca2056a6a" Win64="yes">
                            <File Id="_2d0c0847_ceb8_4089_8c06_27b4909c0a1c" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/about.html"/>
                        </Component>
                        <Component Id="_552bd8ff_36b6_4acf_a608_4321b3d65c45" Guid="163b3906-4ca6-4739-baf4-3d0dca1cfb46" Win64="yes">
                            <File Id="_66423027_1bb8_4536_a746_56097fe118b4" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/epl-v10.html"/>
                        </Component>
                        <Component Id="_1f382d6a_12ba_41b3_a396_13de7f630bd0" Guid="583bfd4d-98a1-4e8b-a5c1-01d9419a2d02" Win64="yes">
                            <File Id="_47aaee8e_bdc7_4ed1_8fdf_a4aa7748fb66" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/feature.properties"/>
                        </Component>
                        <Component Id="_86167361_ab2e_4a60_9b61_aa070b2e4732" Guid="b9f0a65f-bb58-46f5-91d9-890bde80210c" Win64="yes">
                            <File Id="_b74f28ba_bf47_46a9_aa41_f1071d601ef8" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/feature.xml"/>
                        </Component>
                        <Component Id="_2135adf6_512e_413f_95b2_d1b2efc079f8" Guid="1db573e2-299e-4cc4-a6aa-dc81d8cc58ca" Win64="yes">
                            <File Id="_54ce5f04_402c_4891_bad4_b0cfd0ba9a93" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/license.html"/>
                        </Component>
                        <Directory Id="_1ec6298a_4a18_4394_b6cd_b775f2f56a05" Name="META-INF">
                            <Component Id="_68fa1721_1e45_49e0_9d19_02b96e087d56" Guid="77643b85-8744-4f43-9617-51bc56b1ebdf" Win64="yes">
                                <File Id="_7d5514c7_3ba3_483f_9b69_ba1192934cf5" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_3a0f3ce3_5987_424b_89ae_1b7926f158e9" Guid="a44ecfab-8323-4d87-b8c6-6f7ac7444bc4" Win64="yes">
                                <File Id="_b403911b_efba_4f05_8b3a_1b7e491499c1" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_107e5792_1fe9_479f_91c3_3fbc4c3fb8f6" Guid="15613385-d58a-49c3-9058-12f26228019b" Win64="yes">
                                <File Id="_00c1c46e_163b_4a70_bd92_0b851b6cdb13" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.core.ssl.feature_1.1.100.v20180301-0201/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_7969e3f4_72a0_4a26_b722_8c35d1acf3c5" Name="org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429">
                        <Component Id="_57c9bb8f_1db9_454e_9043_7a3119c724ba" Guid="25895425-072e-47b1-8023-d6178d0d75dc" Win64="yes">
                            <File Id="_8c2d36ce_c711_4f61_b760_3af77bc2c22b" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/about.html"/>
                        </Component>
                        <Component Id="_4f051cae_2e0d_4ca3_8061_b34283e650dd" Guid="5d910d8c-fa03-4e42-ab2f-dc061739ce72" Win64="yes">
                            <File Id="_42f81553_3cbe_4e35_ac97_e4f55deb9ada" Name="asl-v20.txt" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/asl-v20.txt"/>
                        </Component>
                        <Component Id="_5d1b5e40_fd4d_471d_907f_1605b84de7a8" Guid="b112d9ed-2d33-41e7-bcfc-62f7ff6ec9d7" Win64="yes">
                            <File Id="_32d94731_5df0_4172_834b_6333c46cc034" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/epl-v10.html"/>
                        </Component>
                        <Component Id="_71c39a1f_7218_4b41_8344_70a238995e2a" Guid="a33cb411-0f9c-4daf-93a3-f5e3e4324482" Win64="yes">
                            <File Id="_a6078791_61dd_4159_b453_e432db6efb14" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/feature.properties"/>
                        </Component>
                        <Component Id="_fb59e9a7_963e_4655_802a_8df87db38592" Guid="26bc5389-bb19-49fd-a82c-04433f2e908c" Win64="yes">
                            <File Id="_9225dade_11f7_41d8_a780_5debd52586c2" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/feature.xml"/>
                        </Component>
                        <Component Id="_07a15cda_ff7f_423a_b506_e2d3d726df03" Guid="eb05e5f0-af16-4203-9f4d-58767bb1614f" Win64="yes">
                            <File Id="_14d0dfbb_92e6_407f_bdeb_0ecb51bbcfc4" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/license.html"/>
                        </Component>
                        <Directory Id="_2b03a2c3_4bca_4976_af3c_195e2b6aa896" Name="META-INF">
                            <Component Id="_a85ed032_af5e_48b4_9c2f_ccb9101c5c91" Guid="15ef3cc5-591f-49bf-bed1-c7ccfc09f387" Win64="yes">
                                <File Id="_3b663526_a2b4_4465_be7d_922dddc8b692" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_87882d03_f3fc_4097_9e3a_68e4719f33ef" Guid="31377b10-72ec-45e8-94ab-adcc15817963" Win64="yes">
                                <File Id="_3791d47f_e788_4161_8829_7fc4e6129661" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_ea5dd034_cd51_4431_a385_005e625284a4" Guid="25523af4-6f7a-4c8d-8412-3aacafb4f30c" Win64="yes">
                                <File Id="_1526bd91_1b0a_4d5d_a8af_7bd186d4b158" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.feature_3.14.0.v20180306-0429/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_4d1e2a07_d4ba_40b4_952d_d1fef0d30952" Name="org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132">
                        <Component Id="_b6a8ae37_8332_4a34_bdb5_0ae92bdb9217" Guid="a32b850e-e4f2-4acb-8c73-72d991a856dd" Win64="yes">
                            <File Id="_ab3a636e_264e_4106_b0db_8ae51868c32f" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/about.html"/>
                        </Component>
                        <Component Id="_f5121491_e322_4af3_98da_0fceeb335b0c" Guid="4d0c2f9f-fd90-4a04-8e22-335eab8db5c9" Win64="yes">
                            <File Id="_ccaa72e2_8021_47ea_8fc9_0a504d7fc08e" Name="asl-v20.txt" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/asl-v20.txt"/>
                        </Component>
                        <Component Id="_30719306_f436_48c8_b14e_6a2ec9d55f71" Guid="3f27e2f6-e5a7-4af1-9872-d9f32af15574" Win64="yes">
                            <File Id="_5e644f7b_7715_46da_ad49_08c900a8d672" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/epl-v10.html"/>
                        </Component>
                        <Component Id="_d032364e_d11c_42f5_97a2_11f0d05c910e" Guid="2cd2564f-553f-4ce8-80a0-adadcb334454" Win64="yes">
                            <File Id="_44ec34bd_ffb1_47df_8819_ba6d7adccf56" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/feature.properties"/>
                        </Component>
                        <Component Id="_a1850748_b964_4b58_ac17_5d6cfccaa517" Guid="231431da-f23e-45bc-9728-7bb8002a4cb2" Win64="yes">
                            <File Id="_5c7ef2fb_2d4a_4570_8691_24bc408c09bf" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/feature.xml"/>
                        </Component>
                        <Component Id="_dcfa00dc_c8b0_456c_a1d3_2ea39f34921e" Guid="f02bbbb6-4449-4e97-a2b8-4aea8e62db9a" Win64="yes">
                            <File Id="_5c554fde_47b8_4de7_a638_1b8064f4540e" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/license.html"/>
                        </Component>
                        <Directory Id="_bbeff217_d69d_4567_89d4_9891fb4d03be" Name="META-INF">
                            <Component Id="_a4d71cc1_672c_4159_ba3d_a335942e1e1b" Guid="c1a97bae-1e68-4539-aa16-7833f7378db3" Win64="yes">
                                <File Id="_c72598d2_b743_4d41_bbfd_2c9d5a362402" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_c18952dc_c7e0_4b3a_b82a_ba29ade9f9f0" Guid="845059db-208f-4840-9a8e-48fc9b3b2aba" Win64="yes">
                                <File Id="_3d07112f_4364_420c_9231_54b1b800a9a9" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_d85be698_a2bd_4282_9c0a_87e36ee1ed6e" Guid="00654a3a-4de5-48a6-98c3-8d028265d193" Win64="yes">
                                <File Id="_209bffc0_e53d_41ea_9fe2_139c096a0e89" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.feature_3.14.0.v20180301-0132/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_c657553d_42b6_4347_8dcf_ae9f590fd14a" Name="org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132">
                        <Component Id="_d023c4cd_a6d5_414e_8e20_8e14c67fc19e" Guid="10814548-3c41-40a8-aa31-c51e1aa7f78d" Win64="yes">
                            <File Id="_538e3999_7145_4566_94e8_b2897c41fa93" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/about.html"/>
                        </Component>
                        <Component Id="_1582187c_ab74_4aec_858d_880812b0018b" Guid="07850552-3b28-493d-9d69-11fa8a112058" Win64="yes">
                            <File Id="_8b413e23_4f0f_4026_b8c0_dc733eec20c7" Name="asl-v20.txt" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/asl-v20.txt"/>
                        </Component>
                        <Component Id="_e2a5d0d5_ff69_46e6_a274_eaccfd7466d7" Guid="b8fe0e5a-ca78-42ce-b8f4-9132542b2be4" Win64="yes">
                            <File Id="_8c6d8106_03e7_4997_8f63_f05e8185afe6" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/epl-v10.html"/>
                        </Component>
                        <Component Id="_3df84586_bccf_4682_923e_549adac3c08b" Guid="5c60b190-d4d4-4948-9aa9-d3e48bc06ff3" Win64="yes">
                            <File Id="_5ed02284_412d_45da_8d32_4fc4d0186fe6" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/feature.properties"/>
                        </Component>
                        <Component Id="_fc55fb9e_9e00_4a0a_a0a2_8818d2a6ac3a" Guid="1465bf15-db3c-4bba-97b6-28eaeb44f25c" Win64="yes">
                            <File Id="_363dcd91_08c4_4f65_b31b_6bff8d10071f" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/feature.xml"/>
                        </Component>
                        <Component Id="_ec1a43f6_61af_4aee_bfc2_dadd3d62edd3" Guid="e36baa19-2136-4fa1-9802-57e81d99dd26" Win64="yes">
                            <File Id="_e496bd1f_c50a_469e_b21c_c29d84b0e499" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/license.html"/>
                        </Component>
                        <Directory Id="_89590270_7677_4a82_a1d7_983b299b810a" Name="META-INF">
                            <Component Id="_bd677e49_166e_44be_b491_981172b3dfb8" Guid="bdec02bf-b794-4b30-bc21-b81f07d7b117" Win64="yes">
                                <File Id="_c64152e0_03fe_4796_a188_9ab652b54b9d" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_168a4ab8_21d9_4c46_9479_11f726283d44" Guid="2d0e87d8-c69e-4204-9c2c-c9aeaf980991" Win64="yes">
                                <File Id="_37d3943e_97f2_496c_81a2_3f0f77d5620a" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_39d5381a_3e5e_42bb_a3da_8d4ee8378eb1" Guid="c9b98c9a-6bf9-451f-aca3-90c87f035b03" Win64="yes">
                                <File Id="_707626e4_6a9e_43b2_8046_892bb72b6131" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.httpclient4.ssl.feature_1.1.100.v20180301-0132/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_bba66c25_e374_4447_adc5_f8155fe4b31b" Name="org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132">
                        <Component Id="_97d9f2fd_b1ab_4687_9fca_f1f887be4d64" Guid="912a8523-8a9b-4552-9a8f-07d98c956ef3" Win64="yes">
                            <File Id="_49b825f7_8942_414c_a74b_d4dcbac4d56e" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/about.html"/>
                        </Component>
                        <Component Id="_80843c8a_67fe_4e21_8554_1412ecfc87ad" Guid="268bc117-2c18-4040-b579-d398f2ff4cd5" Win64="yes">
                            <File Id="_e6e2a472_3ed2_440d_92c0_e5fe84faa188" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/epl-v10.html"/>
                        </Component>
                        <Component Id="_b3d73251_0936_4160_978d_f4333307bfc4" Guid="47d9731b-3f7c-4592-a680-9b4e83d2814e" Win64="yes">
                            <File Id="_741d20bd_0396_459b_8659_7ba402cd304c" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/feature.properties"/>
                        </Component>
                        <Component Id="_1115373c_3ee3_42e3_bcfb_14fd3f37e5d5" Guid="b0e7644b-d58c-46c4-a3e5-fceb8786b891" Win64="yes">
                            <File Id="_bed24be5_66bb_4e87_b440_68eea77e4aab" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/feature.xml"/>
                        </Component>
                        <Component Id="_08afdedf_5712_4bed_b4bc_099c3bf22e96" Guid="38d12f0e-ab7f-477b-a9a6-9efa0cadc68a" Win64="yes">
                            <File Id="_5f6644b8_5aaa_46e5_b240_6304c2ad1b8b" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/license.html"/>
                        </Component>
                        <Directory Id="_52cd77ea_02f9_4861_9439_5d6707bb4bb5" Name="META-INF">
                            <Component Id="_c981fcdb_ef12_44cd_87bc_734211e90432" Guid="a4550fd3-62e8-462f-be52-6daa58bb0894" Win64="yes">
                                <File Id="_3c24c3be_a633_457c_8c4a_1060c08c741e" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_acee878b_b0c6_4d4d_9ca4_76d74c7de2ef" Guid="dadc5ff8-2f53-4c2f-8a08-b78d2f0a4f03" Win64="yes">
                                <File Id="_79702101_ca13_4381_a2f6_212ceb5b69f1" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_fdba76a6_c270_434b_94d7_67d9d5291f40" Guid="d59567b6-1e7e-4607-a0de-ac9d1c91265d" Win64="yes">
                                <File Id="_eadb9855_7235_49bb_b8f5_dfb124dddd1d" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.ecf.filetransfer.ssl.feature_1.1.100.v20180301-0132/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_877855f5_640e_40a6_9fb6_32ccb3ae771f" Name="org.eclipse.emf.common_2.14.0.v20180527-1134">
                        <Component Id="_b6ace106_45d1_4487_9558_01564591d4b2" Guid="6d00ff4b-e027-4515-b84e-db2d50b7d2e4" Win64="yes">
                            <File Id="_4119e43a_e9de_498d_bc2a_b80205d90afd" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/epl-v10.html"/>
                        </Component>
                        <Component Id="_45418939_c957_4c63_a1c9_ffed4043cf47" Guid="ecbf2f56-8e82-4013-8d54-f8c3302f810f" Win64="yes">
                            <File Id="_4d5a9304_8572_4358_bd51_5a21cc0dc13a" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/feature.properties"/>
                        </Component>
                        <Component Id="_d754071b_9663_42d5_95a8_ed88b4a2205a" Guid="5da9ad94-530e-4b4b-8e4f-68c8b881d8ac" Win64="yes">
                            <File Id="_030e7de2_b6bd_4e39_8b18_bf5cc952225b" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/feature.xml"/>
                        </Component>
                        <Component Id="_e6e125bd_a507_4284_b8e8_31e4187f7ccf" Guid="2fe8884e-4a39-4266-baa2-e0b02771c8d7" Win64="yes">
                            <File Id="_f19d9bfd_3853_4020_acc7_1dbbcdcf9c28" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/license.html"/>
                        </Component>
                        <Directory Id="_22bb55ca_7bbc_4d1f_a80c_be0dbc20ae8c" Name="META-INF">
                            <Component Id="_b04cee3c_d32f_4ed7_8b44_e6810c01dacd" Guid="af9d0422-8dce-4357-b160-916381574d46" Win64="yes">
                                <File Id="_ab939f74_f062_4ddd_b50b_2b81cd8f2751" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_a75af659_c07a_4beb_b36f_8080092a631d" Guid="24dda922-2fe4-4495-9f9a-73544e49db5a" Win64="yes">
                                <File Id="_496f15ee_5035_4c24_9c69_90b8414c7a86" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_119968a0_b0d1_454b_b79a_2d7dd79ef290" Guid="22249c1f-ee7f-48db-88c5-9210eb9450bd" Win64="yes">
                                <File Id="_5b8cbd9b_9e31_4aca_94a8_dab70b5ef68b" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.common_2.14.0.v20180527-1134/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_b4ec2d62_0a5f_4ef7_bb73_5c3fb3f550e9" Name="org.eclipse.emf.ecore_2.14.0.v20180529-1144">
                        <Component Id="_a2661a98_04d4_47ff_91f0_6efd5233db1b" Guid="5ebc9dd8-4631-480c-821c-4545e449feeb" Win64="yes">
                            <File Id="_429f3e9a_4974_4ae8_a43c_1ab1e7a56852" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/epl-v10.html"/>
                        </Component>
                        <Component Id="_4c26dab3_7238_44ce_896c_3386e1275d56" Guid="f70ca7c6-84fb-4f66-9ade-79941868a3c5" Win64="yes">
                            <File Id="_00ac65a2_498c_4c47_bf89_79221b62d160" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/feature.properties"/>
                        </Component>
                        <Component Id="_22478ab8_ea83_44e1_b164_e79aa4cfab6c" Guid="baed2f86-2d78-44ab-8256-977308cd944e" Win64="yes">
                            <File Id="_290e02f6_05e3_4820_88b0_a47413304062" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/feature.xml"/>
                        </Component>
                        <Component Id="_636c04f2_2212_4db0_8128_4e6b9e096eed" Guid="3a2f9d70-2059-484c-ad62-fb99ac124872" Win64="yes">
                            <File Id="_3b4e7d54_ac85_402f_9f3b_2450bebe1981" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/license.html"/>
                        </Component>
                        <Directory Id="_be7de0bb_59dd_4495_86a7_eb9589a91927" Name="META-INF">
                            <Component Id="_ebe49a02_ecd4_4b84_98a0_0cf0377bbb49" Guid="f3e73510-59e0-42ae-8883-3a77557c32c7" Win64="yes">
                                <File Id="_5d226d31_c356_4138_b7d3_e06fb23cbcd8" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_eae57ff7_4d57_4c3c_9e70_678ae0a89d62" Guid="81fe9ede-13bd-4c9d-9c1f-a44f8443b463" Win64="yes">
                                <File Id="_5f7b74dc_03c6_4960_bfc2_26f04ec8742d" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_a2a8bc81_3041_484d_8f72_ef8d91bc0f03" Guid="b1d39684-8a97-4ae6-adeb-0af364931ec4" Win64="yes">
                                <File Id="_ccd348df_47b0_49bc_b45c_358a78499dc4" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.emf.ecore_2.14.0.v20180529-1144/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_413d3c24_574c_44d8_b8b8_913a2d9d0590" Name="org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348">
                        <Component Id="_609c83e1_c558_4d71_b6f0_f05bbcbad48b" Guid="a29325ad-6383-4bff-9fd1-03ac381397fa" Win64="yes">
                            <File Id="_41f21d3e_a67d_4392_b0d2_a2b5afcb3deb" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/epl-v10.html"/>
                        </Component>
                        <Component Id="_7a7b712b_88fe_430d_8dcc_94d247fb05c4" Guid="c7e4e14b-0a78-47c9-8abc-2e8568328fdb" Win64="yes">
                            <File Id="_4213d506_565d_4996_b1f5_7de30e931fb6" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/feature.properties"/>
                        </Component>
                        <Component Id="_8091ef2a_5c47_4a7a_8542_7561b2cef986" Guid="eaddc080-9a01-428e-9a62-836db5d348af" Win64="yes">
                            <File Id="_52d31b8f_2c0c_4887_a3a7_bff8dffd4293" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/feature.xml"/>
                        </Component>
                        <Component Id="_7ec19e65_3e70_47d8_8f95_e9303ceaf379" Guid="c0289618-3c92-41c5-9dc6-fd9a392e3448" Win64="yes">
                            <File Id="_cd638d2f_73a8_4dd2_a916_7cdc868f69a4" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/license.html"/>
                        </Component>
                        <Directory Id="_95cc03db_5c5a_4aa3_9ead_5335855b1955" Name="META-INF">
                            <Component Id="_a08f9a4e_3d15_432d_b8b7_fe3c27c6ad23" Guid="07151b9a-18f2-4b77-bfd7-8beaeeca06d7" Win64="yes">
                                <File Id="_941178c8_899d_4b7b_871d_e9082027cd34" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_fb435d85_8ad9_4494_899c_fb2b9a56fdf8" Guid="49535d26-8517-497a-a1de-a18be1db0833" Win64="yes">
                                <File Id="_9cca1129_57b1_4a96_b167_742deacc9c70" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_12bb03c4_c3ad_49fc_a4c5_59ff02abc2a6" Guid="bf72f3a4-b40d-4766-ab86-ef531c864d66" Win64="yes">
                                <File Id="_b680895c_cf5c_4476_870f_0c294dc2c4f3" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.core.feature_1.5.0.v20180515-1348/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_478bcdcb_5104_41a9_8431_a67928955513" Name="org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348">
                        <Component Id="_8dd186b3_9f59_49d9_9989_04561fc6ec8b" Guid="3360058e-bac6-48a4-85c4-e86e6f9d83d4" Win64="yes">
                            <File Id="_0ad8f57d_4667_45c1_8164_6d504bc17e70" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/epl-v10.html"/>
                        </Component>
                        <Component Id="_e7f77087_f893_49f3_aef8_f0ca98b42312" Guid="01d9873d-bc0f-434a-8d7b-c9e5c6b50066" Win64="yes">
                            <File Id="_56a37b48_62e6_4297_b703_2ef86e6a8b85" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/feature.properties"/>
                        </Component>
                        <Component Id="_308966b0_0518_494a_9c46_87d9915f5f0f" Guid="f4809281-df9d-41ad-a901-c8a085fe7c96" Win64="yes">
                            <File Id="_2aa30da5_f46e_4308_bde6_4ec6b325e8c7" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/feature.xml"/>
                        </Component>
                        <Component Id="_afc7a30e_754c_4660_b8f0_c1d29d0b7d7b" Guid="10aba1e9-5d62-45e7-bab5-c9d2d7aeb609" Win64="yes">
                            <File Id="_47c43ebb_c027_43e8_97f7_aea703bb4af8" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/license.html"/>
                        </Component>
                        <Directory Id="_8d8a456d_9a54_4ea3_b435_4bc1c72f1bde" Name="META-INF">
                            <Component Id="_46e75437_0d2e_452c_83f6_dc2d2e6aaf4d" Guid="d9ef966b-b5e5-4d4b-80af-0fe38c8ca026" Win64="yes">
                                <File Id="_9973f9b3_443b_4453_a7c0_d581e6d0503b" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_7a687c6f_0a15_4097_be2e_0d88b6eb9112" Guid="095b3f97-4509-4ae3-b883-2d9eb173919d" Win64="yes">
                                <File Id="_17a02b48_5bfd_40f7_ac7c_56c39ce614da" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_59ea4950_bd63_47c4_9ee9_a40b165c0088" Guid="95ba4101-579e-4720-944f-bf4b0be13ba1" Win64="yes">
                                <File Id="_afaaf6a7_79a8_4e0e_824f_c358a5a9af0e" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.equinox.p2.rcp.feature_1.4.0.v20180515-1348/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_495c8d02_8e2b_46bd_b27d_36703233c4c7" Name="org.eclipse.help_2.2.200.v20180611-0500">
                        <Component Id="_5846bc5d_4d20_457e_aa32_3a6034f1b479" Guid="afbfcdc5-190c-4197-b266-56d5d69ce4d8" Win64="yes">
                            <File Id="_fa8ffb1e_02ff_4dea_be67_b395df16b1c5" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/epl-v10.html"/>
                        </Component>
                        <Component Id="_9cce4a03_22db_4271_80f8_ab42871aff77" Guid="b6887c72-c6ad-4b37-805c-6236d3de8b28" Win64="yes">
                            <File Id="_3c14405e_e0a4_4b45_b4f1_a2c3edf37dc4" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/feature.properties"/>
                        </Component>
                        <Component Id="_f4d00ace_38be_488f_a5b9_7024f8b0db4d" Guid="6e22b2ba-2eb8-4eb1-b486-5c97d93b75b5" Win64="yes">
                            <File Id="_4a2bced1_0716_4833_bd27_04b4cfaa7af3" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/feature.xml"/>
                        </Component>
                        <Component Id="_bbd1c195_2c57_40d0_b64b_b86ef5e707a5" Guid="ec18479f-22c7-4117-8a40-8d68b8726b21" Win64="yes">
                            <File Id="_817feb8b_de1b_47cb_bc23_cad0130e5044" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/license.html"/>
                        </Component>
                        <Directory Id="_3268e3fc_8830_4237_8cb2_080b70f5b104" Name="META-INF">
                            <Component Id="_9c936657_ed2f_47c9_bdf1_3665d702bc4e" Guid="d780a3ca-0800-4962-af64-ae97cf89dbca" Win64="yes">
                                <File Id="_024ec62e_8480_4430_a8ed_4ef32e0ea616" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_ffc77c79_7dfc_490b_b251_79b67ed56f72" Guid="d438e31b-f873-4965-999e-94fed9953d01" Win64="yes">
                                <File Id="_5e35eaf4_ca25_4729_afe1_4eb26cfa7f1e" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_73bbadf5_e6e6_4d1a_a151_fe6911f10200" Guid="233b92d3-539d-4a2c-a780-8a1ddce98d90" Win64="yes">
                                <File Id="_7567a161_2530_40f5_bc14_0c7fbb51c42f" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.help_2.2.200.v20180611-0500/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_91bd9eb3_1423_4fe5_b052_882295017dd5" Name="org.eclipse.rcp_4.8.0.v20180611-0656">
                        <Component Id="_b26140f5_a2d7_4fed_a2d7_6e381cb76eda" Guid="1446c43a-c9f0-4dc6-8730-4d272fc1c6c4" Win64="yes">
                            <File Id="_260bb735_7574_4db0_9560_b309df336f33" Name="epl-v10.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/epl-v10.html"/>
                        </Component>
                        <Component Id="_e3b22f10_9e11_47dc_a61f_0a313a2564d5" Guid="fb360e21-d39a-467c-9920-47ca420816b5" Win64="yes">
                            <File Id="_064cbda5_5847_41f7_ad30_ba1021823a2b" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/feature.properties"/>
                        </Component>
                        <Component Id="_4b56ac5f_0d7f_42a3_a02f_691aa6574a51" Guid="47ad4ce2-3e3e-4d1e-884b-51da5c6f8798" Win64="yes">
                            <File Id="_fd9998e8_0b2a_4af9_b2c0_cc7627b202ac" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/feature.xml"/>
                        </Component>
                        <Component Id="_22a9758d_3de8_4046_afbc_cd896e67cf05" Guid="e31b83e9-f745-44a1-9c7d-897824521bf2" Win64="yes">
                            <File Id="_afad31ce_34ec_4393_aba7_e6728a250c8c" Name="license.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/license.html"/>
                        </Component>
                        <Directory Id="_6e1b571c_11fe_4402_8124_2d8f06fcdad8" Name="META-INF">
                            <Component Id="_277c62a4_bc4e_45a9_9d41_472cd445f228" Guid="1bd43a87-9937-4c40-9a00-ca5463b00394" Win64="yes">
                                <File Id="_4c3c665b_f44f_45c2_a3de_9c9289e61823" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_d8045d6e_1f48_4831_b555_65dd15a983f2" Guid="a73ebc77-abd9-4474-abe3-12f7edf167bd" Win64="yes">
                                <File Id="_024f1254_47e9_46f6_9679_42c0af14e175" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_ccea895b_c314_4d47_8667_13d73b8875c5" Guid="48501004-5750-473e-aec2-833a4aa9fa6f" Win64="yes">
                                <File Id="_aeb8a78f_cbbf_43ef_b3b9_f9b61829db46" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.eclipse.rcp_4.8.0.v20180611-0656/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Directory Id="_a7a5a3f0_0910_41d8_ad05_91dc165ff3ab" Name="org.openjdk.jmc.feature.console_7.0.0.201810181240">
                        <Component Id="_f430b143_0f8a_402a_8120_a00110e3c4cf" Guid="51663ce4-a1c8-4ff7-8a30-f06376ea9508" Win64="yes">
                            <File Id="_37e76e0a_765b_4d4d_8f99_cb46507fff15" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.console_7.0.0.201810181240/feature.properties"/>
                        </Component>
                        <Component Id="_15fbfd29_5cd0_46e3_986c_c94bf64ad71e" Guid="28cd19fe-f29c-46dd-9df9-eaff713b2465" Win64="yes">
                            <File Id="_469806e1_366d_4366_8465_3943c773863f" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.console_7.0.0.201810181240/feature.xml"/>
                        </Component>
                        <Directory Id="_ff48799b_29f9_49c8_a2a2_d3720fe1f5f6" Name="META-INF">
                            <Component Id="_a94a5e13_8302_460a_8205_85c8f814f821" Guid="63a7ad3a-21ea-440e-a4f3-f3ba595dfa8e" Win64="yes">
                                <File Id="_77a11f88_4e0e_462d_90a8_2c7ac537771b" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.console_7.0.0.201810181240/META-INF/MANIFEST.MF"/>
                            </Component>
                            <Directory Id="_51867874_6f1d_4e40_a9c3_1e98f52c5415" Name="maven">
                                <Directory Id="_4770b26c_3a5c_4455_a446_bbb9a30cde36" Name="org.openjdk.jmc">
                                    <Directory Id="_cc735363_61b4_45e2_8f1e_23289074babf" Name="org.openjdk.jmc.feature.console">
                                        <Component Id="_95031477_5b32_4bd3_9f8e_173163727b90" Guid="5c7473a3-ab03-46f5-af8b-a42cce996b4b" Win64="yes">
                                            <File Id="_f89ed2f7_a7e5_4043_95a5_2aaaa29a9361" Name="pom.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.console_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.console/pom.properties"/>
                                        </Component>
                                        <Component Id="_f8bb7dee_d2db_4c65_aa7d_44e251a07096" Guid="dd7dc3ed-d22f-462d-a2f2-f3e08dbd9cdb" Win64="yes">
                                            <File Id="_edaf73ab_67ec_4983_8565_3dd4ba2dc03c" Name="pom.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.console_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.console/pom.xml"/>
                                        </Component>
                                    </Directory>
                                </Directory>
                            </Directory>
                        </Directory>
                    </Directory>
                    <Directory Id="_404f15c7_5832_4aac_8bc3_7e3ce3608348" Name="org.openjdk.jmc.feature.core_7.0.0.201810181240">
                        <Component Id="_58c0051e_5b75_4eb6_811d_5e9f091263a6" Guid="3b6d8e9e-d2c0-4c78-851b-2f92064fdd4e" Win64="yes">
                            <File Id="_54dabf3a_307e_4c06_9705_c4e7c855bef4" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.core_7.0.0.201810181240/feature.properties"/>
                        </Component>
                        <Component Id="_5baf73f3_3fa7_4065_a8a0_66b790e4df22" Guid="32419757-396b-427d-87fb-2ab38b289c3f" Win64="yes">
                            <File Id="_ecd773c6_aea1_4f29_8756_6e1e8d516bf6" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.core_7.0.0.201810181240/feature.xml"/>
                        </Component>
                        <Directory Id="_b3ba9a77_3a97_4450_a56c_e4cbb663c13c" Name="META-INF">
                            <Component Id="_1c456fba_5ed8_4cba_a898_b976230b4170" Guid="a94ad216-b53a-428c-8f80-da9cdca46a73" Win64="yes">
                                <File Id="_0bb15a74_bbba_4ae3_be7c_38ee3ff45311" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.core_7.0.0.201810181240/META-INF/MANIFEST.MF"/>
                            </Component>
                            <Directory Id="_2bdbb8a4_df7e_4d6a_a861_c5a10662d49a" Name="maven">
                                <Directory Id="_78bdcafb_a708_4744_876b_7babed6b9083" Name="org.openjdk.jmc">
                                    <Directory Id="_97eabe9c_8a92_48cf_ac8b_7547fdd67e7d" Name="org.openjdk.jmc.feature.core">
                                        <Component Id="_a9c59c37_8e8b_40de_a3e2_af5e5521e5c0" Guid="6742bc52-9ee6-4ef7-ae63-eaebe2d0a82d" Win64="yes">
                                            <File Id="_d2018d9c_c199_46ca_b34e_a14bd7a50db9" Name="pom.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.core_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.core/pom.properties"/>
                                        </Component>
                                        <Component Id="_bd5ef741_f5b4_4049_8579_d51276ab3cc0" Guid="8b9eb71f-68fe-4e6b-b4c9-d91d03d68bff" Win64="yes">
                                            <File Id="_434d3286_ed56_41ab_b0db_2cc5f7cb3ad7" Name="pom.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.core_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.core/pom.xml"/>
                                        </Component>
                                    </Directory>
                                </Directory>
                            </Directory>
                        </Directory>
                    </Directory>
                    <Directory Id="_2b6578dd_7dba_4fbd_9dbe_164797fa03fb" Name="org.openjdk.jmc.feature.flightrecorder_7.0.0.201810181240">
                        <Component Id="_733e8a7d_c892_4c16_a9fc_40c15d92f012" Guid="aa6077f9-e9f8-4c17-a228-60d46a34d5f9" Win64="yes">
                            <File Id="_0b6d7a80_09cb_4361_8a1c_52290d9ff448" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.flightrecorder_7.0.0.201810181240/feature.properties"/>
                        </Component>
                        <Component Id="_91d56a63_02eb_49cd_a4e3_6a1643afe9d9" Guid="ee92b3e5-3d92-4485-b7b1-81e6f877c97b" Win64="yes">
                            <File Id="_4f0a7aee_f565_4836_ae58_1bd102d82145" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.flightrecorder_7.0.0.201810181240/feature.xml"/>
                        </Component>
                        <Directory Id="_97a7664b_c151_4dee_8945_9daa823c6547" Name="META-INF">
                            <Component Id="_a2341fa9_c0e0_43a7_a669_74271145c2a6" Guid="551802fd-36e5-44f6-a509-2d455bb80839" Win64="yes">
                                <File Id="_0d7bf84c_b200_4fa5_86bc_2353dd78e596" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.flightrecorder_7.0.0.201810181240/META-INF/MANIFEST.MF"/>
                            </Component>
                            <Directory Id="_b86f68a1_db21_4126_a2dc_683893a836ce" Name="maven">
                                <Directory Id="_44efa915_a396_4b56_adcb_385accc7285c" Name="org.openjdk.jmc">
                                    <Directory Id="_2a4391b2_5d02_41b6_b02f_1873eef23dcb" Name="org.openjdk.jmc.feature.flightrecorder">
                                        <Component Id="_6d9f95f2_9df7_453f_98db_157697cf1845" Guid="36b941e9-dbfc-4e5f-bd58-50d28b0cfc2e" Win64="yes">
                                            <File Id="_71c10be7_e62d_492c_93cd_a20bdf85fdcc" Name="pom.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.flightrecorder_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.flightrecorder/pom.properties"/>
                                        </Component>
                                        <Component Id="_ae279f6a_d574_4d68_a0dc_e250c691bea9" Guid="0373a906-adf0-4e1f-a927-b7a5be1f61d2" Win64="yes">
                                            <File Id="_d189006d_0675_4247_9c97_bdd6bf1c06f8" Name="pom.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.flightrecorder_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.flightrecorder/pom.xml"/>
                                        </Component>
                                    </Directory>
                                </Directory>
                            </Directory>
                        </Directory>
                    </Directory>
                    <Directory Id="_b76a3f55_d259_4009_a07b_8097698312a3" Name="org.openjdk.jmc.feature.rcp.ja_7.0.0.201810181240">
                        <Component Id="_faa15c79_cef4_402d_bcf7_eb21e18b5791" Guid="918b8b15-303a-441c-aa28-9adab7a348d8" Win64="yes">
                            <File Id="_56896d75_b560_4594_ad62_4c77394f696f" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.ja_7.0.0.201810181240/feature.properties"/>
                        </Component>
                        <Component Id="_c6baa620_a820_44b1_ad97_6215c5b8d1ad" Guid="92ef5055-8b2a-471c-b7bb-5e4b3c55ac22" Win64="yes">
                            <File Id="_eeaf9a79_e9a3_4c59_9555_a84cdfaae2e5" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.ja_7.0.0.201810181240/feature.xml"/>
                        </Component>
                        <Directory Id="_ee997e91_17df_4131_a354_3fa0910c13f6" Name="META-INF">
                            <Component Id="_b28b12aa_8d9d_4c16_a840_770e4546b19b" Guid="cc838cb8-e25d-4d75-85d5-86b1687adbd8" Win64="yes">
                                <File Id="_fad344c1_a186_48f7_a081_ef64a18efe3b" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.ja_7.0.0.201810181240/META-INF/MANIFEST.MF"/>
                            </Component>
                            <Directory Id="_9ec4297c_4365_4bc7_981e_abf2711abc0e" Name="maven">
                                <Directory Id="_6158db3a_8f36_42e0_a38d_3c6d4259d625" Name="org.openjdk.jmc">
                                    <Directory Id="_f474f203_67c1_4040_99da_796ce17394d3" Name="org.openjdk.jmc.feature.rcp.ja">
                                        <Component Id="_a375f8b0_0978_482a_93f2_017d21a635c1" Guid="c2b223b4-3479-4ffa-a491-da75880e0ceb" Win64="yes">
                                            <File Id="_9844e15c_cd50_479a_8180_22314ef458d2" Name="pom.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.ja_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.rcp.ja/pom.properties"/>
                                        </Component>
                                        <Component Id="_f4cbaf3c_848d_48d3_9037_89a1257fb110" Guid="5d4c5ee4-2d21-465e-ab74-df96f3b99d47" Win64="yes">
                                            <File Id="_81cc1026_367e_4b40_91f6_5e7a69009a6a" Name="pom.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.ja_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.rcp.ja/pom.xml"/>
                                        </Component>
                                    </Directory>
                                </Directory>
                            </Directory>
                        </Directory>
                    </Directory>
                    <Directory Id="_e7815ba4_e22b_47a0_b06c_76c7c14908e9" Name="org.openjdk.jmc.feature.rcp.zh_CN_7.0.0.201810181240">
                        <Component Id="_b29b285d_15e8_4038_a581_403d446d28bd" Guid="337f3b62-008e-4a9d-bfc0-c32d9c705f97" Win64="yes">
                            <File Id="_ad3642a8_571c_460e_8a2e_bd9f81e7fe1e" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.zh_CN_7.0.0.201810181240/feature.properties"/>
                        </Component>
                        <Component Id="_64097527_9c88_449e_a128_2a2b039b11b6" Guid="15cf068b-55be-4948-806b-e9c630dd3351" Win64="yes">
                            <File Id="_b79a5ff0_3f2b_4227_9c8a_d334259da0ff" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.zh_CN_7.0.0.201810181240/feature.xml"/>
                        </Component>
                        <Directory Id="_3465b91c_41f3_4f27_90c6_191aa0351db3" Name="META-INF">
                            <Component Id="_a2edaf5e_e424_406a_accf_dd241b8719e9" Guid="e5ffdd72-52f5-48ad-bef1-2c59e3f22860" Win64="yes">
                                <File Id="_028e9679_1a1c_400f_9c48_fcb4804b9374" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.zh_CN_7.0.0.201810181240/META-INF/MANIFEST.MF"/>
                            </Component>
                            <Directory Id="_d8181be4_521f_4623_8318_889ab313320c" Name="maven">
                                <Directory Id="_e981dce3_360e_4ab5_8424_3dd7bab2dba8" Name="org.openjdk.jmc">
                                    <Directory Id="_e072cd21_ba8f_4656_86d1_79733a6075ad" Name="org.openjdk.jmc.feature.rcp.zh_CN">
                                        <Component Id="_0204cd13_f528_45b8_94a2_4e8f6abce503" Guid="b0fd74b6-cea8-4052-824e-cccd30e4976f" Win64="yes">
                                            <File Id="_88e03b93_3dea_46e7_8f0e_60ee8bfef506" Name="pom.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.zh_CN_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.rcp.zh_CN/pom.properties"/>
                                        </Component>
                                        <Component Id="_68dbc6e3_6958_443b_958c_dbb8faa0a63d" Guid="8bc23d36-545f-4126-875b-542f8e4cc276" Win64="yes">
                                            <File Id="_6a28b4e7_80cb_4be2_9580_f1e497bcfe96" Name="pom.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp.zh_CN_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.rcp.zh_CN/pom.xml"/>
                                        </Component>
                                    </Directory>
                                </Directory>
                            </Directory>
                        </Directory>
                    </Directory>
                    <Directory Id="_d669b518_91ad_4d93_be69_910d74bcd9c1" Name="org.openjdk.jmc.feature.rcp_7.0.0.201810181240">
                        <Component Id="_4603dd29_a33c_4dec_b5c7_fc71f8e62fe7" Guid="1bc5186c-5677-4e02-8b26-86e4b6225bd8" Win64="yes">
                            <File Id="_ddf3f932_1655_4245_a208_9dda70655a89" Name="feature.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp_7.0.0.201810181240/feature.properties"/>
                        </Component>
                        <Component Id="_85842157_dc2b_4515_85c6_d6d6760dace1" Guid="db2df9a0-04af-44dc-a320-fde76f4d77cb" Win64="yes">
                            <File Id="_d7c55fe3_5db1_4235_a2dd_dc9fccf3d4e6" Name="feature.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp_7.0.0.201810181240/feature.xml"/>
                        </Component>
                        <Directory Id="_8f5ec58a_db5d_4dfa_8d42_6d98eab41b48" Name="META-INF">
                            <Component Id="_6c902535_ff51_4c92_bb09_a37a4b75316f" Guid="fde47fb5-e8b1-4c7b-8d2b-36f24da4b694" Win64="yes">
                                <File Id="_bfec1ece_e345_4e0a_a77d_63bb98781fda" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp_7.0.0.201810181240/META-INF/MANIFEST.MF"/>
                            </Component>
                            <Directory Id="_8a707768_5928_4ee0_b474_b65b52ec088b" Name="maven">
                                <Directory Id="_96e82781_36dc_4e07_bfe8_5393aed46e5d" Name="org.openjdk.jmc">
                                    <Directory Id="_099ec0fd_89fa_40f2_97b0_efafba0be752" Name="org.openjdk.jmc.feature.rcp">
                                        <Component Id="_a34443e6_d96e_4936_ab35_6b88e7a295b6" Guid="071f4b06-8944-4179-af0f-7bb01712c5d5" Win64="yes">
                                            <File Id="_d78bb977_f2fb_4c85_95b3_20cc94e21636" Name="pom.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.rcp/pom.properties"/>
                                        </Component>
                                        <Component Id="_9c11d433_50a3_44dd_a4ea_c3f266d2376b" Guid="18d664de-2ee3-4f11-99aa-9591a40b7500" Win64="yes">
                                            <File Id="_df924219_eb48_4e2d_96d4_de18de02adae" Name="pom.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/features/org.openjdk.jmc.feature.rcp_7.0.0.201810181240/META-INF/maven/org.openjdk.jmc/org.openjdk.jmc.feature.rcp/pom.xml"/>
                                        </Component>
                                    </Directory>
                                </Directory>
                            </Directory>
                        </Directory>
                    </Directory>
                </Directory>
                <Component Id="_03c2a219_874d_4019_a127_ae9995a87212" Guid="c76d4c80-6868-4862-91f4-2ffa9faa56be" Win64="yes">
                    <File Id="_96001218_f657_4f7d_94c5_3f5b866d463a" Name="jmc.exe" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/jmc.exe"/>
                </Component>
                <Component Id="_732e2db0_d16d_4475_b222_65403ff8bc70" Guid="d1d0fc3b-28e7-4729-b7f4-388a3a26da5f" Win64="yes">
                    <File Id="_29cf3cc3_ff4f_4ceb_b513_025641d119c9" Name="jmc.ini" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/jmc.ini"/>
                </Component>
                <Directory Id="_53af83f0_f15f_4300_9d8c_2911849e3d1f" Name="p2">
                    <Directory Id="_29e565b3_2401_4f1c_9dd5_89e6685c9b7a" Name="org.eclipse.equinox.p2.core">
                        <Directory Id="_89a84e59_33d2_4529_8723_481a7bbdf072" Name="cache">
                            <Component Id="_7a61c2f2_ff73_4de0_a991_6eada2229214" Guid="0b9f17a0-53a2-4f95-bcbc-aeb9718d75f0" Win64="yes">
                                <File Id="_a9b9d68f_93e7_4a3d_b866_79781ba97b20" Name="artifacts.xml" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.core/cache/artifacts.xml"/>
                            </Component>
                            <Directory Id="_4c765d5a_7578_4e15_8307_93f741fe9fc5" Name="binary">
                                <Component Id="_ea7c54ca_0ca7_4f58_88a8_8e693c93aefd" Guid="b76e502b-87da-477e-820e-03130f9e3abf" Win64="yes">
                                    <File Id="_11ef15a4_2221_48eb_aa88_ef5717728885" Name="org.eclipse.rcp_root_4.8.0.v20180611-0656" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.core/cache/binary/org.eclipse.rcp_root_4.8.0.v20180611-0656"/>
                                </Component>
                                <Component Id="_bfefd132_0dc3_46da_9e82_0d3a61c5a7cb" Guid="52a59589-1570-44b7-933c-c8ff6c8e94e6" Win64="yes">
                                    <File Id="_298c9cee_5e85_4f47_bc51_979d952dfdb9" Name="org.openjdk.jmc.executable.win32.win32.x86_64_7.0.0" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.core/cache/binary/org.openjdk.jmc.executable.win32.win32.x86_64_7.0.0"/>
                                </Component>
                                <Component Id="_19ccb83d_0990_4bcc_bf6a_d91ec989b566" Guid="e0919885-634b-4835-beaf-a379ad05d2ce" Win64="yes">
                                    <File Id="_1dee62fa_bede_46a0_b284_1258399b1971" Name="org.openjdk.jmc.feature.rcp_root_7.0.0.201810181240" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.core/cache/binary/org.openjdk.jmc.feature.rcp_root_7.0.0.201810181240"/>
                                </Component>
                            </Directory>
                        </Directory>
                    </Directory>
                    <Directory Id="_7b37555b_0bc9_4a3f_b021_6b6a2b2b8003" Name="org.eclipse.equinox.p2.engine">
                        <Directory Id="_eb8d940b_5436_4ddd_9181_6c5297189830" Name=".settings">
                            <Component Id="_31ab77ef_f0f9_4874_8c2b_bb85d49814cc" Guid="8f178b47-f3ee-4c93-9960-9db32d89ec61" Win64="yes">
                                <File Id="_c5cf370b_9823_4ee4_9067_ce00cc84b485" Name="org.eclipse.equinox.p2.artifact.repository.prefs" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/.settings/org.eclipse.equinox.p2.artifact.repository.prefs"/>
                            </Component>
                            <Component Id="_6d2301f3_ec05_4ec4_ab13_74003bb299fb" Guid="0fa3b82f-dec5-4779-a094-81db69f25c17" Win64="yes">
                                <File Id="_3899a4cf_2e3f_4a67_b46a_6ec8dbe387c9" Name="org.eclipse.equinox.p2.metadata.repository.prefs" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/.settings/org.eclipse.equinox.p2.metadata.repository.prefs"/>
                            </Component>
                        </Directory>
                        <Directory Id="_e31471e5_3088_41a8_8fc9_6ee7b14441ac" Name="profileRegistry">
                            <Directory Id="_baf7b8e2_01e8_4916_a3f3_fe557ac8eacf" Name="DefaultProfile.profile">
                                <Directory Id="_2b7f9976_a0db_4eb6_ab2d_161441268658" Name=".data"/>
                                <Component Id="_4a8c9f2f_7c42_47b5_8a1e_088251d694f1" Guid="5aa6a1bd-9cf9-4fe6-8ba6-9288dc69cd5e" Win64="yes">
                                    <File Id="_17960c83_68ac_493d_9976_f580d1402c73" Name=".lock" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/profileRegistry/DefaultProfile.profile/.lock"/>
                                </Component>
                                <Component Id="_de39eff2_eace_43e9_9ce9_e1c4a7caede1" Guid="f5b47a29-db3d-4887-bea5-04f2fa92ebfb" Win64="yes">
                                    <File Id="_12be4d0d_d10f_4a6a_803c_915b4927532f" Name="1539867606194.profile.gz" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/profileRegistry/DefaultProfile.profile/1539867606194.profile.gz"/>
                                </Component>
                                <Component Id="_8dd4f71b_776b_40a0_bb4b_b7bb5a9e9bd3" Guid="2b1a5721-fde5-4397-946c-f4e57229855c" Win64="yes">
                                    <File Id="_2de9f434_9ea6_4f98_8615_8dcba24545a1" Name="1539867606260.profile.gz" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/profileRegistry/DefaultProfile.profile/1539867606260.profile.gz"/>
                                </Component>
                                <Component Id="_f3e01767_49e0_480c_bdb5_9b1a6cf5970a" Guid="6d7f63c6-6e9b-413f-8066-e2c3bc396e15" Win64="yes">
                                    <File Id="_d4a25381_1ef3_4311_99bc_dd6376c94264" Name="1539867614945.profile.gz" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/profileRegistry/DefaultProfile.profile/1539867614945.profile.gz"/>
                                </Component>
                                <Component Id="_36604eb3_d8de_44ad_9bcc_189a7e0539fa" Guid="29c9e032-977a-4ea7-8b98-396e5a8ccda0" Win64="yes">
                                    <File Id="_a91740a4_f9f7_4257_93ca_4ea5f700bb54" Name="1539867616618.profile.gz" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/p2/org.eclipse.equinox.p2.engine/profileRegistry/DefaultProfile.profile/1539867616618.profile.gz"/>
                                </Component>
                            </Directory>
                        </Directory>
                    </Directory>
                </Directory>
                <Directory Id="_c356f83b_a8ba_4583_8966_22cd85b178dc" Name="plugins">
                    <Component Id="_ec5d33fe_e01e_455f_b361_62897ffdb85b" Guid="7785187e-a85a-45cd-9fe4-537e2cf48f54" Win64="yes">
                        <File Id="_5507b203_02dd_4c2a_bb79_652d3ef3d2c3" Name="com.ibm.icu_58.2.0.v20170418-1837.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/com.ibm.icu_58.2.0.v20170418-1837.jar"/>
                    </Component>
                    <Component Id="_9ec9bfff_b8ab_4f6e_a19d_93b5a19f55da" Guid="fe54e64c-a307-4580-9c9d-3362ca083785" Win64="yes">
                        <File Id="_03f4b98c_c1ea_4919_9697_785c9403ded2" Name="com.sun.el_2.2.0.v201303151357.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/com.sun.el_2.2.0.v201303151357.jar"/>
                    </Component>
                    <Component Id="_0dfcd469_b863_4260_8d77_b8ead67553e5" Guid="a88a6ef0-4cef-4dd0-ad98-97084db694a3" Win64="yes">
                        <File Id="_dccebbcc_7e5b_428d_b9fe_8d19f034ade2" Name="javax.annotation_1.2.0.v201602091430.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.annotation_1.2.0.v201602091430.jar"/>
                    </Component>
                    <Component Id="_2b3c2e01_d96c_4a26_b197_e406badc197a" Guid="279936e9-dfe9-48a1-bc49-f67ee9214bc7" Win64="yes">
                        <File Id="_1ee7e7b0_80ea_41c7_ad39_2e23e4814ad5" Name="javax.el_2.2.0.v201303151357.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.el_2.2.0.v201303151357.jar"/>
                    </Component>
                    <Component Id="_52c6fca8_a63d_4a9e_8fff_84a31a346dd6" Guid="ddb2f5b2-086a-4419-8a10-c28d55bb25ef" Win64="yes">
                        <File Id="_54ad3718_91c6_4d03_aff8_ea3bdbaf431b" Name="javax.inject_1.0.0.v20091030.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.inject_1.0.0.v20091030.jar"/>
                    </Component>
                    <Component Id="_cdcd66b5_ae25_44bf_81e7_006d3a75a996" Guid="650b6173-7ffd-4231-9ed5-d73ad61131dd" Win64="yes">
                        <File Id="_cc705576_ed45_4c76_b996_daf74aae0981" Name="javax.mail.api_1.4.0.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.mail.api_1.4.0.jar"/>
                    </Component>
                    <Component Id="_9b8c05c1_30bf_430a_95e0_c2f226426814" Guid="acb7a974-526b-41e8-bb55-42f83d61f721" Win64="yes">
                        <File Id="_4efc313d_c0ee_4b36_aee1_3018b639dbc8" Name="javax.mail.dsn_1.4.0.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.mail.dsn_1.4.0.jar"/>
                    </Component>
                    <Component Id="_a261fd84_7a8f_43fc_bf06_9c0812dfa7f3" Guid="53cf0100-9a88-4cb9-8dfb-a91d638dd9db" Win64="yes">
                        <File Id="_bf1f54e2_9228_4f73_b302_28eaadea34cf" Name="javax.mail.imap_1.4.0.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.mail.imap_1.4.0.jar"/>
                    </Component>
                    <Component Id="_5732f8d4_bfd3_42b1_8f27_6aad0e28dc2e" Guid="32768e30-c1de-475c-bb1e-afbf71e50b9a" Win64="yes">
                        <File Id="_8e925156_93b6_4dec_b5ea_5fd26810ff29" Name="javax.mail.pop3_1.4.0.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.mail.pop3_1.4.0.jar"/>
                    </Component>
                    <Component Id="_4686a2db_5c2a_412a_a00d_2c173235183f" Guid="1d0e7a02-49ae-46cc-974e-0672f03d1cc2" Win64="yes">
                        <File Id="_33a565a3_cf32_41d6_9143_dc69d2b0d011" Name="javax.mail.smtp_1.4.0.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.mail.smtp_1.4.0.jar"/>
                    </Component>
                    <Component Id="_de2ea96f_e12a_4b71_b81a_ab7d0c0aa078" Guid="9e8a0fd7-38fd-4920-a8ea-a7da38dad574" Win64="yes">
                        <File Id="_43c10dad_a187_48b3_a361_77032aecfd15" Name="javax.servlet.jsp_2.2.0.v201112011158.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.servlet.jsp_2.2.0.v201112011158.jar"/>
                    </Component>
                    <Component Id="_4876af5b_6eec_4d0d_b4a8_194a203ec4bb" Guid="a1e234f8-66c6-403c-bb89-277f6b15d0e8" Win64="yes">
                        <File Id="_86ad15cd_c0c9_414a_85ed_a16a6b50ae7f" Name="javax.servlet_3.1.0.v201410161800.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/javax.servlet_3.1.0.v201410161800.jar"/>
                    </Component>
                    <Component Id="_f229b639_7b60_4220_8b06_7dc0dbcc700a" Guid="9379fa4a-56e1-4191-b6b1-317044b04734" Win64="yes">
                        <File Id="_5dea68ee_f323_4941_a016_c4ffa5e9eb68" Name="org.apache.batik.constants_1.9.1.v20180227-1645.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.batik.constants_1.9.1.v20180227-1645.jar"/>
                    </Component>
                    <Component Id="_9d438bff_586f_4a76_a29b_47c306b06d01" Guid="3729a680-08d2-4668-ab10-9c65ead076e6" Win64="yes">
                        <File Id="_dd7036ec_fcc4_4d14_b6cf_b7dd35cf50e7" Name="org.apache.batik.css_1.9.1.v20180313-1559.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.batik.css_1.9.1.v20180313-1559.jar"/>
                    </Component>
                    <Component Id="_73dfe30e_f1e0_4dde_b33b_0682ea98c073" Guid="206b958a-938f-4932-82d8-f5fbd6714594" Win64="yes">
                        <File Id="_b538d9cd_7ef4_483a_8b7e_502d0abdacba" Name="org.apache.batik.i18n_1.9.1.v20180227-1645.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.batik.i18n_1.9.1.v20180227-1645.jar"/>
                    </Component>
                    <Component Id="_7e233872_52a0_478a_b047_e14bfced4a49" Guid="0610bf82-98cf-497a-8e8e-29b88b0ccc91" Win64="yes">
                        <File Id="_74353129_a9a7_423a_bf76_76c9c459290c" Name="org.apache.batik.util_1.9.1.v20180227-1645.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.batik.util_1.9.1.v20180227-1645.jar"/>
                    </Component>
                    <Component Id="_25b16cd2_5cac_4350_9722_e029ba585ba4" Guid="564edac4-5b9c-425c-9ac4-58510d3990e6" Win64="yes">
                        <File Id="_f61e98c2_ba98_4902_b2b9_579054c750ef" Name="org.apache.commons.codec_1.9.0.v20170208-1614.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.commons.codec_1.9.0.v20170208-1614.jar"/>
                    </Component>
                    <Component Id="_8ea12013_f519_40a2_8770_c6707eb0ed53" Guid="b669242c-4d16-48e6-b239-50ed02faca11" Win64="yes">
                        <File Id="_4bf078b3_41fb_4101_8a3c_396fb9e701a1" Name="org.apache.commons.io_2.2.0.v201405211200.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.commons.io_2.2.0.v201405211200.jar"/>
                    </Component>
                    <Component Id="_3a063017_2e35_475c_b7a9_f6ac9c46ac67" Guid="c35b8f67-8b28-4b98-9438-6d997d646446" Win64="yes">
                        <File Id="_fa96ceb0_0c45_4f6e_b5c4_eeb9476130d8" Name="org.apache.commons.jxpath_1.3.0.v200911051830.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.commons.jxpath_1.3.0.v200911051830.jar"/>
                    </Component>
                    <Component Id="_7842a106_2bc0_4953_b3cd_8c656390b0ed" Guid="de359b5a-e033-4176-bf73-f6f359a1806c" Win64="yes">
                        <File Id="_3b48996e_4343_4eb2_a900_c12791b1acb8" Name="org.apache.commons.logging_1.1.1.v201101211721.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.commons.logging_1.1.1.v201101211721.jar"/>
                    </Component>
                    <Component Id="_92b4a0f0_477c_4368_9207_63691822fd37" Guid="ee9a4d5b-d18f-4204-8551-6d548841f99d" Win64="yes">
                        <File Id="_0b78ff72_e7cd_45a4_935e_c22f27a4bdaf" Name="org.apache.felix.gogo.command_1.0.2.v20170914-1324.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.felix.gogo.command_1.0.2.v20170914-1324.jar"/>
                    </Component>
                    <Component Id="_cac795b4_f6ca_45a7_b494_b6b742d3a835" Guid="580f30d5-07d5-48da-b6a0-23519b3f202d" Win64="yes">
                        <File Id="_97b98c6f_a4a0_41fe_b422_1c25ae6d51b4" Name="org.apache.felix.gogo.runtime_1.0.6.v20170914-1324.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.felix.gogo.runtime_1.0.6.v20170914-1324.jar"/>
                    </Component>
                    <Component Id="_a0580a66_2d69_49b2_92e8_7e311c09c6ca" Guid="5d082e4b-b4e9-4550-8cb2-4d9e56bb2651" Win64="yes">
                        <File Id="_c2136c19_1488_45ac_94fd_5a7d5941d273" Name="org.apache.felix.gogo.shell_1.0.0.v20170914-1324.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.felix.gogo.shell_1.0.0.v20170914-1324.jar"/>
                    </Component>
                    <Component Id="_8b7cf01c_34eb_4ece_a691_277058cd0c08" Guid="814b4930-fde0-4240-be68-8bffabb6b473" Win64="yes">
                        <File Id="_5ab419c9_bf9e_4958_924a_90a8f9e97924" Name="org.apache.felix.scr_2.0.14.v20180117-1452.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.felix.scr_2.0.14.v20180117-1452.jar"/>
                    </Component>
                    <Component Id="_036fee43_48b8_49c8_8e79_840a2f07b96b" Guid="918b8beb-f59a-4bc8-ba87-94df1360fdab" Win64="yes">
                        <File Id="_80bc103d_98cb_416b_97de_901e8b09a484" Name="org.apache.httpcomponents.httpclient_4.5.2.v20170210-0925.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.httpcomponents.httpclient_4.5.2.v20170210-0925.jar"/>
                    </Component>
                    <Component Id="_438b1339_1d94_4add_86ce_e1356a015089" Guid="c391a749-dee9-4e13-812b-aa16a460673e" Win64="yes">
                        <File Id="_018f1641_f79f_480d_bd14_e15c8b88ea9e" Name="org.apache.httpcomponents.httpcore_4.4.6.v20170210-0925.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.httpcomponents.httpcore_4.4.6.v20170210-0925.jar"/>
                    </Component>
                    <Component Id="_0b3d2545_4831_4a4d_a506_63a6f713bbf2" Guid="3276fc3f-52a9-4f6c-80fa-cb06a44103f9" Win64="yes">
                        <File Id="_0b275c8d_8306_4772_99b2_06cf8ac730f3" Name="org.apache.jasper.glassfish_2.2.2.v201501141630.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.jasper.glassfish_2.2.2.v201501141630.jar"/>
                    </Component>
                    <Component Id="_594731cb_5646_4c79_abcb_a7ab1f7d62c1" Guid="181b8460-ffdb-4c7e-bbb9-59400a1e8806" Win64="yes">
                        <File Id="_16c99e37_0497_4c19_85bc_b0003033de5a" Name="org.apache.lucene.analyzers-common_7.1.0.v20180122-2126.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.lucene.analyzers-common_7.1.0.v20180122-2126.jar"/>
                    </Component>
                    <Component Id="_c9f94407_c2ad_42d6_8729_928e07250e54" Guid="8bbf4f30-3ae4-4d67-87e8-0065b9389dcc" Win64="yes">
                        <File Id="_4b40a8e7_5ae5_4559_9748_3d40fe3f5af5" Name="org.apache.lucene.analyzers-smartcn_7.1.0.v20180122-2126.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.lucene.analyzers-smartcn_7.1.0.v20180122-2126.jar"/>
                    </Component>
                    <Component Id="_731e9963_d9f2_476f_8b6e_1a6c504ca564" Guid="7b1b68c4-5544-46af-871e-14c8580b1b91" Win64="yes">
                        <File Id="_1bc3dbd6_4a61_4f49_961f_de53508077a0" Name="org.apache.lucene.core_7.1.0.v20171214-1510.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.lucene.core_7.1.0.v20171214-1510.jar"/>
                    </Component>
                    <Component Id="_4eca8970_bfbf_488d_96df_d3b012989b3a" Guid="3a7ca6c9-efe1-4bdd-96a6-fdf9c38a21da" Win64="yes">
                        <File Id="_3eaa2311_5e26_4042_a22a_bf6196517145" Name="org.apache.xmlgraphics_2.2.0.v20180410-1551.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.apache.xmlgraphics_2.2.0.v20180410-1551.jar"/>
                    </Component>
                    <Component Id="_788d1ff3_b53b_474d_91ed_13535a9f7446" Guid="b98fa4f8-9e84-4a96-bd5b-f329cf04565a" Win64="yes">
                        <File Id="_e058948b_1afc_40f6_95bc_74655bf448ed" Name="org.eclipse.core.commands_3.9.100.v20180404-1234.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.commands_3.9.100.v20180404-1234.jar"/>
                    </Component>
                    <Component Id="_c2ffd748_d2f7_4a05_b7ee_9924079046d0" Guid="1897f846-088c-404b-8bac-b02f0a74cb51" Win64="yes">
                        <File Id="_62b1eca3_efec_4f26_b9b6_dec5cd0649d9" Name="org.eclipse.core.contenttype_3.7.0.v20180426-1644.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.contenttype_3.7.0.v20180426-1644.jar"/>
                    </Component>
                    <Component Id="_d767146c_0e15_4372_9bf8_6b37a88f30eb" Guid="f99a6f23-86eb-4783-a287-166307e9b88b" Win64="yes">
                        <File Id="_63401491_5859_4391_97b1_d2fb5312a99e" Name="org.eclipse.core.databinding.beans_1.4.100.v20180403-0944.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.databinding.beans_1.4.100.v20180403-0944.jar"/>
                    </Component>
                    <Component Id="_a20df358_8db2_4ff6_9e5e_82b66a7db6a7" Guid="60eb83be-d138-4614-a35d-4e633923d509" Win64="yes">
                        <File Id="_6e454a3f_0884_40ee_bea8_41933cadfe38" Name="org.eclipse.core.databinding.observable_1.6.200.v20180424-1922.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.databinding.observable_1.6.200.v20180424-1922.jar"/>
                    </Component>
                    <Component Id="_509971fd_03b3_4ec5_9a23_4c62f579ff0b" Guid="7a11a10d-7a3c-45f0-a329-7b951a65a684" Win64="yes">
                        <File Id="_93bbb19a_f3c8_4aa9_ad3c_a203de52471a" Name="org.eclipse.core.databinding.property_1.6.200.v20180403-0944.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.databinding.property_1.6.200.v20180403-0944.jar"/>
                    </Component>
                    <Component Id="_c9fcaa41_9d60_4f8d_95c9_099d8892c4b2" Guid="268c093d-6611-4098-8c9e-e0df37784153" Win64="yes">
                        <File Id="_83fe1fbf_edd6_43d9_a075_3b9e6834a451" Name="org.eclipse.core.databinding_1.6.200.v20180509-1517.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.databinding_1.6.200.v20180509-1517.jar"/>
                    </Component>
                    <Component Id="_d02c1510_0317_4328_8673_921411190fd0" Guid="9098dbbd-5d88-498d-b614-de4351b5f48d" Win64="yes">
                        <File Id="_b6d85828_28b3_4df3_ae40_aad4bb835a2c" Name="org.eclipse.core.expressions_3.6.100.v20180426-1644.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.expressions_3.6.100.v20180426-1644.jar"/>
                    </Component>
                    <Component Id="_e7c7432b_ea19_43eb_a195_3165ca82373e" Guid="8071c318-ec23-4b90-8f4c-5f4437ab7dac" Win64="yes">
                        <File Id="_94b2a2c2_e6df_4159_be46_d0226ac6dae1" Name="org.eclipse.core.filesystem_1.7.100.v20180304-1102.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.filesystem_1.7.100.v20180304-1102.jar"/>
                    </Component>
                    <Component Id="_28b72a9d_7357_4e28_ae65_afe8892ff16b" Guid="45635a3c-c11e-41c5-a133-b3ccca0e48be" Win64="yes">
                        <File Id="_3c8a5b56_21e9_47d1_b29f_d27bacee4e64" Name="org.eclipse.core.jobs_3.10.0.v20180427-1454.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.jobs_3.10.0.v20180427-1454.jar"/>
                    </Component>
                    <Component Id="_099b6601_dac4_4d2c_ab68_3039a8cebadc" Guid="7c6563d1-407a-49df-85f1-554c8c128436" Win64="yes">
                        <File Id="_2b44b7a1_cba4_4564_9ecf_636b49106b57" Name="org.eclipse.core.net_1.3.200.v20180515-0858.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.net_1.3.200.v20180515-0858.jar"/>
                    </Component>
                    <Component Id="_07425e88_a360_41e0_b8cb_66b5e6384435" Guid="483ed1bd-2dfa-443f-a729-f74565ead472" Win64="yes">
                        <File Id="_5b7769de_9f6e_44eb_a864_2c6b0092b7de" Name="org.eclipse.core.resources_3.13.0.v20180512-1138.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.resources_3.13.0.v20180512-1138.jar"/>
                    </Component>
                    <Component Id="_fe575d17_8be3_48ad_aee8_7e592af5c6a5" Guid="a8753350-e26e-4213-880f-5fe008fc4362" Win64="yes">
                        <File Id="_29b79cbc_a784_4d5d_8f22_c7ca2817dc56" Name="org.eclipse.core.runtime_3.14.0.v20180417-0825.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.core.runtime_3.14.0.v20180417-0825.jar"/>
                    </Component>
                    <Component Id="_04041a90_40ea_4874_989a_8ea6608cbc46" Guid="eb07f053-94c9-40ba-8b2f-f1e26ce50822" Win64="yes">
                        <File Id="_b9b4c0cd_a55f_4269_b5c4_f919a185168a" Name="org.eclipse.e4.core.commands_0.12.200.v20180427-0801.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.commands_0.12.200.v20180427-0801.jar"/>
                    </Component>
                    <Component Id="_ae035b00_b6a1_4b9c_9cce_fed58d3d3c63" Guid="9f6108b0-562e-4e5d-ae4c-a81248502994" Win64="yes">
                        <File Id="_0444841a_d204_4dbb_b396_401ab47f5764" Name="org.eclipse.e4.core.contexts_1.7.0.v20180514-1409.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.contexts_1.7.0.v20180514-1409.jar"/>
                    </Component>
                    <Component Id="_22802bd5_f073_4c32_883c_656d30bdb415" Guid="76694bb1-be46-4db9-8c76-feee3384ef3f" Win64="yes">
                        <File Id="_69556e23_dc28_4442_b6ae_318083b23550" Name="org.eclipse.e4.core.di.annotations_1.6.100.v20180427-1454.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.di.annotations_1.6.100.v20180427-1454.jar"/>
                    </Component>
                    <Component Id="_19e025c4_ac0b_4e5d_a221_99feb9814f48" Guid="84a02ec5-20ec-4903-8915-d9d9aeb49d44" Win64="yes">
                        <File Id="_72059ac0_82e8_4456_a0b9_27109e17eefb" Name="org.eclipse.e4.core.di.extensions.supplier_0.15.100.v20180427-1454.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.di.extensions.supplier_0.15.100.v20180427-1454.jar"/>
                    </Component>
                    <Component Id="_fab01fca_be0d_4045_a4b9_9ae25c63836a" Guid="4ea649fa-0610-44cd-a202-9e034fb68c81" Win64="yes">
                        <File Id="_dc9433ba_e264_4920_87e8_d8d566501a69" Name="org.eclipse.e4.core.di.extensions_0.15.100.v20180403-1008.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.di.extensions_0.15.100.v20180403-1008.jar"/>
                    </Component>
                    <Component Id="_d58da8d6_d1c5_42a3_a366_d1b8e89c4d69" Guid="fe727abb-afeb-4162-87c6-505a0f737b01" Win64="yes">
                        <File Id="_c717c3f7_5dc4_466e_9d03_ac732aec7d55" Name="org.eclipse.e4.core.di_1.7.0.v20180427-1454.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.di_1.7.0.v20180427-1454.jar"/>
                    </Component>
                    <Component Id="_98923d4e_803c_4426_a492_b230b2e7e11f" Guid="b679ea11-fa6f-415e-a5bc-515853ea665c" Win64="yes">
                        <File Id="_6a293bac_29ff_4663_b908_6eb7b7c8d169" Name="org.eclipse.e4.core.services_2.1.100.v20180427-1454.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.core.services_2.1.100.v20180427-1454.jar"/>
                    </Component>
                    <Component Id="_405fc911_6ffb_4033_90ad_e9294e7e9d44" Guid="33e572fb-d7e7-41bc-ba0c-e8ac17dc8bcc" Win64="yes">
                        <File Id="_66f793b8_2496_4ba5_9b06_38921e33db5a" Name="org.eclipse.e4.emf.xpath_0.2.100.v20180403-0944.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.emf.xpath_0.2.100.v20180403-0944.jar"/>
                    </Component>
                    <Component Id="_28df8d16_21f8_4c87_8670_09bde0e876ea" Guid="5b3d242a-4e0c-4d4c-a756-250160aee2eb" Win64="yes">
                        <File Id="_4bc87d58_6841_4e95_baeb_85a9dd5e1979" Name="org.eclipse.e4.ui.bindings_0.12.100.v20180509-1220.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.bindings_0.12.100.v20180509-1220.jar"/>
                    </Component>
                    <Component Id="_727bb003_5f6c_403c_931d_004ba2fa7d0e" Guid="3a675185-03fc-4b36-a7f0-43cf8fbbb0a7" Win64="yes">
                        <File Id="_c4f7844f_3607_4d17_b14a_d4082b6d3920" Name="org.eclipse.e4.ui.css.core_0.12.200.v20180417-2309.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.css.core_0.12.200.v20180417-2309.jar"/>
                    </Component>
                    <Component Id="_853ee1bc_7c6d_4ff4_a3ec_d703681c6cf3" Guid="bac5e783-7174-43e4-8788-3d3388189928" Win64="yes">
                        <File Id="_160a3cef_0770_472d_9617_783ff6a1c8f9" Name="org.eclipse.e4.ui.css.swt.theme_0.12.0.v20180403-0944.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.css.swt.theme_0.12.0.v20180403-0944.jar"/>
                    </Component>
                    <Component Id="_c6f7254c_061e_4914_99dd_e91de2c875d7" Guid="44a1e017-4a23-466e-b2f1-01822ef7107b" Win64="yes">
                        <File Id="_d30a8ed0_1627_4ca0_8f7a_62e07819b5db" Name="org.eclipse.e4.ui.css.swt_0.13.100.v20180515-1637.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.css.swt_0.13.100.v20180515-1637.jar"/>
                    </Component>
                    <Component Id="_9ef82d18_68a6_450d_adab_2981dddd6301" Guid="fc245644-7f66-49eb-80fc-94ec0db532f9" Win64="yes">
                        <File Id="_63a55c8b_a4c1_41c7_96d5_37e1c8c01098" Name="org.eclipse.e4.ui.dialogs_1.1.200.v20180403-0945.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.dialogs_1.1.200.v20180403-0945.jar"/>
                    </Component>
                    <Component Id="_d5a72bd8_69e1_43bc_9411_30b621c033da" Guid="87ed65b9-3542-4769-a789-94d2dc059860" Win64="yes">
                        <File Id="_d6589ff0_d21b_4e1e_8bba_79d276c0f448" Name="org.eclipse.e4.ui.di_1.2.200.v20180403-0945.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.di_1.2.200.v20180403-0945.jar"/>
                    </Component>
                    <Component Id="_5df42b63_36a5_436b_ba03_78e5aab6146e" Guid="3b1c42f2-d9be-4d67-b7a8-cb50fb59902a" Win64="yes">
                        <File Id="_52f6507e_93e4_450e_8394_05f8e78c8658" Name="org.eclipse.e4.ui.model.workbench_2.1.0.v20180429-1333.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.model.workbench_2.1.0.v20180429-1333.jar"/>
                    </Component>
                    <Component Id="_a5313366_27f7_4be3_95ed_89afe301bddd" Guid="800dd81e-2931-45ad-b058-11f05da54484" Win64="yes">
                        <File Id="_e55526f3_2192_4ed3_9155_7481c5a589b7" Name="org.eclipse.e4.ui.services_1.3.100.v20180403-0945.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.services_1.3.100.v20180403-0945.jar"/>
                    </Component>
                    <Component Id="_d9b773e7_1d46_4c5b_9287_a55faaaf2e27" Guid="87c9dc0e-88dc-41e2-99b6-be7a5645ea63" Win64="yes">
                        <File Id="_5e5e5fbe_2449_4f7a_bf11_ccf8e71dc56a" Name="org.eclipse.e4.ui.widgets_1.2.100.v20180403-0945.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.widgets_1.2.100.v20180403-0945.jar"/>
                    </Component>
                    <Component Id="_8d5c48a1_3308_4b1c_88fd_81272c29b3c6" Guid="3c493230-c2f6-44f6-a606-054e96d7b04a" Win64="yes">
                        <File Id="_02671e03_3444_4602_be2a_ada24c0e06d3" Name="org.eclipse.e4.ui.workbench.addons.swt_1.3.100.v20180516-2019.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.workbench.addons.swt_1.3.100.v20180516-2019.jar"/>
                    </Component>
                    <Component Id="_f6b11747_1533_45c7_ad7c_bc919dae69a4" Guid="9009b80f-796c-4c30-bae4-4c1414380b3e" Win64="yes">
                        <File Id="_6299bc36_dbbf_436b_9480_57b1098dbaed" Name="org.eclipse.e4.ui.workbench.renderers.swt_0.14.200.v20180516-2019.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.workbench.renderers.swt_0.14.200.v20180516-2019.jar"/>
                    </Component>
                    <Component Id="_fcdcf397_2c52_4098_93e9_591a53c41a72" Guid="da8e4bbc-20e9-4710-897e-e174716aa6f6" Win64="yes">
                        <File Id="_5d331a12_bab8_4f0d_87f3_4c22461cb2d7" Name="org.eclipse.e4.ui.workbench.swt_0.14.200.v20180516-2019.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.workbench.swt_0.14.200.v20180516-2019.jar"/>
                    </Component>
                    <Component Id="_032e120e_36f2_46fa_9923_b0eb405c6ab6" Guid="3115b288-5bb5-4f5e-8bcd-f5e44f3103d9" Win64="yes">
                        <File Id="_a66297a0_5bc4_4acf_a480_33948e88c62b" Name="org.eclipse.e4.ui.workbench3_0.14.100.v20180403-0945.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.workbench3_0.14.100.v20180403-0945.jar"/>
                    </Component>
                    <Component Id="_91a93b4e_18e3_49bb_8bab_8e863dd8c058" Guid="013754f7-6daf-4dcf-87f7-07e5c88e3c8e" Win64="yes">
                        <File Id="_1b41eeb8_6782_494f_a4f7_85ea592c0268" Name="org.eclipse.e4.ui.workbench_1.6.0.v20180516-2019.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.e4.ui.workbench_1.6.0.v20180516-2019.jar"/>
                    </Component>
                    <Component Id="_6b0a0dda_4061_4d36_9d32_2e3226c1f6cc" Guid="00c92dbd-815e-4cf0-9e8d-ff009fa0d03f" Win64="yes">
                        <File Id="_f16d41fd_dcd7_4d20_8213_205d2b528373" Name="org.eclipse.ecf.filetransfer_5.0.100.v20180301-0132.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.filetransfer_5.0.100.v20180301-0132.jar"/>
                    </Component>
                    <Component Id="_c7953f76_d5ea_461a_a4c0_29c88fad4e87" Guid="5b2c5808-d259-413d-a3ce-ca163f2083e1" Win64="yes">
                        <File Id="_96c0a8cb_c454_4848_8d8e_11e50ec024a0" Name="org.eclipse.ecf.identity_3.9.0.v20180426-1936.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.identity_3.9.0.v20180426-1936.jar"/>
                    </Component>
                    <Component Id="_396ff9fa_7635_4dcc_8a19_35bb96db2008" Guid="7205d14f-1b58-423a-94f8-691bbec37635" Win64="yes">
                        <File Id="_5be9b1ef_3874_4c00_a912_93dfb042b2d7" Name="org.eclipse.ecf.provider.filetransfer.httpclient4.ssl_1.1.100.v20180301-0132.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.provider.filetransfer.httpclient4.ssl_1.1.100.v20180301-0132.jar"/>
                    </Component>
                    <Component Id="_8133695c_c09c_4767_ba6e_4f48574e3bb5" Guid="e161370b-f0e6-4d48-873c-acb011852c02" Win64="yes">
                        <File Id="_4aad8c49_9fc7_4b82_b00b_980a046ede6a" Name="org.eclipse.ecf.provider.filetransfer.httpclient4_1.1.300.v20180301-0132.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.provider.filetransfer.httpclient4_1.1.300.v20180301-0132.jar"/>
                    </Component>
                    <Component Id="_015a86bb_e54c_48f3_9401_00e5126cc2e5" Guid="d4603326-ef67-450c-8b13-13e2a02f76d6" Win64="yes">
                        <File Id="_bd164d0e_4947_4745_b41f_c845728ec845" Name="org.eclipse.ecf.provider.filetransfer.ssl_1.0.100.v20180301-0132.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.provider.filetransfer.ssl_1.0.100.v20180301-0132.jar"/>
                    </Component>
                    <Component Id="_336655c4_6417_4796_9fe3_54929c510251" Guid="e818d0ce-4639-4c21-a5d5-a62a1de0d317" Win64="yes">
                        <File Id="_dbe59c4f_dc58_4845_a1af_673a02778921" Name="org.eclipse.ecf.provider.filetransfer_3.2.400.v20180306-0429.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.provider.filetransfer_3.2.400.v20180306-0429.jar"/>
                    </Component>
                    <Component Id="_355d86ef_7f2a_47f9_80e9_eae932bf0c13" Guid="5015c318-32dc-4833-b63d-455f45a6c5cc" Win64="yes">
                        <File Id="_f7bc4279_1819_4eca_b534_7126940a9238" Name="org.eclipse.ecf.ssl_1.2.100.v20180301-0132.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf.ssl_1.2.100.v20180301-0132.jar"/>
                    </Component>
                    <Component Id="_ec991bad_fcf0_47eb_ab0b_8b22d46bb0c9" Guid="6cbd919a-f957-4a9f-bc91-b44688b71835" Win64="yes">
                        <File Id="_3a770865_5f6b_465d_9174_d37b9efb95ee" Name="org.eclipse.ecf_3.9.0.v20180402-2015.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ecf_3.9.0.v20180402-2015.jar"/>
                    </Component>
                    <Component Id="_58c2fbff_1ece_4600_9ee4_13f8eaa89020" Guid="3262eca3-689e-4005-939b-eba915980d26" Win64="yes">
                        <File Id="_a2dcc2cc_11a1_4fc3_95da_b70dd7f936dc" Name="org.eclipse.emf.common_2.14.0.v20180527-1134.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.emf.common_2.14.0.v20180527-1134.jar"/>
                    </Component>
                    <Component Id="_4ff37af5_471a_45f8_8ca2_2cb5c83c76f1" Guid="7b24a4fc-6398-4f5e-8f01-5f42c9a6ac14" Win64="yes">
                        <File Id="_45e9a70d_fae4_4cef_99b6_ae34b1a263ae" Name="org.eclipse.emf.ecore.change_2.12.0.v20180125-1130.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.emf.ecore.change_2.12.0.v20180125-1130.jar"/>
                    </Component>
                    <Component Id="_6a3f29fb_9df7_4005_b298_9aba5af48ec6" Guid="80dabb09-ff59-4025-abdd-001555ec75c0" Win64="yes">
                        <File Id="_ff9dcf75_6588_43e2_b95c_5fcee9f65b76" Name="org.eclipse.emf.ecore.xmi_2.14.0.v20180129-1548.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.emf.ecore.xmi_2.14.0.v20180129-1548.jar"/>
                    </Component>
                    <Component Id="_c2e0d194_e88a_4ae6_b886_83d201c1034c" Guid="8f8b3765-8a32-44b8-8c7d-17b5f9118952" Win64="yes">
                        <File Id="_ff966914_e40c_415c_b66b_77f1d3a2db56" Name="org.eclipse.emf.ecore_2.14.0.v20180529-1144.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.emf.ecore_2.14.0.v20180529-1144.jar"/>
                    </Component>
                    <Component Id="_d2367b04_a69f_4bf7_ad7b_84b4239dbb62" Guid="46ff9734-7f53-494b-b2d8-008e24df7b83" Win64="yes">
                        <File Id="_f3a29869_f04d_4b6e_bbf5_02ae3539fb32" Name="org.eclipse.equinox.app_1.3.500.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.app_1.3.500.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_fd0c333c_915e_4864_a042_695bcfc06b95" Guid="cae6e285-e526-4c47-a7aa-49d051aba94a" Win64="yes">
                        <File Id="_0a9023e7_8556_4357_8938_eaac06f2e6d3" Name="org.eclipse.equinox.bidi_1.1.100.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.bidi_1.1.100.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_318b9908_5d0f_4f91_8af5_0f74ed811518" Guid="30176020-dbf2-436b-aa1a-1f4039c0c8e0" Win64="yes">
                        <File Id="_8c8cd4c1_81a8_4047_8d8f_557fe0a9ec0b" Name="org.eclipse.equinox.common_3.10.0.v20180412-1130.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.common_3.10.0.v20180412-1130.jar"/>
                    </Component>
                    <Component Id="_6c1264cd_df7f_47e0_a2ed_5e5cc060fd01" Guid="ddaf5ef5-eec3-4e37-abcd-c4013688ce7f" Win64="yes">
                        <File Id="_5baa2e41_7f0a_4c19_8d62_7fc4cd560ece" Name="org.eclipse.equinox.concurrent_1.1.100.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.concurrent_1.1.100.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_adaf496a_488f_4e07_9df4_dea6c8cf0565" Guid="98150ced-8753-4874-88ff-75b1a29d4a5f" Win64="yes">
                        <File Id="_ce544216_67f9_4c2b_98a3_54dcb8639792" Name="org.eclipse.equinox.console_1.3.0.v20180119-0630.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.console_1.3.0.v20180119-0630.jar"/>
                    </Component>
                    <Component Id="_22519e1e_c911_4f88_a0aa_34e09abb0c00" Guid="9dea6519-3339-4302-9c56-1ccb62d232de" Win64="yes">
                        <File Id="_b948825e_250f_439f_a8f6_997a778da9e5" Name="org.eclipse.equinox.ds_1.5.100.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.ds_1.5.100.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_072e1de2_8762_4136_861d_4924b6d61bdc" Guid="f08e1ab4-cff9-4fd3-a7bf-0cbc6053be41" Win64="yes">
                        <File Id="_a227754f_d9ea_4fe8_8571_1aa644007ea0" Name="org.eclipse.equinox.event_1.4.200.v20180426-0845.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.event_1.4.200.v20180426-0845.jar"/>
                    </Component>
                    <Component Id="_c7bfaedb_143d_4c09_861d_d1461436931c" Guid="9dae4109-d352-485d-80b8-95c96766c784" Win64="yes">
                        <File Id="_917c2fba_724a_46a4_872e_63982b2b57b5" Name="org.eclipse.equinox.frameworkadmin.equinox_1.1.0.v20180512-1128.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.frameworkadmin.equinox_1.1.0.v20180512-1128.jar"/>
                    </Component>
                    <Component Id="_6769aaa0_6bc0_48d6_aff1_012114c0cddc" Guid="89738c23-8380-419f-89f2-bd3b550dcc02" Win64="yes">
                        <File Id="_ce46851c_9e4f_48d1_828d_4be1adf1666f" Name="org.eclipse.equinox.frameworkadmin_2.1.0.v20180131-0638.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.frameworkadmin_2.1.0.v20180131-0638.jar"/>
                    </Component>
                    <Component Id="_affa4252_e7b2_4289_ab0c_f8b8b7f95a47" Guid="26fd1829-fa8c-480c-b66e-ef539ed9dacd" Win64="yes">
                        <File Id="_84c2f148_854f_4a54_b3a8_ab0efed9fb1d" Name="org.eclipse.equinox.http.jetty_3.6.0.v20180328-1442.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.http.jetty_3.6.0.v20180328-1442.jar"/>
                    </Component>
                    <Component Id="_50b81a2f_bcee_47e2_a860_c5ace989b914" Guid="bf28c189-7378-47a9-a259-724ccdd3b6f9" Win64="yes">
                        <File Id="_10209027_6cc4_47ea_8648_c5866b93f2db" Name="org.eclipse.equinox.http.registry_1.1.500.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.http.registry_1.1.500.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_a33ed8b0_6080_49bc_afec_c2aece21465b" Guid="452ff193-f707-48a0-8aa4-d499e67636b1" Win64="yes">
                        <File Id="_3fabcec2_5338_487a_b32d_20d36d46b66c" Name="org.eclipse.equinox.http.servlet_1.5.0.v20180501-1936.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.http.servlet_1.5.0.v20180501-1936.jar"/>
                    </Component>
                    <Component Id="_975807d8_1ced_441d_9930_447c103986bc" Guid="848b72bc-070b-4aaf-a4c4-c4cbc0f30df1" Win64="yes">
                        <File Id="_f2874d8e_c608_4c3e_8556_5999596c3ffc" Name="org.eclipse.equinox.jsp.jasper.registry_1.1.0.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.jsp.jasper.registry_1.1.0.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_fbecb37c_45a1_49f3_9189_284854ff0145" Guid="0c828b53-0597-4fc7-b98a-22c7643b5a44" Win64="yes">
                        <File Id="_2b440cb0_cfde_4fd7_b610_2eb5e87e1520" Name="org.eclipse.equinox.jsp.jasper_1.1.0.v20180501-1958.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.jsp.jasper_1.1.0.v20180501-1958.jar"/>
                    </Component>
                    <Directory Id="_3543061f_2de2_4cec_b9a3_a7779a2f89eb" Name="org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200">
                        <Component Id="_15d17ea7_e48f_4b5a_8224_62c4d462301d" Guid="cfdc044e-82b5-41ac-aa83-6e5bf4cb9fea" Win64="yes">
                            <File Id="_fec4ed04_7045_43b3_a8e9_036d718ed7f8" Name="about.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200/about.html"/>
                        </Component>
                        <Component Id="_223de143_3816_4af9_bd40_38458611d398" Guid="a5ecb41f-c316-41d7-9340-c3928f215db3" Win64="yes">
                            <File Id="_157803c9_4c2c_4955_a7ab_a336c86f15a9" Name="eclipse_1705.dll" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200/eclipse_1705.dll"/>
                        </Component>
                        <Component Id="_1de7e6d6_21f2_4325_ad32_46c75ef7af87" Guid="eef090e3-b3ee-429f-8297-bfaf5d374dee" Win64="yes">
                            <File Id="_84a19c76_4b92_4fe0_acea_1358b37bdd4f" Name="launcher.win32.win32.x86_64.properties" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200/launcher.win32.win32.x86_64.properties"/>
                        </Component>
                        <Directory Id="_fdec5c25_8fb0_4d74_a79f_fab7a531617f" Name="META-INF">
                            <Component Id="_55608a57_829c_4e45_b998_af9ba4514a76" Guid="7569f2d1-5678-4506-b844-752089d2b7e8" Win64="yes">
                                <File Id="_7872e11b_dfa8_4ec0_8e88_a5000bebf338" Name="ECLIPSE_.RSA" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200/META-INF/ECLIPSE_.RSA"/>
                            </Component>
                            <Component Id="_113319af_aea3_4812_9a96_194b09a9bbb0" Guid="4e259eb2-fe01-4048-b864-46f96d8a99d9" Win64="yes">
                                <File Id="_d38f6546_84ef_4169_9a2a_41432a1692ff" Name="ECLIPSE_.SF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200/META-INF/ECLIPSE_.SF"/>
                            </Component>
                            <Component Id="_3769ae6f_f3ff_4980_8ab6_79501b48b8a9" Guid="81f9d24e-8a9a-46d2-89b7-ce3646919754" Win64="yes">
                                <File Id="_d0739df5_9938_44b2_8f49_1726d1e6f17d" Name="MANIFEST.MF" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.700.v20180518-1200/META-INF/MANIFEST.MF"/>
                            </Component>
                        </Directory>
                    </Directory>
                    <Component Id="_c493a45d_91d3_402f_a0f0_a70fb2db6214" Guid="c7d9e398-2a7c-4a81-90ff-55892a5747ee" Win64="yes">
                        <File Id="_1a69df2a_e30e_4f01_bc9f_d64a5ea37be6" Name="org.eclipse.equinox.launcher_1.5.0.v20180512-1130.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.launcher_1.5.0.v20180512-1130.jar"/>
                    </Component>
                    <Component Id="_5714ba5a_f667_40b5_b715_2e0d819a8ff8" Guid="218c25cc-399c-4a28-8296-6d1c1bab24fd" Win64="yes">
                        <File Id="_5d17a9c0_6641_4b10_ab59_cfb3ed413349" Name="org.eclipse.equinox.p2.artifact.repository_1.2.0.v20180413-0846.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.artifact.repository_1.2.0.v20180413-0846.jar"/>
                    </Component>
                    <Component Id="_1abcafa0_31c6_47fe_98c9_c9f2f681bad8" Guid="59a93944-5159-4537-a90c-330e884f5d5e" Win64="yes">
                        <File Id="_9dab5e84_68e4_414d_bc59_2484d028a23f" Name="org.eclipse.equinox.p2.console_1.1.0.v20180130-1836.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.console_1.1.0.v20180130-1836.jar"/>
                    </Component>
                    <Component Id="_d5cc17ae_4c94_4525_936b_cf06ecb823e1" Guid="6d43a9b7-9215-4451-82ef-3cda2169e2dd" Win64="yes">
                        <File Id="_e74e38b0_8b73_4799_9bb5_cab80d51c188" Name="org.eclipse.equinox.p2.core_2.5.0.v20180512-1128.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.core_2.5.0.v20180512-1128.jar"/>
                    </Component>
                    <Component Id="_1c42a1e6_8f9d_4163_a2e7_6167f96affcb" Guid="23d02b11-e021-4b1a-a610-288f2263f27f" Win64="yes">
                        <File Id="_ea44b9d7_7a2c_4bba_80d6_b499328fb0c2" Name="org.eclipse.equinox.p2.director.app_1.1.0.v20180502-1549.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.director.app_1.1.0.v20180502-1549.jar"/>
                    </Component>
                    <Component Id="_d29d55e1_7d87_44c6_8d31_343e29f8f338" Guid="d4970e3d-a524-48e3-9b4c-30165a9d7f53" Win64="yes">
                        <File Id="_3e763249_163f_4d8c_af11_a2cc06e1b057" Name="org.eclipse.equinox.p2.directorywatcher_1.2.0.v20180130-1836.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.directorywatcher_1.2.0.v20180130-1836.jar"/>
                    </Component>
                    <Component Id="_994c62e0_9647_4ec3_9962_e6de04168860" Guid="0b856ad4-4931-4a48-abff-d86b2cf731f4" Win64="yes">
                        <File Id="_b6d6e741_f64b_408c_b34d_6a5184927af3" Name="org.eclipse.equinox.p2.director_2.4.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.director_2.4.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_b20026cf_b5a2_4077_9166_bba44e9770a8" Guid="9dedd3ad-38e9-494f-a9fb-cd6f9efd7943" Win64="yes">
                        <File Id="_f40bfee7_623a_4fd4_ac31_3a3695baaf14" Name="org.eclipse.equinox.p2.engine_2.6.0.v20180409-1209.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.engine_2.6.0.v20180409-1209.jar"/>
                    </Component>
                    <Component Id="_861e0a92_d371_40e2_ae90_4e6912a01266" Guid="81fa62a6-aae6-4ca8-b279-5dcd2028ac96" Win64="yes">
                        <File Id="_0d236b98_c0ba_45bf_9793_89ef4b6effe6" Name="org.eclipse.equinox.p2.extensionlocation_1.3.0.v20180103-0918.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.extensionlocation_1.3.0.v20180103-0918.jar"/>
                    </Component>
                    <Component Id="_01d64f2e_aa9d_4c17_a2a0_915370eab1f1" Guid="9255979e-b817-42bc-b64c-a11f7268857e" Win64="yes">
                        <File Id="_303f5dc4_6acc_48ec_a1df_e334b1938af1" Name="org.eclipse.equinox.p2.garbagecollector_1.1.0.v20180103-0918.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.garbagecollector_1.1.0.v20180103-0918.jar"/>
                    </Component>
                    <Component Id="_5ca65a73_7204_427f_9008_e79df8db14f1" Guid="cb1fa679-a8d0-4e12-a765-c2c6eb245991" Win64="yes">
                        <File Id="_89de3dc0_cc28_4e16_b64c_3ffd053a4dee" Name="org.eclipse.equinox.p2.jarprocessor_1.1.0.v20180512-1128.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.jarprocessor_1.1.0.v20180512-1128.jar"/>
                    </Component>
                    <Component Id="_18125d15_81fc_463a_a408_5bf593c7f0df" Guid="a36042ee-be64-466d-befa-7ef38228fb27" Win64="yes">
                        <File Id="_f9f04b3c_0965_425e_bd8b_63d51281e203" Name="org.eclipse.equinox.p2.metadata.repository_1.3.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.metadata.repository_1.3.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_6dfd875a_4c94_4e70_b0a6_303235652401" Guid="437e0072-d911-4f67-a6e1-ee2465a2ecf4" Win64="yes">
                        <File Id="_060d2ea8_06c0_4c65_b30c_1a9c8316c2cf" Name="org.eclipse.equinox.p2.metadata_2.4.0.v20180320-1220.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.metadata_2.4.0.v20180320-1220.jar"/>
                    </Component>
                    <Component Id="_ad48ec10_e40c_4bb8_a864_77a444226ee0" Guid="6cd5c899-592c-4128-94eb-f156a36f156a" Win64="yes">
                        <File Id="_2c9f8e71_e228_42e5_b97b_289080f1a4f7" Name="org.eclipse.equinox.p2.operations_2.5.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.operations_2.5.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_198a0fdc_89e6_4136_9dc8_e442ed457028" Guid="d6602dcf-babf-40a2-a2e6-3d11081abc16" Win64="yes">
                        <File Id="_f2e54b98_f306_41d7_a449_3c546f83319b" Name="org.eclipse.equinox.p2.publisher.eclipse_1.3.0.v20180320-1332.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.publisher.eclipse_1.3.0.v20180320-1332.jar"/>
                    </Component>
                    <Component Id="_771f759d_6627_4ee2_84fd_b1ee6fca47f3" Guid="22221a22-550d-4615-97b2-27c46ba62fc7" Win64="yes">
                        <File Id="_9711dba5_af56_4a5f_acb3_e67bf659ff62" Name="org.eclipse.equinox.p2.publisher_1.5.0.v20180320-1332.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.publisher_1.5.0.v20180320-1332.jar"/>
                    </Component>
                    <Component Id="_8338e5d4_ec09_41bb_b598_443be3132be7" Guid="65f591d2-0f01-47b3-a421-a7d907eddcca" Win64="yes">
                        <File Id="_e29b2999_348b_43c6_8320_11daa9ca8f1e" Name="org.eclipse.equinox.p2.reconciler.dropins_1.2.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.reconciler.dropins_1.2.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_0d79dac8_9f23_4038_a434_6f92e14d0c94" Guid="81c659f4-9a32-4816-a39d-91c79e39b50b" Win64="yes">
                        <File Id="_459004e7_0eda_4ba9_a99f_2dd0dbc0172f" Name="org.eclipse.equinox.p2.repository_2.4.0.v20180512-1128.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.repository_2.4.0.v20180512-1128.jar"/>
                    </Component>
                    <Component Id="_1a01e679_1fce_4fdd_93fb_f6bd8c20e8ca" Guid="5ab6be83-63e4-42a6-aeba-552661278a28" Win64="yes">
                        <File Id="_be4e29f1_c16a_45f5_a47b_a544a0444f43" Name="org.eclipse.equinox.p2.touchpoint.eclipse_2.2.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.touchpoint.eclipse_2.2.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_79ad33c1_c61a_46e3_8c06_7d4cfe09d9e2" Guid="05d741c0-d2cc-4037-ba77-40d4cfb0da67" Win64="yes">
                        <File Id="_f83d9240_de10_4930_814b_6f7cad520ceb" Name="org.eclipse.equinox.p2.touchpoint.natives_1.3.0.v20180512-1128.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.touchpoint.natives_1.3.0.v20180512-1128.jar"/>
                    </Component>
                    <Component Id="_45620c94_073c_4486_80cd_93a79924a4d3" Guid="6e24bb3e-bac2-425d-8583-0457ee4b7a4d" Win64="yes">
                        <File Id="_cdd86ef1_580c_4ff6_9713_94b5c059e0b2" Name="org.eclipse.equinox.p2.transport.ecf_1.2.0.v20180222-0922.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.transport.ecf_1.2.0.v20180222-0922.jar"/>
                    </Component>
                    <Component Id="_3c628376_55ea_4f50_b6e2_75a9978c9d9b" Guid="709f6178-b14b-44a8-b178-2138452855e3" Win64="yes">
                        <File Id="_e49a6302_207a_4600_b686_aab11c8cf4b8" Name="org.eclipse.equinox.p2.ui.sdk.scheduler_1.4.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.ui.sdk.scheduler_1.4.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_e575d110_a69f_45e9_b4f6_5ed0ff61eead" Guid="84da0f20-8b46-48af-80b2-b17c90899cda" Win64="yes">
                        <File Id="_49f1f4e9_18ae_476e_a311_dcaac57db746" Name="org.eclipse.equinox.p2.ui.sdk_1.1.0.v20180103-0918.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.ui.sdk_1.1.0.v20180103-0918.jar"/>
                    </Component>
                    <Component Id="_7f9468d5_2f25_46df_800c_992852449b43" Guid="818a0893-407d-4671-8c9f-53ea6f5d6fe2" Win64="yes">
                        <File Id="_ef54a4cb_b206_457e_8b6d_1d18febfa461" Name="org.eclipse.equinox.p2.ui_2.5.100.v20180425-1343.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.ui_2.5.100.v20180425-1343.jar"/>
                    </Component>
                    <Component Id="_11a5be39_7e13_427d_b334_386b745a28f6" Guid="ae536ec6-ee9f-492a-bffc-907dc6f24271" Win64="yes">
                        <File Id="_8f7e2f0a_b7ab_4ec1_addc_9a1b13cd68fa" Name="org.eclipse.equinox.p2.updatechecker_1.2.0.v20180302-1057.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.p2.updatechecker_1.2.0.v20180302-1057.jar"/>
                    </Component>
                    <Component Id="_3a7a0ea0_495a_4fc7_8b05_1a3da35f98af" Guid="857a2b98-a8c9-451b-bd6a-80346b632f2c" Win64="yes">
                        <File Id="_33490275_64e4_425b_a7ec_dd672e091c57" Name="org.eclipse.equinox.preferences_3.7.100.v20180510-1129.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.preferences_3.7.100.v20180510-1129.jar"/>
                    </Component>
                    <Component Id="_f11180eb_8624_4d58_bacb_abd296606e5c" Guid="aa7cbe15-3287-4ef7-b06a-464e60bb450d" Win64="yes">
                        <File Id="_043425b9_53d3_4c32_9a48_d17a778eee14" Name="org.eclipse.equinox.registry_3.8.0.v20180426-1327.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.registry_3.8.0.v20180426-1327.jar"/>
                    </Component>
                    <Component Id="_007e2461_d4a8_47d2_b14c_191a4d400fa6" Guid="cf0cea3c-87e7-4d80-a48f-f0d2d6641582" Win64="yes">
                        <File Id="_def0363c_9914_491e_8b59_e9928c2aacd7" Name="org.eclipse.equinox.security.ui_1.2.0.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.security.ui_1.2.0.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_94e6b1f1_762f_4c84_b98b_3c0885430000" Guid="14f7e8b2-1ac8-4791-8ed7-835fd8e8cc55" Win64="yes">
                        <File Id="_14f09738_ab25_4fd7_9934_b7c0816e65bd" Name="org.eclipse.equinox.security.win32.x86_64_1.1.0.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.security.win32.x86_64_1.1.0.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_b5f48292_35c5_4c3f_8e02_789d092d96a0" Guid="3ad8d35c-955f-46dc-8226-fe47816d8ff2" Win64="yes">
                        <File Id="_8bd925ba_8105_4787_8519_68953c3f0cae" Name="org.eclipse.equinox.security_1.2.400.v20171221-2204.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.security_1.2.400.v20171221-2204.jar"/>
                    </Component>
                    <Component Id="_e648b9c7_d682_4d8c_852f_2847c9043ab3" Guid="09c2224c-264f-42d4-9ccc-b393d3fb3e4b" Win64="yes">
                        <File Id="_e0e7f2d5_0b3b_4e5b_9f28_2cabfcafee4e" Name="org.eclipse.equinox.simpleconfigurator.manipulator_2.1.0.v20180103-0918.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.simpleconfigurator.manipulator_2.1.0.v20180103-0918.jar"/>
                    </Component>
                    <Component Id="_9f3cf1ed_d0e1_4b56_b0b1_b93cadbf2431" Guid="2c050306-d942-4432-9da7-69c9c722b5b8" Win64="yes">
                        <File Id="_0d60fe42_2864_4501_92d8_6993c5318eab" Name="org.eclipse.equinox.simpleconfigurator_1.3.0.v20180502-1828.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.simpleconfigurator_1.3.0.v20180502-1828.jar"/>
                    </Component>
                    <Component Id="_073d1a5a_a701_4cc8_8b9f_6d1ff1058b2b" Guid="56a488fd-c40e-40f8-a51b-969bbfbf87f1" Win64="yes">
                        <File Id="_0fb70fcf_6ab4_4e46_af3f_4862406eddf5" Name="org.eclipse.equinox.util_1.1.0.v20180419-0833.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.equinox.util_1.1.0.v20180419-0833.jar"/>
                    </Component>
                    <Component Id="_9230aa91_dbfe_4ad9_914f_67b31ab3f88f" Guid="76b38c09-cdf5-4dc8-a701-a562c1439827" Win64="yes">
                        <File Id="_834998f1_2dba_4343_876f_9cfc35bc1957" Name="org.eclipse.help.base_4.2.200.v20180611-0500.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.help.base_4.2.200.v20180611-0500.jar"/>
                    </Component>
                    <Component Id="_88674d3b_1c78_4e31_9885_ecd6623e256f" Guid="4d7cd7a7-4ca6-436b-9a13-f12704961ffd" Win64="yes">
                        <File Id="_006aea21_cb88_47d3_9fda_58aeb9350fed" Name="org.eclipse.help.ui_4.1.100.v20180418-0908.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.help.ui_4.1.100.v20180418-0908.jar"/>
                    </Component>
                    <Component Id="_7f4e7380_cdf2_4e5c_bb26_470cd598dc12" Guid="8cc5e01b-45c3-42e6-8854-4b9e1f4c285e" Win64="yes">
                        <File Id="_bb6c156a_3196_4afa_841d_9e8a3d95000c" Name="org.eclipse.help.webapp_3.9.100.v20180528-0907.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.help.webapp_3.9.100.v20180528-0907.jar"/>
                    </Component>
                    <Component Id="_883e32f8_a0ab_49b8_9b3b_8696ef3dcbea" Guid="c7dd4659-c2a7-46df-bdb6-637511dfce1b" Win64="yes">
                        <File Id="_c4afb9e0_31a1_43f3_9f54_ef6d6130a99f" Name="org.eclipse.help_3.8.100.v20180512-1136.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.help_3.8.100.v20180512-1136.jar"/>
                    </Component>
                    <Component Id="_718c37ef_c59b_4123_aafb_e03e2580e0e5" Guid="229c9a1e-b875-4996-977d-05dc58c37d6c" Win64="yes">
                        <File Id="_878d4e40_f6a1_49ee_a2a2_f3eab56b3270" Name="org.eclipse.jetty.continuation_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.continuation_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_df7452d5_5c74_4472_b47d_da57f00ab33f" Guid="c531a894-a3de-4799-9927-86643d4f3b97" Win64="yes">
                        <File Id="_cd6ca920_7943_4554_82a4_f08fe6e658c2" Name="org.eclipse.jetty.http_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.http_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_37032471_082d_461c_a45d_484924b95fce" Guid="ce9dc723-5fe0-4421-9be6-98bf444d7101" Win64="yes">
                        <File Id="_48d0226a_945f_4042_9995_f1b247d84805" Name="org.eclipse.jetty.io_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.io_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_c81636f9_2e99_4c03_af85_7017d566baa3" Guid="09c8f165-83de-45b7-87b3-c5adada33bfb" Win64="yes">
                        <File Id="_f49cf7df_005a_48d4_9fa0_16e1ce7efd78" Name="org.eclipse.jetty.security_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.security_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_5309a965_a04b_428d_9440_0d15d75ed4a3" Guid="eea6a208-9121-4f84-9ea1-db182cf04511" Win64="yes">
                        <File Id="_40a67af5_2b54_4dc1_90e8_36a27db53e49" Name="org.eclipse.jetty.server_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.server_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_011f20e2_0e88_425f_a50b_d106a8cfdfae" Guid="fc8ac498-caf3-41b1-b726-0d1344b89356" Win64="yes">
                        <File Id="_20ae85af_586e_4bf6_813b_16e43146b261" Name="org.eclipse.jetty.servlet_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.servlet_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_a26b3cbf_38a2_4cf7_b670_856705e04028" Guid="d90fea5b-a3a6-426f-9f1f-3ac7d5b2ff1e" Win64="yes">
                        <File Id="_3faead11_8581_4014_89ba_dcf73956560d" Name="org.eclipse.jetty.util_9.4.10.v20180503.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jetty.util_9.4.10.v20180503.jar"/>
                    </Component>
                    <Component Id="_50b5e85b_39fa_4de9_a9e1_27ac42536fe8" Guid="4edb8254-970b-436e-a7db-5342e46511cf" Win64="yes">
                        <File Id="_7ae0c77a_b0b5_44bf_aecb_bc3ca9f42d10" Name="org.eclipse.jface.databinding_1.8.200.v20180403-0945.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jface.databinding_1.8.200.v20180403-0945.jar"/>
                    </Component>
                    <Component Id="_2891910c_9f4a_4be7_ae0d_bc51851a08cf" Guid="fed207f4-4157-41b3-97ce-97adf4508f41" Win64="yes">
                        <File Id="_e25cf416_54e2_46b7_ad84_5eb671624003" Name="org.eclipse.jface.text_3.13.0.v20180527-1819.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jface.text_3.13.0.v20180527-1819.jar"/>
                    </Component>
                    <Component Id="_795e4311_bcf8_4719_9f3c_9766353593df" Guid="dfd893e0-ba5a-44f2-b800-f36aab8d91bf" Win64="yes">
                        <File Id="_79e3fce4_c0c7_4322_bd0a_04a332140bb0" Name="org.eclipse.jface_3.14.0.v20180423-0714.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.jface_3.14.0.v20180423-0714.jar"/>
                    </Component>
                    <Component Id="_9a401911_2cad_4190_b5c7_86d54ad28312" Guid="0aa46731-b378-4509-af88-60d7b97e5fa3" Win64="yes">
                        <File Id="_b4c3b386_b54e_4302_9bc6_be35b0e8abf0" Name="org.eclipse.osgi.compatibility.state_1.1.100.v20180331-1743.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.osgi.compatibility.state_1.1.100.v20180331-1743.jar"/>
                    </Component>
                    <Component Id="_a845eafc_3b1d_4324_b61d_65801d9f3934" Guid="ee4cb038-4014-4b9b-b7e3-3f376e0df159" Win64="yes">
                        <File Id="_e9a2ee64_f41c_449c_ba14_ad9ce5a0664e" Name="org.eclipse.osgi.services_3.7.0.v20180223-1712.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.osgi.services_3.7.0.v20180223-1712.jar"/>
                    </Component>
                    <Component Id="_d46e53b9_746d_41b8_8d5a_6539e9eff230" Guid="b3ce77de-41df-48dd-ae04-797150546d61" Win64="yes">
                        <File Id="_9e18f4e3_ea1c_44c0_8d79_069c748ecf90" Name="org.eclipse.osgi.util_3.5.0.v20180219-1511.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.osgi.util_3.5.0.v20180219-1511.jar"/>
                    </Component>
                    <Component Id="_c6ef3fdb_2dca_4676_ae24_8ff67b9ee82e" Guid="757e93fd-fa39-4d63-bb7d-9961795c5e92" Win64="yes">
                        <File Id="_a7eabd7d_42c2_48e5_bb5b_5d2f2e5a4667" Name="org.eclipse.osgi_3.13.0.v20180409-1500.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.osgi_3.13.0.v20180409-1500.jar"/>
                    </Component>
                    <Component Id="_626f4d18_76dc_4fef_8f2a_21d1c18a2bf2" Guid="27b4f550-42f4-4de3-b2c5-c34c223881df" Win64="yes">
                        <File Id="_a3d93def_1aa8_4b2b_aa26_6ea113398780" Name="org.eclipse.rcp_4.8.0.v20180611-0500.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.rcp_4.8.0.v20180611-0500.jar"/>
                    </Component>
                    <Component Id="_168adbc6_2d62_416c_af96_c877f4d0a2e2" Guid="e6b2a0e1-53e2-457f-9d97-6d4540a7712e" Win64="yes">
                        <File Id="_18920360_3573_4b51_9f6d_860cfcff5743" Name="org.eclipse.swt.win32.win32.x86_64_3.107.0.v20180611-0422.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.swt.win32.win32.x86_64_3.107.0.v20180611-0422.jar"/>
                    </Component>
                    <Component Id="_259572b9_8a63_4171_bbbf_598538ea569f" Guid="1e3c9654-4f03-4a8f-8820-745f235fe455" Win64="yes">
                        <File Id="_0e9f086e_fc45_422f_aafa_fad1e5e54b88" Name="org.eclipse.swt_3.107.0.v20180611-0422.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.swt_3.107.0.v20180611-0422.jar"/>
                    </Component>
                    <Component Id="_9f494996_9efc_4140_bc65_96422edf44e8" Guid="9a738d68-776b-40e8-b51c-424fafd0b6f8" Win64="yes">
                        <File Id="_8a1d4d9e_0015_4b45_a054_47ce23480de7" Name="org.eclipse.text_3.6.300.v20180430-1330.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.text_3.6.300.v20180430-1330.jar"/>
                    </Component>
                    <Component Id="_ada4176a_f3d7_4799_90f8_0ab7a5b546fd" Guid="79d91413-6559-4e32-b832-6790579d32d1" Win64="yes">
                        <File Id="_a3679f98_9c3c_41d7_a114_c5a9cbc163db" Name="org.eclipse.ui.forms_3.7.200.v20180512-1133.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ui.forms_3.7.200.v20180512-1133.jar"/>
                    </Component>
                    <Component Id="_84fedff2_21a3_4fc0_8e32_46e24d75cf9f" Guid="435afc79-b397-4821-b864-f6ce7138f895" Win64="yes">
                        <File Id="_40c4a939_ed06_4117_9d1f_f10dc20ae91e" Name="org.eclipse.ui.intro_3.5.200.v20180328-0550.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ui.intro_3.5.200.v20180328-0550.jar"/>
                    </Component>
                    <Component Id="_5faaaa8f_667f_447c_bea1_46ce8441e86f" Guid="27dede4d-df88-4a57-81b1-e84aee8bd71e" Win64="yes">
                        <File Id="_cc674e86_38c4_4064_9b3f_6ff93fdcaf39" Name="org.eclipse.ui.net_1.3.200.v20171208-1604.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ui.net_1.3.200.v20171208-1604.jar"/>
                    </Component>
                    <Component Id="_a3297936_2c8c_4b29_9caa_5f1fdea366da" Guid="a775c129-7cf1-45a8-abc2-a0e71a24b196" Win64="yes">
                        <File Id="_c0811a77_afde_4938_bbe2_3b32d7b43524" Name="org.eclipse.ui.views_3.9.100.v20180427-1355.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ui.views_3.9.100.v20180427-1355.jar"/>
                    </Component>
                    <Component Id="_abd78be9_14a9_486e_8d82_188ce78c0887" Guid="55b61706-595b-40e7-ab8a-61ffe3219d2e" Win64="yes">
                        <File Id="_6f5993ba_6461_44d9_ba93_8e9e694ed48e" Name="org.eclipse.ui.workbench_3.111.0.v20180524-1156.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ui.workbench_3.111.0.v20180524-1156.jar"/>
                    </Component>
                    <Component Id="_811f164a_e92e_4b3e_9e88_32f1aae73f45" Guid="3965d61a-a59c-45a7-97fb-3625aa243718" Win64="yes">
                        <File Id="_6a108f75_43b8_417f_8cbc_68b5320336fe" Name="org.eclipse.ui_3.109.100.v20180426-0903.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.ui_3.109.100.v20180426-0903.jar"/>
                    </Component>
                    <Component Id="_d50895ed_1d3e_47a2_9ba2_ad65389db3b0" Guid="c544c69b-9f32-4b6d-b047-fbdcaf89f12e" Win64="yes">
                        <File Id="_34b79a48_4373_406a_8052_4af49dd03862" Name="org.eclipse.update.configurator_3.4.0.v20180512-1141.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.eclipse.update.configurator_3.4.0.v20180512-1141.jar"/>
                    </Component>
                    <Component Id="_439cb2d2_5a4b_43f8_9f33_7eec4595bae6" Guid="4278cab4-167b-44e1-956a-8017faa7f82e" Win64="yes">
                        <File Id="_1f9e878e_2113_4490_8423_f24a3f108540" Name="org.openjdk.jmc.alert.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.alert.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_e3bf8ad0_1613_48c0_80fe_413bb96736a1" Guid="23e84b2c-af51-4dd1-8bba-8c155b5cefe8" Win64="yes">
                        <File Id="_e908c801_2d9b_429e_8324_4da0896f636c" Name="org.openjdk.jmc.alert.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.alert.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_4199e8ce_b07d_4bc7_80a5_804560a1dda8" Guid="d4540d4b-acab-49a2-9fe1-30df849eb6ec" Win64="yes">
                        <File Id="_9370ea29_7be0_4e14_9dc5_9fb376ed7de9" Name="org.openjdk.jmc.alert_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.alert_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_f941efab_3728_48a5_b9db_8e5bb05efeae" Guid="de5794fb-d63f-4c5c-a750-bf264e665161" Win64="yes">
                        <File Id="_06acf313_0cf9_4735_8f45_d8b82c1951ea" Name="org.openjdk.jmc.attach_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.attach_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_8a098723_3a0b_4b07_9a5a_0cc0e527c4e2" Guid="2d88cd4f-0107-4854-9427-4cc3b57a7f50" Win64="yes">
                        <File Id="_1baba553_7168_43ae_956c_15a279107a17" Name="org.openjdk.jmc.browser.attach.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.attach.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_38c5803f_d706_4a92_ba26_2df336283feb" Guid="89eeea62-3706-4e18-82bf-d80f42641608" Win64="yes">
                        <File Id="_bdbefbc6_c930_43ca_a02e_6aa6fb27f806" Name="org.openjdk.jmc.browser.attach.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.attach.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_e41a132e_139a_4932_915e_b4608d07e4d0" Guid="1e901703-06cf-408d-ab2f-466b5ae2f264" Win64="yes">
                        <File Id="_13f3a924_9bc4_46dd_b82b_24c7283f0a8a" Name="org.openjdk.jmc.browser.attach_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.attach_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_fd53fb9e_ca8a_4e41_8751_00ce7383d8bb" Guid="e03ce7ef-8a96-4700-a9ef-dc06eacb4799" Win64="yes">
                        <File Id="_410e3d77_221b_4a9d_9e0b_2b44cd3cc853" Name="org.openjdk.jmc.browser.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_5f3df7d6_fa0e_44ac_85ad_f136a6359c39" Guid="2b369532-ad4e-45d7-998f-093606812678" Win64="yes">
                        <File Id="_499605cd_5c2d_4089_abf4_9db7ce879661" Name="org.openjdk.jmc.browser.jdp.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.jdp.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_17aa9f78_d402_42a0_9676_ac669cdc2a84" Guid="ba80ad14-40b6-4b7f-bed3-954ad80e116d" Win64="yes">
                        <File Id="_d2e4d576_dc66_4fd6_b424_dd82f5916ccc" Name="org.openjdk.jmc.browser.jdp.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.jdp.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_72663b60_3cbc_427e_af32_ca5cf1cf85aa" Guid="901fed2d-dd39-4285-a00f-4e4ea1a8ecfa" Win64="yes">
                        <File Id="_516ec62c_0a53_4a83_a308_72aec37e91d4" Name="org.openjdk.jmc.browser.jdp_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.jdp_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_35d9852d_8ab9_4740_9f74_9424ada2f2ca" Guid="ad878139-bc5b-4774-99c4-739e799d651d" Win64="yes">
                        <File Id="_3cdf622f_47bb_4e86_81e4_f4c298461801" Name="org.openjdk.jmc.browser.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_9d361ca2_18b7_422e_bd3a_b1f6018c7fb5" Guid="092683e7-cc72-4d9c-949e-4998aec5d24a" Win64="yes">
                        <File Id="_701a4cf3_40ce_43e0_b1ae_67d031b174d3" Name="org.openjdk.jmc.browser_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.browser_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_d86a2bc1_add9_4ec4_ab25_50f2850bd8ec" Guid="285dd346-c130-4941-87a4-3fcf98050d41" Win64="yes">
                        <File Id="_b4432ef6_943f_46b1_a6d6_4f155fb3b1ea" Name="org.openjdk.jmc.commands_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.commands_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_d1c08e10_4f0e_48bb_bcd5_62a47f892ddb" Guid="656b80e7-2e11-4f81-8fa8-3029765e03c8" Win64="yes">
                        <File Id="_6ff1d5c6_ccf1_47d3_8e64_991bf134de4f" Name="org.openjdk.jmc.common_7.0.0.qualifier.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.common_7.0.0.qualifier.jar"/>
                    </Component>
                    <Component Id="_a02376a5_19dd_46aa_b0d0_23838719e940" Guid="729216bd-02d9-4155-994c-509c03ef2a32" Win64="yes">
                        <File Id="_da018131_2203_4f90_b450_fecfb87ee16e" Name="org.openjdk.jmc.console.persistence.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.persistence.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_f2b8a504_bb33_4841_9ca1_d8beb680de95" Guid="93cdaf8a-3688-4608-9d1e-2c68c59fcc70" Win64="yes">
                        <File Id="_c2a8e6d9_7f12_43e6_b72b_f3661d6e0534" Name="org.openjdk.jmc.console.persistence.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.persistence.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_23dc1563_f24b_4e3a_82d3_db4e187bbf9a" Guid="2384816d-f4fa-4b01-ae54-eafe501a263c" Win64="yes">
                        <File Id="_ba44bf44_4bc3_403f_9cb8_050fb6d98085" Name="org.openjdk.jmc.console.persistence_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.persistence_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_a54d063b_9c1e_449c_8361_926772b7f9e2" Guid="7fa6b0ff-0e43-403a-a59b-d0b4cd814f87" Win64="yes">
                        <File Id="_31158ac0_b3cd_4d64_87e9_487fbf096db8" Name="org.openjdk.jmc.console.ui.diagnostic.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.diagnostic.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_7813da7f_06cd_43fd_8e3d_5c9cb2197b95" Guid="a49b868e-a85b-4883-8091-fb8d44166143" Win64="yes">
                        <File Id="_36a370cf_02f1_4acd_b70e_238daa29b492" Name="org.openjdk.jmc.console.ui.diagnostic.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.diagnostic.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_81468c10_09ca_41c1_9a93_c0ff6d45c52b" Guid="6588a176-9fe7-4a48-9be6-eb65321135a6" Win64="yes">
                        <File Id="_624de0d5_58b8_4eed_944f_de68b83806c4" Name="org.openjdk.jmc.console.ui.diagnostic_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.diagnostic_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_e344c728_5730_4901_8fd0_5d4985096d43" Guid="d1070197-584e-4275-b46f-6d50b4b6f555" Win64="yes">
                        <File Id="_eeb703f6_9094_40cd_894c_aadcb2ebef74" Name="org.openjdk.jmc.console.ui.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_c5f71dd8_55f7_4469_a98c_a1e0ed65f6ec" Guid="91c28cdb-11fd-4851-ad90-e92f16bd8f00" Win64="yes">
                        <File Id="_7c84d305_df0d_4563_8102_9c517c73b312" Name="org.openjdk.jmc.console.ui.mbeanbrowser.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.mbeanbrowser.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_18b7deea_c3bf_4d92_a36e_d454e333f2d7" Guid="6bcd6eef-772b-4596-8bbd-d6433f9fa010" Win64="yes">
                        <File Id="_98d0d3d2_1bea_4073_a180_433a40a687e4" Name="org.openjdk.jmc.console.ui.mbeanbrowser.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.mbeanbrowser.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_97400b11_8a1b_4332_aba9_c3c9ef6c908c" Guid="81f562d0-752b-460e-a2fa-c065e1f73a33" Win64="yes">
                        <File Id="_d3b0e18f_eff8_4492_9a7b_8847b525c5fb" Name="org.openjdk.jmc.console.ui.mbeanbrowser_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.mbeanbrowser_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_f72fd0b4_ed2b_4719_a9ea_e0d428e5424c" Guid="cc169c9e-f6a9-49cb-9366-3a0b18d157b0" Win64="yes">
                        <File Id="_8c87cd81_e34f_4710_8175_92850862fe49" Name="org.openjdk.jmc.console.ui.notification.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.notification.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_6d32b2b1_9b9d_4195_a052_478bba8ed53b" Guid="4c3eaa30-0350-4f55-add6-2f66f70421b3" Win64="yes">
                        <File Id="_a5640a76_c829_4191_9ffb_01c45cff7956" Name="org.openjdk.jmc.console.ui.notification.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.notification.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_1bdcb616_c8fd_47c1_91ac_3c2280d5aed9" Guid="3f03a2b7-a206-4633-8865-063ef4631069" Win64="yes">
                        <File Id="_c39f7f69_d3af_4fe4_a982_6cd69a90120a" Name="org.openjdk.jmc.console.ui.notification_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.notification_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_3eabb330_c6b1_4ce6_9e6c_fa61c8e17dd8" Guid="a260c51b-fb5e-48d3-95e3-3e30a6a7bb79" Win64="yes">
                        <File Id="_837b146a_fea9_462b_898c_52ab14d6c554" Name="org.openjdk.jmc.console.ui.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_b568892d_ca03_40d5_bb6c_f6c4b5aa3259" Guid="8e7fa3c9-d512-41af-b279-70425e54ae3b" Win64="yes">
                        <File Id="_7e1176f6_7d8c_4f0b_81ca_bcd0ffcbacb5" Name="org.openjdk.jmc.console.ui_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.console.ui_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_63a47423_b3fc_47d4_a9c1_e9b11ca360f9" Guid="bbb2afff-ee80-4535-a2b7-6ac2bbaec81c" Win64="yes">
                        <File Id="_6883b8ba_a88a_411c_8349_1b34882d79b2" Name="org.openjdk.jmc.docs.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.docs.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_6eb24fc6_4009_40da_ac30_a9653d1aa9d0" Guid="9d9ac863-6819-4baf-bcad-34b073061a95" Win64="yes">
                        <File Id="_3f838af8_187e_4140_9b18_8074f605c291" Name="org.openjdk.jmc.docs.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.docs.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_35481d1e_a390_4e6d_88cd_f3f13dfee986" Guid="75172582-4026-4eba-91e7-35f3c6fe6ce6" Win64="yes">
                        <File Id="_f30af7fa_e84c_4846_83f7_0383d0aa8ae8" Name="org.openjdk.jmc.docs_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.docs_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_7f6ce12c_057d_4119_8cba_d4eb5d381265" Guid="efb212ec-a17a-4c65-9e46-61eeac41f405" Win64="yes">
                        <File Id="_ec32be29_539b_4e1b_9192_f5869ce76d47" Name="org.openjdk.jmc.flightrecorder.configuration_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.configuration_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_f98704a1_1e25_415d_9ef5_adbb52813e88" Guid="bb40ae64-0806-4da7-b5f2-0f8426a59794" Win64="yes">
                        <File Id="_34710e7a_cea8_421e_b58d_8ab90b8010ba" Name="org.openjdk.jmc.flightrecorder.controlpanel.ui.configuration_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.controlpanel.ui.configuration_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_c0e0eae4_cf54_4889_a85d_f79de4f96496" Guid="a8d9b82e-0e5a-42be-bcbf-252f85107dce" Win64="yes">
                        <File Id="_6d8b0ebd_e536_4b52_836f_b4051f3dee42" Name="org.openjdk.jmc.flightrecorder.controlpanel.ui.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.controlpanel.ui.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_01e2772a_9da3_46d0_8339_92f550bb9a15" Guid="38983c2a-a9ee-4e85-af4d-d9058b0f1644" Win64="yes">
                        <File Id="_a5bf2a3d_bb21_4283_8fc8_567253ad55d3" Name="org.openjdk.jmc.flightrecorder.controlpanel.ui.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.controlpanel.ui.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_6c39a620_7b6f_4c84_98f6_f1f0232b5504" Guid="6a7ba19a-b114-4b2b-a458-0b677b82e2d2" Win64="yes">
                        <File Id="_786fed13_cb91_4940_a3bc_c28826558a62" Name="org.openjdk.jmc.flightrecorder.controlpanel.ui_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.controlpanel.ui_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_1bb65e9a_3895_4ca2_a7e6_515eb1fd653d" Guid="4f0389c4-c00b-4029-9244-d0de7e943896" Win64="yes">
                        <File Id="_26138cc7_b9da_4e23_92e3_7b8d40f6ccb8" Name="org.openjdk.jmc.flightrecorder.rules.extensionprovider_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.rules.extensionprovider_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_24bcc2e0_9dfc_4c8f_a25f_44a85e06322f" Guid="96e1a5ac-8ba1-4d63-b0de-e8da215ee59a" Win64="yes">
                        <File Id="_7da27270_3203_400c_a1a0_c4df1e4bfd99" Name="org.openjdk.jmc.flightrecorder.rules.jdk_7.0.0.qualifier.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.rules.jdk_7.0.0.qualifier.jar"/>
                    </Component>
                    <Component Id="_d2c50ecf_1294_47f8_b866_b90cf5964e70" Guid="92b6511e-828d-4b6c-a63b-7ea20ba760e6" Win64="yes">
                        <File Id="_a7f62b1a_4896_4ae2_8064_0db903ec6b59" Name="org.openjdk.jmc.flightrecorder.rules_7.0.0.qualifier.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.rules_7.0.0.qualifier.jar"/>
                    </Component>
                    <Component Id="_a654ea1b_b71f_4385_b270_e1946abfd8bf" Guid="4f3caa76-140b-4eaa-ab0d-c3ae4931bc73" Win64="yes">
                        <File Id="_04b4068b_b54c_461c_bd66_c19f518a738a" Name="org.openjdk.jmc.flightrecorder.ui.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.ui.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_89e20b74_6f15_464a_b05e_4f39a5e875ed" Guid="70285d36-8053-4785-a36c-bc6953e8ac75" Win64="yes">
                        <File Id="_ee26ac5e_e8ce_46a5_9ae6_b1c0bf2bdcbf" Name="org.openjdk.jmc.flightrecorder.ui.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.ui.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_1ccb76c0_f93c_4679_af70_5c7f2e31e975" Guid="f11dad44-8a30-46cb-9f54-095c70f61b07" Win64="yes">
                        <File Id="_674f6bcb_391c_4149_baf9_760467aec607" Name="org.openjdk.jmc.flightrecorder.ui_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder.ui_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_bd94837e_0949_4b8b_b2c2_2288a1ac442d" Guid="0010ecbe-8a00-4a68-be30-ed291db51fb3" Win64="yes">
                        <File Id="_3d0375e9_c470_4c45_bd45_42276f8e177d" Name="org.openjdk.jmc.flightrecorder_7.0.0.qualifier.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.flightrecorder_7.0.0.qualifier.jar"/>
                    </Component>
                    <Component Id="_0100651c_57d0_49cc_9d56_bf614cf88c7a" Guid="de4f6a0f-a23d-4024-851d-1c91bcae31e5" Win64="yes">
                        <File Id="_dc21cfc5_daae_47b7_beff_b2580aa4d97a" Name="org.openjdk.jmc.greychart.ui.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.greychart.ui.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_cab394c4_a30d_4f95_9f0c_5b699b7dd683" Guid="4758a18e-ebdf-44cb-94b6-845bc5cb1c78" Win64="yes">
                        <File Id="_3631ebbf_c2cf_4482_8bc4_20cd0ac40388" Name="org.openjdk.jmc.greychart.ui.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.greychart.ui.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_4bf7ec50_b136_47e7_9e68_513eefdbcd95" Guid="81b16c2d-1fc9-4974-833f-6a1188d37b5f" Win64="yes">
                        <File Id="_33f3e087_8c05_42dd_804b_0939a315251c" Name="org.openjdk.jmc.greychart.ui_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.greychart.ui_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_1514a8ad_4067_4e13_bce2_6bbe3b7cf90f" Guid="6a26348d-aab3-47bf-b301-686b52b73805" Win64="yes">
                        <File Id="_92d39506_7524_4117_b7f5_4d37bc61d2e6" Name="org.openjdk.jmc.greychart_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.greychart_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_9ad838e2_4d21_4dc6_b9a5_a4ab1b0bcbcf" Guid="ffc9dda1-7184-4c5b-8a83-ea40ca54b1be" Win64="yes">
                        <File Id="_b0c833ba_8da2_4244_a4f7_597a010c1d77" Name="org.openjdk.jmc.javafx.osgi_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.javafx.osgi_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_2377c27a_0c6f_41e4_b732_a2595a23e6a3" Guid="ef7738c0-45a5-4989-b01a-27a4d1c07cf7" Win64="yes">
                        <File Id="_bf392662_7a65_410f_b2f1_bdab1c1e071a" Name="org.openjdk.jmc.jdp_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.jdp_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_c954bf53_76e2_449a_9e4a_6d8a2ca298df" Guid="3d6ad9bf-1d12-4693-9e76-70a903ffe4b3" Win64="yes">
                        <File Id="_397fa747_eeac_41ba_bfe9_5307914c517c" Name="org.openjdk.jmc.osgi.extension_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.osgi.extension_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_7f818a54_0d4d_47ba_b43a_843909a8f0ab" Guid="d0a2511f-b8bb-4ad2-a0b1-e0fecfa32b69" Win64="yes">
                        <File Id="_f3a40354_9507_4a2d_8514_20cf41efb883" Name="org.openjdk.jmc.rcp.application.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rcp.application.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_4be74de2_4ea7_4ad5_9642_0963bc839889" Guid="1597b7f6-6a39-4776-8e29-81a6264c71db" Win64="yes">
                        <File Id="_4c5f7230_d3d0_4035_bb6a_2f01f5a4e849" Name="org.openjdk.jmc.rcp.application.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rcp.application.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_d4c72fdd_f5d1_4dcc_9135_c52f88f1adc1" Guid="91cdcffa-d037-4d29-aedf-67cbda6a8fff" Win64="yes">
                        <File Id="_be0d177b_05fa_4680_b432_7a5ebff36044" Name="org.openjdk.jmc.rcp.application_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rcp.application_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_f29f914e_0a62_45e5_be7c_e3e5d69f5947" Guid="309e22b9-05f7-4c6b-978a-38fbf60fc188" Win64="yes">
                        <File Id="_7fd5f80c_3be3_44bb_928c_ae00fc622e42" Name="org.openjdk.jmc.rcp.intro.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rcp.intro.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_5b3f9560_59a9_4401_a00d_044276716133" Guid="d0b9c907-7db8-4947-bc73-788362ce0246" Win64="yes">
                        <File Id="_e30390a5_9063_42ea_857c_5355ff228f47" Name="org.openjdk.jmc.rcp.intro.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rcp.intro.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_3bb27e92_cf07_48d0_80ad_26a830591289" Guid="5e55a958-91c9-4ae9-9d06-f99769c0d500" Win64="yes">
                        <File Id="_cb6346d5_c512_4d6a_93d0_f5d821a2b2a6" Name="org.openjdk.jmc.rcp.intro_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rcp.intro_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_eb2c47b7_6462_4aeb_b47b_34d76ade2905" Guid="354b31d8-e268-4f6b-9a48-b5ceb0acf558" Win64="yes">
                        <File Id="_7d4b5033_9292_4cb4_9523_438edf7ae9a3" Name="org.openjdk.jmc.rjmx.ext_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.ext_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_82592f09_8fb6_4e61_b0c6_3ec2bc2313d4" Guid="0088f0ff-92c6-4ea2-8cc1-5329d4f0318b" Win64="yes">
                        <File Id="_0bdbd9e8_b64f_4dff_951d_f44824c4fcee" Name="org.openjdk.jmc.rjmx.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_6e6d4baf_f4a0_4c0e_9b7f_70b6f2f6d367" Guid="9ec92f6d-0c3e-483d-afb0-a9a7a690cf45" Win64="yes">
                        <File Id="_936a1d99_baa9_4524_a093_05c1640cf2b8" Name="org.openjdk.jmc.rjmx.services.jfr_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.services.jfr_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_2e746eb6_39f3_4313_a73e_fbc1cbf92c01" Guid="21f0d0d5-1ca1-4138-b978-42f6db9c95b1" Win64="yes">
                        <File Id="_43aea945_5538_4ca2_98b8_ea68571793ed" Name="org.openjdk.jmc.rjmx.ui.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.ui.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_29c54202_1224_499b_8105_aa8504f61795" Guid="2a46e9f9-5574-4697-b50e-789733837fcb" Win64="yes">
                        <File Id="_9120e283_5e0e_4d36_b08b_4db3cc230043" Name="org.openjdk.jmc.rjmx.ui.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.ui.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_6c8a3f00_cffa_41d5_b490_96bdf3b2cec6" Guid="f2195bc3-27b8-4261-aef6-fd3ab5a9e89d" Win64="yes">
                        <File Id="_6e15d27d_094b_4de9_a07d_de466b2788f1" Name="org.openjdk.jmc.rjmx.ui_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.ui_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_0137febd_72cf_4b8a_b096_bb06f6f5e0f7" Guid="c024b547-d7ff-4c79-b579-bddc2876ca1b" Win64="yes">
                        <File Id="_a9faf0a2_ccf6_417d_9cc7_c55e4a28d225" Name="org.openjdk.jmc.rjmx.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_35c3d004_ebe4_4cff_8bb7_98e16a51254c" Guid="7a2384e6-0fbf-402f-98c9-c6c048b8b869" Win64="yes">
                        <File Id="_1b7252f8_7625_419f_a5f5_409c75160841" Name="org.openjdk.jmc.rjmx_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.rjmx_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_2a6f369f_fdc0_4106_b484_1e78790ef4b3" Guid="f609d843-d118-47de-86a4-168b6bcc1526" Win64="yes">
                        <File Id="_470832b4_993f_4f63_afd8_185f2c9d740f" Name="org.openjdk.jmc.ui.common_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.ui.common_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_2fdba9dc_39ed_480a_849c_e161988cc151" Guid="44930ae5-8ac4-4f15-8612-78181e6b399d" Win64="yes">
                        <File Id="_cf9d4ff1_d970_4f5b_bc21_c6a9afca5ddb" Name="org.openjdk.jmc.ui.ja_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.ui.ja_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_a7e356e6_fa55_433c_9f52_79724b549931" Guid="9b53f308-6c2a-4f8c-b62c-be4c9c9026d3" Win64="yes">
                        <File Id="_87e3831f_b09b_4844_a424_9b52a77835df" Name="org.openjdk.jmc.ui.zh_CN_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.ui.zh_CN_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_f312ad6c_87a1_461b_8606_22746b0d418f" Guid="249a1969-d192-4d46-a3be-b8737db111f7" Win64="yes">
                        <File Id="_14a802d9_1882_4232_bf0e_d71b0df19587" Name="org.openjdk.jmc.ui_7.0.0.201810181240.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.openjdk.jmc.ui_7.0.0.201810181240.jar"/>
                    </Component>
                    <Component Id="_fa0419cf_9a09_43ec_ba01_a89311ccda40" Guid="856ad5ef-ec05-47ef-af85-21ac900725a9" Win64="yes">
                        <File Id="_12d1339a_2205_4097_b306_0fbb2052b93e" Name="org.owasp.encoder_1.2.1.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.owasp.encoder_1.2.1.jar"/>
                    </Component>
                    <Component Id="_5a97e7a8_b38c_48ba_9d3f_f9fa15793b28" Guid="0c211c0c-b43f-461c-bd2c-38449e338f23" Win64="yes">
                        <File Id="_52d225eb_18f1_41a8_9e1f_f1a1a258fde6" Name="org.sat4j.core_2.3.5.v201308161310.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.sat4j.core_2.3.5.v201308161310.jar"/>
                    </Component>
                    <Component Id="_7b317768_f92a_468b_8917_18260c471846" Guid="4f68418e-c46b-4861-80cc-d8f5cca73805" Win64="yes">
                        <File Id="_1580c0a1_cdb2_4180_938d_8ea8ee157e1b" Name="org.sat4j.pb_2.3.5.v201404071733.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.sat4j.pb_2.3.5.v201404071733.jar"/>
                    </Component>
                    <Component Id="_7ab79f0b_721a_47a5_bafd_03408eeb8f6c" Guid="a53eba03-2c16-46ac-8f07-bf00132c572e" Win64="yes">
                        <File Id="_8546d1d8_426d_4b65_b0d8_7e3904ad872f" Name="org.tukaani.xz_1.8.0.v20180207-1613.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.tukaani.xz_1.8.0.v20180207-1613.jar"/>
                    </Component>
                    <Component Id="_25335d09_469e_423c_91a5_f578060678a3" Guid="5e868660-839d-4daa-b73f-2cd336b18556" Win64="yes">
                        <File Id="_b0df0fd9_1bb2_43fd_b8eb_d22a09eaf8fc" Name="org.w3c.css.sac_1.3.1.v200903091627.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.w3c.css.sac_1.3.1.v200903091627.jar"/>
                    </Component>
                    <Component Id="_73db5398_081e_4164_9d5b_77367e5f1792" Guid="4017ac6e-4966-48a1-884d-841def3415ce" Win64="yes">
                        <File Id="_d80efe90_a96e_4068_9dfb_f7e04f149ece" Name="org.w3c.dom.events_3.0.0.draft20060413_v201105210656.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.w3c.dom.events_3.0.0.draft20060413_v201105210656.jar"/>
                    </Component>
                    <Component Id="_9bf5c2a8_3f1a_4a2b_8641_27959be832c4" Guid="e9b93c22-48bf-4467-bd90-d77a47a06b2a" Win64="yes">
                        <File Id="_b4318c99_6dad_4c5b_b860_26232f69bdf9" Name="org.w3c.dom.smil_1.0.1.v200903091627.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.w3c.dom.smil_1.0.1.v200903091627.jar"/>
                    </Component>
                    <Component Id="_7ce9019b_b4fe_497c_8578_02378e25509c" Guid="8abac19f-f9de-4d85-baeb-e14e47f420a0" Win64="yes">
                        <File Id="_33bf6971_000f_4b28_80c3_e0669ed40ac7" Name="org.w3c.dom.svg_1.1.0.v201011041433.jar" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/plugins/org.w3c.dom.svg_1.1.0.v201011041433.jar"/>
                    </Component>
                </Directory>
                <Directory Id="_6436600e_6b2d_44d8_8084_a0144c1a1da5" Name="readme">
                    <Component Id="_d57dbeda_069d_4110_ae7c_47283162f196" Guid="cb7f6fd1-6e31-41d9-92ab-9339efe4a283" Win64="yes">
                        <File Id="_91169956_f7d9_4b5e_bdbc_23c93192a293" Name="readme_eclipse.html" KeyPath="yes" DiskId="1" Source="${CMAKE_CURRENT_BINARY_DIR}/dist/readme/readme_eclipse.html"/>
                    </Component>
                </Directory>

            </Directory>
        </Directory>

        <!-- jmc_env -->
        <Component Id="jmc_env_path_comp" Guid="038c5bba-1dfb-4bb1-b4ed-8d6ef43f1312" KeyPath="yes" Win64="yes" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <Environment Id="jmc_env_path_key" Name="PATH" Value="[JMCDIR]" Action="set" Part="last" System="yes"/>
        </Component>

    </xsl:template>
    <xsl:template match="w:Feature[@ConfigurableDirectory='INSTALLDIR']">
        <Feature Id="jdk" xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <xsl:apply-templates select="@* | *"/>
        </Feature>
        <Feature Id="jmc" Absent="allow" AllowAdvertise="no" Level="${${PROJECT_NAME}_INSTALLER_FEATURE_LEVEL}"
                Title="${${PROJECT_NAME}_INSTALLER_FEATURE_TITLE}"
                Description="JDK Mission Control 7 EARLY ACCESS. This feature is EXPERIMENTAL."
                xmlns="http://schemas.microsoft.com/wix/2006/wi">
            <ComponentRef Id="_e4e990c6_d3ff_4473_acdd_0f1d6931957e"/>
            <ComponentRef Id="_3c2f02ae_db76_4f7a_b2ba_eae1353f5054"/>
            <ComponentRef Id="_e2854efd_e023_4322_9fe6_36386f8a090f"/>
            <ComponentRef Id="_5f277ebb_e581_4b71_addd_1e9f290a89e4"/>
            <ComponentRef Id="_a4e8fe13_6702_4a2f_8f5b_6582d6c6265a"/>
            <ComponentRef Id="_f57fed72_89f1_4e8b_8732_91e8b52fef69"/>
            <ComponentRef Id="_41d48b02_569b_4b5b_a5f2_27716e7e6e31"/>
            <ComponentRef Id="_17dff905_8e15_4503_9554_b72b6e9e9609"/>
            <ComponentRef Id="_1a99b6ce_72ca_417e_878e_0fc0f8d69034"/>
            <ComponentRef Id="_49aaba8e_d219_4e66_9c9a_b1b295961756"/>
            <ComponentRef Id="_6e17cc25_7e73_4fdc_b9d1_b425f5bf6b62"/>
            <ComponentRef Id="_cf7068a0_c3d2_4938_9c41_62817736d867"/>
            <ComponentRef Id="_adc7034e_3c0c_4749_bc82_7defc6e9a9cc"/>
            <ComponentRef Id="_73d90cc9_52f8_4e28_ba1a_838d3505fd95"/>
            <ComponentRef Id="_454ad656_4c3c_4f8c_ad27_be84c29fcfc0"/>
            <ComponentRef Id="_26ecc6cc_58d0_4f1e_858f_388513cb44a1"/>
            <ComponentRef Id="_2343bb13_1106_41db_a4fb_21da8a39c924"/>
            <ComponentRef Id="_61ea2d1c_36ff_42ec_a179_399dc4e36170"/>
            <ComponentRef Id="_12f2f828_1bc2_468b_9c7c_8dbabbf0786d"/>
            <ComponentRef Id="_48e37541_41f2_4465_96ab_57b78a3089cd"/>
            <ComponentRef Id="_1127942a_df56_473c_928a_690a445eae68"/>
            <ComponentRef Id="_4496d009_96aa_4f0d_b1ab_49058df13e71"/>
            <ComponentRef Id="_397fff42_0531_4145_a5fc_51d019bbe4b0"/>
            <ComponentRef Id="_4478750a_99b6_48eb_9160_047c9cc32246"/>
            <ComponentRef Id="_f2e17d19_ed1f_4868_aabb_ff38fc3c65a6"/>
            <ComponentRef Id="_c523ef73_031f_49bd_ac0d_71c998b5b68a"/>
            <ComponentRef Id="_9e40753f_17c6_4ad5_8bc7_82c003dd30b2"/>
            <ComponentRef Id="_e2db3611_9f0a_4038_95dc_47e96d9f2fef"/>
            <ComponentRef Id="_3e979338_fee4_4ac4_b8b0_d806a2dc3613"/>
            <ComponentRef Id="_c6f4800e_80f4_43c1_aee6_f372de8edf0b"/>
            <ComponentRef Id="_b7c75c56_c206_4dc4_9466_fe97da35492c"/>
            <ComponentRef Id="_e6cea186_1c81_4707_acbb_1b061b1de0ad"/>
            <ComponentRef Id="_6839078c_476a_4030_b576_5a2645a95336"/>
            <ComponentRef Id="_5df4c497_e67f_4a2f_b695_90fe2f968819"/>
            <ComponentRef Id="_552bd8ff_36b6_4acf_a608_4321b3d65c45"/>
            <ComponentRef Id="_1f382d6a_12ba_41b3_a396_13de7f630bd0"/>
            <ComponentRef Id="_86167361_ab2e_4a60_9b61_aa070b2e4732"/>
            <ComponentRef Id="_2135adf6_512e_413f_95b2_d1b2efc079f8"/>
            <ComponentRef Id="_68fa1721_1e45_49e0_9d19_02b96e087d56"/>
            <ComponentRef Id="_3a0f3ce3_5987_424b_89ae_1b7926f158e9"/>
            <ComponentRef Id="_107e5792_1fe9_479f_91c3_3fbc4c3fb8f6"/>
            <ComponentRef Id="_57c9bb8f_1db9_454e_9043_7a3119c724ba"/>
            <ComponentRef Id="_4f051cae_2e0d_4ca3_8061_b34283e650dd"/>
            <ComponentRef Id="_5d1b5e40_fd4d_471d_907f_1605b84de7a8"/>
            <ComponentRef Id="_71c39a1f_7218_4b41_8344_70a238995e2a"/>
            <ComponentRef Id="_fb59e9a7_963e_4655_802a_8df87db38592"/>
            <ComponentRef Id="_07a15cda_ff7f_423a_b506_e2d3d726df03"/>
            <ComponentRef Id="_a85ed032_af5e_48b4_9c2f_ccb9101c5c91"/>
            <ComponentRef Id="_87882d03_f3fc_4097_9e3a_68e4719f33ef"/>
            <ComponentRef Id="_ea5dd034_cd51_4431_a385_005e625284a4"/>
            <ComponentRef Id="_b6a8ae37_8332_4a34_bdb5_0ae92bdb9217"/>
            <ComponentRef Id="_f5121491_e322_4af3_98da_0fceeb335b0c"/>
            <ComponentRef Id="_30719306_f436_48c8_b14e_6a2ec9d55f71"/>
            <ComponentRef Id="_d032364e_d11c_42f5_97a2_11f0d05c910e"/>
            <ComponentRef Id="_a1850748_b964_4b58_ac17_5d6cfccaa517"/>
            <ComponentRef Id="_dcfa00dc_c8b0_456c_a1d3_2ea39f34921e"/>
            <ComponentRef Id="_a4d71cc1_672c_4159_ba3d_a335942e1e1b"/>
            <ComponentRef Id="_c18952dc_c7e0_4b3a_b82a_ba29ade9f9f0"/>
            <ComponentRef Id="_d85be698_a2bd_4282_9c0a_87e36ee1ed6e"/>
            <ComponentRef Id="_d023c4cd_a6d5_414e_8e20_8e14c67fc19e"/>
            <ComponentRef Id="_1582187c_ab74_4aec_858d_880812b0018b"/>
            <ComponentRef Id="_e2a5d0d5_ff69_46e6_a274_eaccfd7466d7"/>
            <ComponentRef Id="_3df84586_bccf_4682_923e_549adac3c08b"/>
            <ComponentRef Id="_fc55fb9e_9e00_4a0a_a0a2_8818d2a6ac3a"/>
            <ComponentRef Id="_ec1a43f6_61af_4aee_bfc2_dadd3d62edd3"/>
            <ComponentRef Id="_bd677e49_166e_44be_b491_981172b3dfb8"/>
            <ComponentRef Id="_168a4ab8_21d9_4c46_9479_11f726283d44"/>
            <ComponentRef Id="_39d5381a_3e5e_42bb_a3da_8d4ee8378eb1"/>
            <ComponentRef Id="_97d9f2fd_b1ab_4687_9fca_f1f887be4d64"/>
            <ComponentRef Id="_80843c8a_67fe_4e21_8554_1412ecfc87ad"/>
            <ComponentRef Id="_b3d73251_0936_4160_978d_f4333307bfc4"/>
            <ComponentRef Id="_1115373c_3ee3_42e3_bcfb_14fd3f37e5d5"/>
            <ComponentRef Id="_08afdedf_5712_4bed_b4bc_099c3bf22e96"/>
            <ComponentRef Id="_c981fcdb_ef12_44cd_87bc_734211e90432"/>
            <ComponentRef Id="_acee878b_b0c6_4d4d_9ca4_76d74c7de2ef"/>
            <ComponentRef Id="_fdba76a6_c270_434b_94d7_67d9d5291f40"/>
            <ComponentRef Id="_b6ace106_45d1_4487_9558_01564591d4b2"/>
            <ComponentRef Id="_45418939_c957_4c63_a1c9_ffed4043cf47"/>
            <ComponentRef Id="_d754071b_9663_42d5_95a8_ed88b4a2205a"/>
            <ComponentRef Id="_e6e125bd_a507_4284_b8e8_31e4187f7ccf"/>
            <ComponentRef Id="_b04cee3c_d32f_4ed7_8b44_e6810c01dacd"/>
            <ComponentRef Id="_a75af659_c07a_4beb_b36f_8080092a631d"/>
            <ComponentRef Id="_119968a0_b0d1_454b_b79a_2d7dd79ef290"/>
            <ComponentRef Id="_a2661a98_04d4_47ff_91f0_6efd5233db1b"/>
            <ComponentRef Id="_4c26dab3_7238_44ce_896c_3386e1275d56"/>
            <ComponentRef Id="_22478ab8_ea83_44e1_b164_e79aa4cfab6c"/>
            <ComponentRef Id="_636c04f2_2212_4db0_8128_4e6b9e096eed"/>
            <ComponentRef Id="_ebe49a02_ecd4_4b84_98a0_0cf0377bbb49"/>
            <ComponentRef Id="_eae57ff7_4d57_4c3c_9e70_678ae0a89d62"/>
            <ComponentRef Id="_a2a8bc81_3041_484d_8f72_ef8d91bc0f03"/>
            <ComponentRef Id="_609c83e1_c558_4d71_b6f0_f05bbcbad48b"/>
            <ComponentRef Id="_7a7b712b_88fe_430d_8dcc_94d247fb05c4"/>
            <ComponentRef Id="_8091ef2a_5c47_4a7a_8542_7561b2cef986"/>
            <ComponentRef Id="_7ec19e65_3e70_47d8_8f95_e9303ceaf379"/>
            <ComponentRef Id="_a08f9a4e_3d15_432d_b8b7_fe3c27c6ad23"/>
            <ComponentRef Id="_fb435d85_8ad9_4494_899c_fb2b9a56fdf8"/>
            <ComponentRef Id="_12bb03c4_c3ad_49fc_a4c5_59ff02abc2a6"/>
            <ComponentRef Id="_8dd186b3_9f59_49d9_9989_04561fc6ec8b"/>
            <ComponentRef Id="_e7f77087_f893_49f3_aef8_f0ca98b42312"/>
            <ComponentRef Id="_308966b0_0518_494a_9c46_87d9915f5f0f"/>
            <ComponentRef Id="_afc7a30e_754c_4660_b8f0_c1d29d0b7d7b"/>
            <ComponentRef Id="_46e75437_0d2e_452c_83f6_dc2d2e6aaf4d"/>
            <ComponentRef Id="_7a687c6f_0a15_4097_be2e_0d88b6eb9112"/>
            <ComponentRef Id="_59ea4950_bd63_47c4_9ee9_a40b165c0088"/>
            <ComponentRef Id="_5846bc5d_4d20_457e_aa32_3a6034f1b479"/>
            <ComponentRef Id="_9cce4a03_22db_4271_80f8_ab42871aff77"/>
            <ComponentRef Id="_f4d00ace_38be_488f_a5b9_7024f8b0db4d"/>
            <ComponentRef Id="_bbd1c195_2c57_40d0_b64b_b86ef5e707a5"/>
            <ComponentRef Id="_9c936657_ed2f_47c9_bdf1_3665d702bc4e"/>
            <ComponentRef Id="_ffc77c79_7dfc_490b_b251_79b67ed56f72"/>
            <ComponentRef Id="_73bbadf5_e6e6_4d1a_a151_fe6911f10200"/>
            <ComponentRef Id="_b26140f5_a2d7_4fed_a2d7_6e381cb76eda"/>
            <ComponentRef Id="_e3b22f10_9e11_47dc_a61f_0a313a2564d5"/>
            <ComponentRef Id="_4b56ac5f_0d7f_42a3_a02f_691aa6574a51"/>
            <ComponentRef Id="_22a9758d_3de8_4046_afbc_cd896e67cf05"/>
            <ComponentRef Id="_277c62a4_bc4e_45a9_9d41_472cd445f228"/>
            <ComponentRef Id="_d8045d6e_1f48_4831_b555_65dd15a983f2"/>
            <ComponentRef Id="_ccea895b_c314_4d47_8667_13d73b8875c5"/>
            <ComponentRef Id="_f430b143_0f8a_402a_8120_a00110e3c4cf"/>
            <ComponentRef Id="_15fbfd29_5cd0_46e3_986c_c94bf64ad71e"/>
            <ComponentRef Id="_a94a5e13_8302_460a_8205_85c8f814f821"/>
            <ComponentRef Id="_95031477_5b32_4bd3_9f8e_173163727b90"/>
            <ComponentRef Id="_f8bb7dee_d2db_4c65_aa7d_44e251a07096"/>
            <ComponentRef Id="_58c0051e_5b75_4eb6_811d_5e9f091263a6"/>
            <ComponentRef Id="_5baf73f3_3fa7_4065_a8a0_66b790e4df22"/>
            <ComponentRef Id="_1c456fba_5ed8_4cba_a898_b976230b4170"/>
            <ComponentRef Id="_a9c59c37_8e8b_40de_a3e2_af5e5521e5c0"/>
            <ComponentRef Id="_bd5ef741_f5b4_4049_8579_d51276ab3cc0"/>
            <ComponentRef Id="_733e8a7d_c892_4c16_a9fc_40c15d92f012"/>
            <ComponentRef Id="_91d56a63_02eb_49cd_a4e3_6a1643afe9d9"/>
            <ComponentRef Id="_a2341fa9_c0e0_43a7_a669_74271145c2a6"/>
            <ComponentRef Id="_6d9f95f2_9df7_453f_98db_157697cf1845"/>
            <ComponentRef Id="_ae279f6a_d574_4d68_a0dc_e250c691bea9"/>
            <ComponentRef Id="_faa15c79_cef4_402d_bcf7_eb21e18b5791"/>
            <ComponentRef Id="_c6baa620_a820_44b1_ad97_6215c5b8d1ad"/>
            <ComponentRef Id="_b28b12aa_8d9d_4c16_a840_770e4546b19b"/>
            <ComponentRef Id="_a375f8b0_0978_482a_93f2_017d21a635c1"/>
            <ComponentRef Id="_f4cbaf3c_848d_48d3_9037_89a1257fb110"/>
            <ComponentRef Id="_b29b285d_15e8_4038_a581_403d446d28bd"/>
            <ComponentRef Id="_64097527_9c88_449e_a128_2a2b039b11b6"/>
            <ComponentRef Id="_a2edaf5e_e424_406a_accf_dd241b8719e9"/>
            <ComponentRef Id="_0204cd13_f528_45b8_94a2_4e8f6abce503"/>
            <ComponentRef Id="_68dbc6e3_6958_443b_958c_dbb8faa0a63d"/>
            <ComponentRef Id="_4603dd29_a33c_4dec_b5c7_fc71f8e62fe7"/>
            <ComponentRef Id="_85842157_dc2b_4515_85c6_d6d6760dace1"/>
            <ComponentRef Id="_6c902535_ff51_4c92_bb09_a37a4b75316f"/>
            <ComponentRef Id="_a34443e6_d96e_4936_ab35_6b88e7a295b6"/>
            <ComponentRef Id="_9c11d433_50a3_44dd_a4ea_c3f266d2376b"/>
            <ComponentRef Id="_03c2a219_874d_4019_a127_ae9995a87212"/>
            <ComponentRef Id="_732e2db0_d16d_4475_b222_65403ff8bc70"/>
            <ComponentRef Id="_7a61c2f2_ff73_4de0_a991_6eada2229214"/>
            <ComponentRef Id="_ea7c54ca_0ca7_4f58_88a8_8e693c93aefd"/>
            <ComponentRef Id="_bfefd132_0dc3_46da_9e82_0d3a61c5a7cb"/>
            <ComponentRef Id="_19ccb83d_0990_4bcc_bf6a_d91ec989b566"/>
            <ComponentRef Id="_31ab77ef_f0f9_4874_8c2b_bb85d49814cc"/>
            <ComponentRef Id="_6d2301f3_ec05_4ec4_ab13_74003bb299fb"/>
            <ComponentRef Id="_4a8c9f2f_7c42_47b5_8a1e_088251d694f1"/>
            <ComponentRef Id="_de39eff2_eace_43e9_9ce9_e1c4a7caede1"/>
            <ComponentRef Id="_8dd4f71b_776b_40a0_bb4b_b7bb5a9e9bd3"/>
            <ComponentRef Id="_f3e01767_49e0_480c_bdb5_9b1a6cf5970a"/>
            <ComponentRef Id="_36604eb3_d8de_44ad_9bcc_189a7e0539fa"/>
            <ComponentRef Id="_ec5d33fe_e01e_455f_b361_62897ffdb85b"/>
            <ComponentRef Id="_9ec9bfff_b8ab_4f6e_a19d_93b5a19f55da"/>
            <ComponentRef Id="_0dfcd469_b863_4260_8d77_b8ead67553e5"/>
            <ComponentRef Id="_2b3c2e01_d96c_4a26_b197_e406badc197a"/>
            <ComponentRef Id="_52c6fca8_a63d_4a9e_8fff_84a31a346dd6"/>
            <ComponentRef Id="_cdcd66b5_ae25_44bf_81e7_006d3a75a996"/>
            <ComponentRef Id="_9b8c05c1_30bf_430a_95e0_c2f226426814"/>
            <ComponentRef Id="_a261fd84_7a8f_43fc_bf06_9c0812dfa7f3"/>
            <ComponentRef Id="_5732f8d4_bfd3_42b1_8f27_6aad0e28dc2e"/>
            <ComponentRef Id="_4686a2db_5c2a_412a_a00d_2c173235183f"/>
            <ComponentRef Id="_de2ea96f_e12a_4b71_b81a_ab7d0c0aa078"/>
            <ComponentRef Id="_4876af5b_6eec_4d0d_b4a8_194a203ec4bb"/>
            <ComponentRef Id="_f229b639_7b60_4220_8b06_7dc0dbcc700a"/>
            <ComponentRef Id="_9d438bff_586f_4a76_a29b_47c306b06d01"/>
            <ComponentRef Id="_73dfe30e_f1e0_4dde_b33b_0682ea98c073"/>
            <ComponentRef Id="_7e233872_52a0_478a_b047_e14bfced4a49"/>
            <ComponentRef Id="_25b16cd2_5cac_4350_9722_e029ba585ba4"/>
            <ComponentRef Id="_8ea12013_f519_40a2_8770_c6707eb0ed53"/>
            <ComponentRef Id="_3a063017_2e35_475c_b7a9_f6ac9c46ac67"/>
            <ComponentRef Id="_7842a106_2bc0_4953_b3cd_8c656390b0ed"/>
            <ComponentRef Id="_92b4a0f0_477c_4368_9207_63691822fd37"/>
            <ComponentRef Id="_cac795b4_f6ca_45a7_b494_b6b742d3a835"/>
            <ComponentRef Id="_a0580a66_2d69_49b2_92e8_7e311c09c6ca"/>
            <ComponentRef Id="_8b7cf01c_34eb_4ece_a691_277058cd0c08"/>
            <ComponentRef Id="_036fee43_48b8_49c8_8e79_840a2f07b96b"/>
            <ComponentRef Id="_438b1339_1d94_4add_86ce_e1356a015089"/>
            <ComponentRef Id="_0b3d2545_4831_4a4d_a506_63a6f713bbf2"/>
            <ComponentRef Id="_594731cb_5646_4c79_abcb_a7ab1f7d62c1"/>
            <ComponentRef Id="_c9f94407_c2ad_42d6_8729_928e07250e54"/>
            <ComponentRef Id="_731e9963_d9f2_476f_8b6e_1a6c504ca564"/>
            <ComponentRef Id="_4eca8970_bfbf_488d_96df_d3b012989b3a"/>
            <ComponentRef Id="_788d1ff3_b53b_474d_91ed_13535a9f7446"/>
            <ComponentRef Id="_c2ffd748_d2f7_4a05_b7ee_9924079046d0"/>
            <ComponentRef Id="_d767146c_0e15_4372_9bf8_6b37a88f30eb"/>
            <ComponentRef Id="_a20df358_8db2_4ff6_9e5e_82b66a7db6a7"/>
            <ComponentRef Id="_509971fd_03b3_4ec5_9a23_4c62f579ff0b"/>
            <ComponentRef Id="_c9fcaa41_9d60_4f8d_95c9_099d8892c4b2"/>
            <ComponentRef Id="_d02c1510_0317_4328_8673_921411190fd0"/>
            <ComponentRef Id="_e7c7432b_ea19_43eb_a195_3165ca82373e"/>
            <ComponentRef Id="_28b72a9d_7357_4e28_ae65_afe8892ff16b"/>
            <ComponentRef Id="_099b6601_dac4_4d2c_ab68_3039a8cebadc"/>
            <ComponentRef Id="_07425e88_a360_41e0_b8cb_66b5e6384435"/>
            <ComponentRef Id="_fe575d17_8be3_48ad_aee8_7e592af5c6a5"/>
            <ComponentRef Id="_04041a90_40ea_4874_989a_8ea6608cbc46"/>
            <ComponentRef Id="_ae035b00_b6a1_4b9c_9cce_fed58d3d3c63"/>
            <ComponentRef Id="_22802bd5_f073_4c32_883c_656d30bdb415"/>
            <ComponentRef Id="_19e025c4_ac0b_4e5d_a221_99feb9814f48"/>
            <ComponentRef Id="_fab01fca_be0d_4045_a4b9_9ae25c63836a"/>
            <ComponentRef Id="_d58da8d6_d1c5_42a3_a366_d1b8e89c4d69"/>
            <ComponentRef Id="_98923d4e_803c_4426_a492_b230b2e7e11f"/>
            <ComponentRef Id="_405fc911_6ffb_4033_90ad_e9294e7e9d44"/>
            <ComponentRef Id="_28df8d16_21f8_4c87_8670_09bde0e876ea"/>
            <ComponentRef Id="_727bb003_5f6c_403c_931d_004ba2fa7d0e"/>
            <ComponentRef Id="_853ee1bc_7c6d_4ff4_a3ec_d703681c6cf3"/>
            <ComponentRef Id="_c6f7254c_061e_4914_99dd_e91de2c875d7"/>
            <ComponentRef Id="_9ef82d18_68a6_450d_adab_2981dddd6301"/>
            <ComponentRef Id="_d5a72bd8_69e1_43bc_9411_30b621c033da"/>
            <ComponentRef Id="_5df42b63_36a5_436b_ba03_78e5aab6146e"/>
            <ComponentRef Id="_a5313366_27f7_4be3_95ed_89afe301bddd"/>
            <ComponentRef Id="_d9b773e7_1d46_4c5b_9287_a55faaaf2e27"/>
            <ComponentRef Id="_8d5c48a1_3308_4b1c_88fd_81272c29b3c6"/>
            <ComponentRef Id="_f6b11747_1533_45c7_ad7c_bc919dae69a4"/>
            <ComponentRef Id="_fcdcf397_2c52_4098_93e9_591a53c41a72"/>
            <ComponentRef Id="_032e120e_36f2_46fa_9923_b0eb405c6ab6"/>
            <ComponentRef Id="_91a93b4e_18e3_49bb_8bab_8e863dd8c058"/>
            <ComponentRef Id="_6b0a0dda_4061_4d36_9d32_2e3226c1f6cc"/>
            <ComponentRef Id="_c7953f76_d5ea_461a_a4c0_29c88fad4e87"/>
            <ComponentRef Id="_396ff9fa_7635_4dcc_8a19_35bb96db2008"/>
            <ComponentRef Id="_8133695c_c09c_4767_ba6e_4f48574e3bb5"/>
            <ComponentRef Id="_015a86bb_e54c_48f3_9401_00e5126cc2e5"/>
            <ComponentRef Id="_336655c4_6417_4796_9fe3_54929c510251"/>
            <ComponentRef Id="_355d86ef_7f2a_47f9_80e9_eae932bf0c13"/>
            <ComponentRef Id="_ec991bad_fcf0_47eb_ab0b_8b22d46bb0c9"/>
            <ComponentRef Id="_58c2fbff_1ece_4600_9ee4_13f8eaa89020"/>
            <ComponentRef Id="_4ff37af5_471a_45f8_8ca2_2cb5c83c76f1"/>
            <ComponentRef Id="_6a3f29fb_9df7_4005_b298_9aba5af48ec6"/>
            <ComponentRef Id="_c2e0d194_e88a_4ae6_b886_83d201c1034c"/>
            <ComponentRef Id="_d2367b04_a69f_4bf7_ad7b_84b4239dbb62"/>
            <ComponentRef Id="_fd0c333c_915e_4864_a042_695bcfc06b95"/>
            <ComponentRef Id="_318b9908_5d0f_4f91_8af5_0f74ed811518"/>
            <ComponentRef Id="_6c1264cd_df7f_47e0_a2ed_5e5cc060fd01"/>
            <ComponentRef Id="_adaf496a_488f_4e07_9df4_dea6c8cf0565"/>
            <ComponentRef Id="_22519e1e_c911_4f88_a0aa_34e09abb0c00"/>
            <ComponentRef Id="_072e1de2_8762_4136_861d_4924b6d61bdc"/>
            <ComponentRef Id="_c7bfaedb_143d_4c09_861d_d1461436931c"/>
            <ComponentRef Id="_6769aaa0_6bc0_48d6_aff1_012114c0cddc"/>
            <ComponentRef Id="_affa4252_e7b2_4289_ab0c_f8b8b7f95a47"/>
            <ComponentRef Id="_50b81a2f_bcee_47e2_a860_c5ace989b914"/>
            <ComponentRef Id="_a33ed8b0_6080_49bc_afec_c2aece21465b"/>
            <ComponentRef Id="_975807d8_1ced_441d_9930_447c103986bc"/>
            <ComponentRef Id="_fbecb37c_45a1_49f3_9189_284854ff0145"/>
            <ComponentRef Id="_15d17ea7_e48f_4b5a_8224_62c4d462301d"/>
            <ComponentRef Id="_223de143_3816_4af9_bd40_38458611d398"/>
            <ComponentRef Id="_1de7e6d6_21f2_4325_ad32_46c75ef7af87"/>
            <ComponentRef Id="_55608a57_829c_4e45_b998_af9ba4514a76"/>
            <ComponentRef Id="_113319af_aea3_4812_9a96_194b09a9bbb0"/>
            <ComponentRef Id="_3769ae6f_f3ff_4980_8ab6_79501b48b8a9"/>
            <ComponentRef Id="_c493a45d_91d3_402f_a0f0_a70fb2db6214"/>
            <ComponentRef Id="_5714ba5a_f667_40b5_b715_2e0d819a8ff8"/>
            <ComponentRef Id="_1abcafa0_31c6_47fe_98c9_c9f2f681bad8"/>
            <ComponentRef Id="_d5cc17ae_4c94_4525_936b_cf06ecb823e1"/>
            <ComponentRef Id="_1c42a1e6_8f9d_4163_a2e7_6167f96affcb"/>
            <ComponentRef Id="_d29d55e1_7d87_44c6_8d31_343e29f8f338"/>
            <ComponentRef Id="_994c62e0_9647_4ec3_9962_e6de04168860"/>
            <ComponentRef Id="_b20026cf_b5a2_4077_9166_bba44e9770a8"/>
            <ComponentRef Id="_861e0a92_d371_40e2_ae90_4e6912a01266"/>
            <ComponentRef Id="_01d64f2e_aa9d_4c17_a2a0_915370eab1f1"/>
            <ComponentRef Id="_5ca65a73_7204_427f_9008_e79df8db14f1"/>
            <ComponentRef Id="_18125d15_81fc_463a_a408_5bf593c7f0df"/>
            <ComponentRef Id="_6dfd875a_4c94_4e70_b0a6_303235652401"/>
            <ComponentRef Id="_ad48ec10_e40c_4bb8_a864_77a444226ee0"/>
            <ComponentRef Id="_198a0fdc_89e6_4136_9dc8_e442ed457028"/>
            <ComponentRef Id="_771f759d_6627_4ee2_84fd_b1ee6fca47f3"/>
            <ComponentRef Id="_8338e5d4_ec09_41bb_b598_443be3132be7"/>
            <ComponentRef Id="_0d79dac8_9f23_4038_a434_6f92e14d0c94"/>
            <ComponentRef Id="_1a01e679_1fce_4fdd_93fb_f6bd8c20e8ca"/>
            <ComponentRef Id="_79ad33c1_c61a_46e3_8c06_7d4cfe09d9e2"/>
            <ComponentRef Id="_45620c94_073c_4486_80cd_93a79924a4d3"/>
            <ComponentRef Id="_3c628376_55ea_4f50_b6e2_75a9978c9d9b"/>
            <ComponentRef Id="_e575d110_a69f_45e9_b4f6_5ed0ff61eead"/>
            <ComponentRef Id="_7f9468d5_2f25_46df_800c_992852449b43"/>
            <ComponentRef Id="_11a5be39_7e13_427d_b334_386b745a28f6"/>
            <ComponentRef Id="_3a7a0ea0_495a_4fc7_8b05_1a3da35f98af"/>
            <ComponentRef Id="_f11180eb_8624_4d58_bacb_abd296606e5c"/>
            <ComponentRef Id="_007e2461_d4a8_47d2_b14c_191a4d400fa6"/>
            <ComponentRef Id="_94e6b1f1_762f_4c84_b98b_3c0885430000"/>
            <ComponentRef Id="_b5f48292_35c5_4c3f_8e02_789d092d96a0"/>
            <ComponentRef Id="_e648b9c7_d682_4d8c_852f_2847c9043ab3"/>
            <ComponentRef Id="_9f3cf1ed_d0e1_4b56_b0b1_b93cadbf2431"/>
            <ComponentRef Id="_073d1a5a_a701_4cc8_8b9f_6d1ff1058b2b"/>
            <ComponentRef Id="_9230aa91_dbfe_4ad9_914f_67b31ab3f88f"/>
            <ComponentRef Id="_88674d3b_1c78_4e31_9885_ecd6623e256f"/>
            <ComponentRef Id="_7f4e7380_cdf2_4e5c_bb26_470cd598dc12"/>
            <ComponentRef Id="_883e32f8_a0ab_49b8_9b3b_8696ef3dcbea"/>
            <ComponentRef Id="_718c37ef_c59b_4123_aafb_e03e2580e0e5"/>
            <ComponentRef Id="_df7452d5_5c74_4472_b47d_da57f00ab33f"/>
            <ComponentRef Id="_37032471_082d_461c_a45d_484924b95fce"/>
            <ComponentRef Id="_c81636f9_2e99_4c03_af85_7017d566baa3"/>
            <ComponentRef Id="_5309a965_a04b_428d_9440_0d15d75ed4a3"/>
            <ComponentRef Id="_011f20e2_0e88_425f_a50b_d106a8cfdfae"/>
            <ComponentRef Id="_a26b3cbf_38a2_4cf7_b670_856705e04028"/>
            <ComponentRef Id="_50b5e85b_39fa_4de9_a9e1_27ac42536fe8"/>
            <ComponentRef Id="_2891910c_9f4a_4be7_ae0d_bc51851a08cf"/>
            <ComponentRef Id="_795e4311_bcf8_4719_9f3c_9766353593df"/>
            <ComponentRef Id="_9a401911_2cad_4190_b5c7_86d54ad28312"/>
            <ComponentRef Id="_a845eafc_3b1d_4324_b61d_65801d9f3934"/>
            <ComponentRef Id="_d46e53b9_746d_41b8_8d5a_6539e9eff230"/>
            <ComponentRef Id="_c6ef3fdb_2dca_4676_ae24_8ff67b9ee82e"/>
            <ComponentRef Id="_626f4d18_76dc_4fef_8f2a_21d1c18a2bf2"/>
            <ComponentRef Id="_168adbc6_2d62_416c_af96_c877f4d0a2e2"/>
            <ComponentRef Id="_259572b9_8a63_4171_bbbf_598538ea569f"/>
            <ComponentRef Id="_9f494996_9efc_4140_bc65_96422edf44e8"/>
            <ComponentRef Id="_ada4176a_f3d7_4799_90f8_0ab7a5b546fd"/>
            <ComponentRef Id="_84fedff2_21a3_4fc0_8e32_46e24d75cf9f"/>
            <ComponentRef Id="_5faaaa8f_667f_447c_bea1_46ce8441e86f"/>
            <ComponentRef Id="_a3297936_2c8c_4b29_9caa_5f1fdea366da"/>
            <ComponentRef Id="_abd78be9_14a9_486e_8d82_188ce78c0887"/>
            <ComponentRef Id="_811f164a_e92e_4b3e_9e88_32f1aae73f45"/>
            <ComponentRef Id="_d50895ed_1d3e_47a2_9ba2_ad65389db3b0"/>
            <ComponentRef Id="_439cb2d2_5a4b_43f8_9f33_7eec4595bae6"/>
            <ComponentRef Id="_e3bf8ad0_1613_48c0_80fe_413bb96736a1"/>
            <ComponentRef Id="_4199e8ce_b07d_4bc7_80a5_804560a1dda8"/>
            <ComponentRef Id="_f941efab_3728_48a5_b9db_8e5bb05efeae"/>
            <ComponentRef Id="_8a098723_3a0b_4b07_9a5a_0cc0e527c4e2"/>
            <ComponentRef Id="_38c5803f_d706_4a92_ba26_2df336283feb"/>
            <ComponentRef Id="_e41a132e_139a_4932_915e_b4608d07e4d0"/>
            <ComponentRef Id="_fd53fb9e_ca8a_4e41_8751_00ce7383d8bb"/>
            <ComponentRef Id="_5f3df7d6_fa0e_44ac_85ad_f136a6359c39"/>
            <ComponentRef Id="_17aa9f78_d402_42a0_9676_ac669cdc2a84"/>
            <ComponentRef Id="_72663b60_3cbc_427e_af32_ca5cf1cf85aa"/>
            <ComponentRef Id="_35d9852d_8ab9_4740_9f74_9424ada2f2ca"/>
            <ComponentRef Id="_9d361ca2_18b7_422e_bd3a_b1f6018c7fb5"/>
            <ComponentRef Id="_d86a2bc1_add9_4ec4_ab25_50f2850bd8ec"/>
            <ComponentRef Id="_d1c08e10_4f0e_48bb_bcd5_62a47f892ddb"/>
            <ComponentRef Id="_a02376a5_19dd_46aa_b0d0_23838719e940"/>
            <ComponentRef Id="_f2b8a504_bb33_4841_9ca1_d8beb680de95"/>
            <ComponentRef Id="_23dc1563_f24b_4e3a_82d3_db4e187bbf9a"/>
            <ComponentRef Id="_a54d063b_9c1e_449c_8361_926772b7f9e2"/>
            <ComponentRef Id="_7813da7f_06cd_43fd_8e3d_5c9cb2197b95"/>
            <ComponentRef Id="_81468c10_09ca_41c1_9a93_c0ff6d45c52b"/>
            <ComponentRef Id="_e344c728_5730_4901_8fd0_5d4985096d43"/>
            <ComponentRef Id="_c5f71dd8_55f7_4469_a98c_a1e0ed65f6ec"/>
            <ComponentRef Id="_18b7deea_c3bf_4d92_a36e_d454e333f2d7"/>
            <ComponentRef Id="_97400b11_8a1b_4332_aba9_c3c9ef6c908c"/>
            <ComponentRef Id="_f72fd0b4_ed2b_4719_a9ea_e0d428e5424c"/>
            <ComponentRef Id="_6d32b2b1_9b9d_4195_a052_478bba8ed53b"/>
            <ComponentRef Id="_1bdcb616_c8fd_47c1_91ac_3c2280d5aed9"/>
            <ComponentRef Id="_3eabb330_c6b1_4ce6_9e6c_fa61c8e17dd8"/>
            <ComponentRef Id="_b568892d_ca03_40d5_bb6c_f6c4b5aa3259"/>
            <ComponentRef Id="_63a47423_b3fc_47d4_a9c1_e9b11ca360f9"/>
            <ComponentRef Id="_6eb24fc6_4009_40da_ac30_a9653d1aa9d0"/>
            <ComponentRef Id="_35481d1e_a390_4e6d_88cd_f3f13dfee986"/>
            <ComponentRef Id="_7f6ce12c_057d_4119_8cba_d4eb5d381265"/>
            <ComponentRef Id="_f98704a1_1e25_415d_9ef5_adbb52813e88"/>
            <ComponentRef Id="_c0e0eae4_cf54_4889_a85d_f79de4f96496"/>
            <ComponentRef Id="_01e2772a_9da3_46d0_8339_92f550bb9a15"/>
            <ComponentRef Id="_6c39a620_7b6f_4c84_98f6_f1f0232b5504"/>
            <ComponentRef Id="_1bb65e9a_3895_4ca2_a7e6_515eb1fd653d"/>
            <ComponentRef Id="_24bcc2e0_9dfc_4c8f_a25f_44a85e06322f"/>
            <ComponentRef Id="_d2c50ecf_1294_47f8_b866_b90cf5964e70"/>
            <ComponentRef Id="_a654ea1b_b71f_4385_b270_e1946abfd8bf"/>
            <ComponentRef Id="_89e20b74_6f15_464a_b05e_4f39a5e875ed"/>
            <ComponentRef Id="_1ccb76c0_f93c_4679_af70_5c7f2e31e975"/>
            <ComponentRef Id="_bd94837e_0949_4b8b_b2c2_2288a1ac442d"/>
            <ComponentRef Id="_0100651c_57d0_49cc_9d56_bf614cf88c7a"/>
            <ComponentRef Id="_cab394c4_a30d_4f95_9f0c_5b699b7dd683"/>
            <ComponentRef Id="_4bf7ec50_b136_47e7_9e68_513eefdbcd95"/>
            <ComponentRef Id="_1514a8ad_4067_4e13_bce2_6bbe3b7cf90f"/>
            <ComponentRef Id="_9ad838e2_4d21_4dc6_b9a5_a4ab1b0bcbcf"/>
            <ComponentRef Id="_2377c27a_0c6f_41e4_b732_a2595a23e6a3"/>
            <ComponentRef Id="_c954bf53_76e2_449a_9e4a_6d8a2ca298df"/>
            <ComponentRef Id="_7f818a54_0d4d_47ba_b43a_843909a8f0ab"/>
            <ComponentRef Id="_4be74de2_4ea7_4ad5_9642_0963bc839889"/>
            <ComponentRef Id="_d4c72fdd_f5d1_4dcc_9135_c52f88f1adc1"/>
            <ComponentRef Id="_f29f914e_0a62_45e5_be7c_e3e5d69f5947"/>
            <ComponentRef Id="_5b3f9560_59a9_4401_a00d_044276716133"/>
            <ComponentRef Id="_3bb27e92_cf07_48d0_80ad_26a830591289"/>
            <ComponentRef Id="_eb2c47b7_6462_4aeb_b47b_34d76ade2905"/>
            <ComponentRef Id="_82592f09_8fb6_4e61_b0c6_3ec2bc2313d4"/>
            <ComponentRef Id="_6e6d4baf_f4a0_4c0e_9b7f_70b6f2f6d367"/>
            <ComponentRef Id="_2e746eb6_39f3_4313_a73e_fbc1cbf92c01"/>
            <ComponentRef Id="_29c54202_1224_499b_8105_aa8504f61795"/>
            <ComponentRef Id="_6c8a3f00_cffa_41d5_b490_96bdf3b2cec6"/>
            <ComponentRef Id="_0137febd_72cf_4b8a_b096_bb06f6f5e0f7"/>
            <ComponentRef Id="_35c3d004_ebe4_4cff_8bb7_98e16a51254c"/>
            <ComponentRef Id="_2a6f369f_fdc0_4106_b484_1e78790ef4b3"/>
            <ComponentRef Id="_2fdba9dc_39ed_480a_849c_e161988cc151"/>
            <ComponentRef Id="_a7e356e6_fa55_433c_9f52_79724b549931"/>
            <ComponentRef Id="_f312ad6c_87a1_461b_8606_22746b0d418f"/>
            <ComponentRef Id="_fa0419cf_9a09_43ec_ba01_a89311ccda40"/>
            <ComponentRef Id="_5a97e7a8_b38c_48ba_9d3f_f9fa15793b28"/>
            <ComponentRef Id="_7b317768_f92a_468b_8917_18260c471846"/>
            <ComponentRef Id="_7ab79f0b_721a_47a5_bafd_03408eeb8f6c"/>
            <ComponentRef Id="_25335d09_469e_423c_91a5_f578060678a3"/>
            <ComponentRef Id="_73db5398_081e_4164_9d5b_77367e5f1792"/>
            <ComponentRef Id="_9bf5c2a8_3f1a_4a2b_8641_27959be832c4"/>
            <ComponentRef Id="_7ce9019b_b4fe_497c_8578_02378e25509c"/>
            <ComponentRef Id="_d57dbeda_069d_4110_ae7c_47283162f196"/>

            <Feature Id="jmc_env" Absent="allow" AllowAdvertise="no" Level="2"
                     Title="PATH Variable"
                     Description="Appends '&lt;jdk&gt;/jmc' to the 'PATH' system environment variable."
                     xmlns="http://schemas.microsoft.com/wix/2006/wi">
                <ComponentRef Id="jmc_env_path_comp"/>
            </Feature>

        </Feature>
    </xsl:template>
</xsl:stylesheet>
