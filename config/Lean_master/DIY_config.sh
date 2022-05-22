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
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Add luci-app-amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic

# Add luci-app-vssr
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/other/vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git  package/other/Maxminddb
git clone https://github.com/fw876/helloworld  package/other/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall package/other/passwall

# Add luci-app-oaf
git clone https://github.com/destan19/OpenAppFilter.git package/other/oaf
