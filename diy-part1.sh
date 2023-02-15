#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# fix qca-nss-clients-64
rm /workdir/openwrt/package/qca/nss/qca-nss-clients-64/Makefile
wget -P /workdir/openwrt/package/qca/nss/qca-nss-clients-64 https://raw.githubusercontent.com/coolsnowwolf/lede/4ae038fae6c13f5ef334dc306a8e3cda615299ac/package/qca/nss/qca-nss-clients-64/Makefile
