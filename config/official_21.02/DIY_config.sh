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

# Add 
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adbyby-plus package/other/luci-app-adbyby-plus
svn co https://github.com/kiddin9/openwrt-packages/trunk/adbyby package/depend/adbyby
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/other/luci-app-adguardhome
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/other/luci-app-amlogic
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-arpbind package/other/luci-app-arpbind
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-autoreboot package/other/luci-app-autoreboot
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-diskman package/other/luci-app-diskman
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/other/luci-app-jd-dailybonus
git clone https://github.com/destan19/OpenAppFilter.git package/other/luci-app-oaf
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ramfree package/other/luci-app-ramfree
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/other/luci-app-turboacc
svn co https://github.com/kiddin9/openwrt-packages/trunk/pdnsd-alt package/depend/pdnsd-alt
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsforwarder package/depend/dnsforwarder
svn co https://github.com/kiddin9/openwrt-packages/trunk/shortcut-fe package/depend/shortcut-fe
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsproxy package/depend/dnsproxy
# 提示缺少ucode
# git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/other/luci-app-unblockneteasemusic
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockneteasemusic package/other/luci-app-unblockneteasemusic
git clone https://github.com/jerrykuku/luci-app-vssr.git package/other/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/other/Maxminddb
git clone https://github.com/fw876/helloworld  package/other/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall package/other/passwall
svn co https://github.com/kiddin9/openwrt-packages/trunk/redsocks2 package/depend/redsocks2
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-wrtbwmon package/other/luci-app-wrtbwmon
svn co https://github.com/kiddin9/openwrt-packages/trunk/wrtbwmon package/depend/wrtbwmon
git clone https://github.com/kiddin9/luci-theme-edge package/other/luci-theme-edge
git clone https://github.com/kenzok8/luci-theme-ifit.git package/other/luci-theme-ifit
git clone https://github.com/jerrykuku/luci-theme-argon.git package/other/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/other/luci-app-argon-config

./scripts/feeds update -a
./scripts/feeds install -a
