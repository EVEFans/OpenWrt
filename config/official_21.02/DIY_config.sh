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

# Add (晶晨宝盒)luci-app-amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic

# 家长管理插件，支持游戏、视频、聊天、下载等app过滤
git clone https://github.com/destan19/OpenAppFilter.git package/oaf

# 京东签到插件
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/jd
