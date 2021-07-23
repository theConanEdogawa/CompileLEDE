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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

########################################
sed -i 's?cache-min-ttl=3600?cache-min-ttl=60?' package/lean/luci-app-turboacc/root/etc/init.d/turboacc;
sed -i 's?tls://9.9.9.9?tls://223.5.5.5 -b tls://223.6.6.6?' package/lean/luci-app-turboacc/root/etc/init.d/turboacc;
sed -i 's?tls://8.8.8.8?tls://162.14.21.178?' package/lean/luci-app-turboacc/root/etc/init.d/turboacc;
sed -i 's?"tls://162.14.21.178"?& -f "tls://223.5.5.5" -f "tls://223.6.6.6"?' package/lean/luci-app-turboacc/root/etc/init.d/turboacc
