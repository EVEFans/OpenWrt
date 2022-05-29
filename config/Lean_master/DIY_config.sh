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
sed -i 's/192.168.1.1/10.10.10.10/g' package/base-files/files/bin/config_generate

#add
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/other/luci-app-amlogic
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/other/luci-app-jd-dailybonus
git clone https://github.com/destan19/OpenAppFilter.git package/other/luci-app-oaf
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-unblockneteasemusic package/other/luci-app-unblockneteasemusic
git clone https://github.com/jerrykuku/luci-app-vssr.git package/other/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/other/Maxminddb
git clone https://github.com/sirpdboy/netspeedtest package/other/netspeedtest
git clone https://github.com/kenzok8/luci-theme-ifit.git package/other/luci-theme-ifit
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argonne package/other/luci-theme-argonne
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-argonne-config package/other/luci-app-argonne-config

./scripts/feeds update -a
./scripts/feeds install -a
