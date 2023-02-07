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
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Add luci-theme-design theme
git clone https://github.com/gngpp/luci-theme-design.git  package/luci-theme-design

# 添加 OpenAppFilter 应用过滤插件
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config

#git lua-maxminddb 依赖
git clone https://github.com/jerrykuku/lua-maxminddb.git
