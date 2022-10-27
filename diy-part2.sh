#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile



# 修改所需的文件
sed -i 's/luci-app-samba4/luci-app-samba/g' package/lean/autosamba/Makefile
sed -i 's/luci-app-unblockmusic//g' target/linux/ipq40xx/Makefile
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET=\"iso8859-1\"/CONFIG_FAT_DEFAULT_IOCHARSET=\"utf8\"/g' target/linux/generic/config-6.0
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET=\"iso8859-1\"/CONFIG_FAT_DEFAULT_IOCHARSET=\"utf8\"/g' target/linux/generic/config-5.4
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET=\"iso8859-1\"/CONFIG_FAT_DEFAULT_IOCHARSET=\"utf8\"/g' target/linux/generic/config-5.15
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET=\"iso8859-1\"/CONFIG_FAT_DEFAULT_IOCHARSET=\"utf8\"/g' target/linux/generic/config-5.10
