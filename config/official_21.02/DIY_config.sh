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
svn co https://github.com/kiddin9/openwrt-packages/trunk/adbyby package/other/adbyby
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/other/luci-app-amlogic
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-arpbind package/other/luci-app-arpbind
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-autoreboot package/other/luci-app-autoreboot
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/other/luci-app-jd-dailybonus
git clone https://github.com/destan19/OpenAppFilter.git package/other/luci-app-oaf
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ramfree package/other/luci-app-ramfree
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ssr-plus package/other/luci-app-ssr-plus
# svn co https://github.com/kiddin9/openwrt-packages/trunk/naiveproxy package/other/naiveproxy
svn co https://github.com/kiddin9/openwrt-packages/trunk/shadowsocks-rust package/other/shadowsocks-rust
svn co https://github.com/kiddin9/openwrt-packages/trunk/shadowsocksr-libev package/other/shadowsocksr-libev
svn co https://github.com/kiddin9/openwrt-packages/trunk/simple-obfs package/other/simple-obfs
svn co https://github.com/kiddin9/openwrt-packages/trunk/tcping package/other/tcping
svn co https://github.com/kiddin9/openwrt-packages/trunk/trojan package/other/trojan
svn co https://github.com/kiddin9/openwrt-packages/trunk/v2ray-plugin package/other/v2ray-plugin
svn co https://github.com/kiddin9/openwrt-packages/trunk/redsocks2 package/other/redsocks2
svn co https://github.com/kiddin9/openwrt-packages/trunk/dns2socks package/other/dns2socks
svn co https://github.com/kiddin9/openwrt-packages/trunk/microsocks package/other/microsocks
svn co https://github.com/kiddin9/openwrt-packages/trunk/pdnsd-alt package/other/pdnsd-alt
svn co https://github.com/kiddin9/openwrt-packages/trunk/ipt2socks package/other/ipt2socks
svn co https://github.com/kiddin9/openwrt-packages/trunk/v2ray-core package/other/v2ray-core
svn co https://github.com/kiddin9/openwrt-packages/trunk/v2ray-geodata package/other/v2ray-geodata
svn co https://github.com/kiddin9/openwrt-packages/trunk/v2raya package/other/v2raya
svn co https://github.com/kiddin9/openwrt-packages/trunk/xray-core package/other/xray-core
svn co https://github.com/kiddin9/openwrt-packages/trunk/xray-plugin package/other/xray-plugin
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/other/luci-app-turboacc
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsforwarder package/other/dnsforwarder
svn co https://github.com/kiddin9/openwrt-packages/trunk/shortcut-fe package/other/shortcut-fe
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsproxy package/other/dnsproxy
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vsftpd package/other/luci-app-vsftpd
svn co https://github.com/kiddin9/openwrt-packages/trunk/vsftpd-alt package/other/vsftpd-alt
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vssr package/other/luci-app-vssr
svn co https://github.com/kiddin9/openwrt-packages/trunk/lua-maxminddb package/other/lua-maxminddb
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-wrtbwmon package/other/luci-app-wrtbwmon
svn co https://github.com/kiddin9/openwrt-packages/trunk/wrtbwmon package/other/wrtbwmon
svn co https://github.com/kiddin9/openwrt-packages/trunk/netdata package/other/netdata
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-netdata package/other/luci-app-netdata
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-theme-argon package/other/luci-theme-argon
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-argon-config package/other/luci-app-argon-config
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-theme-edge package/other/luci-theme-edge
git clone https://github.com/kenzok8/luci-theme-ifit.git package/other/luci-theme-ifit

# svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ssr-plus package/other/luci-app-ssr-plus
svn co https://github.com/kenzok8/openwrt-packages/trunk/naiveproxy package/other/naiveproxy
# git clone https://github.com/kenzok8/small.git package/other/small

./scripts/feeds update -a
./scripts/feeds install -a
