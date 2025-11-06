#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#qmodem
echo 'src-git qmodem https://github.com/FUjr/QModem.git;main' >> feeds.conf.default
./scripts/feeds update qmodem
./scripts/feeds install -a -p qmodem
#passwall
echo 'src-git lienol https://github.com/Lienol/openwrt-package.git;main' >> feeds.conf.default
echo 'src-git other https://github.com/Lienol/openwrt-package.git;other' >> feeds.conf.default
echo 'src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages' >> feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' >> feeds.conf.default
#ddns

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

