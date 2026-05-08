#!/bin/bash
#my_compilation

# Argon theme
if [ ! -d openwrt/package/luci-theme-argon ]; then
    git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git openwrt/package/luci-theme-argon
fi

\cp -rf my_files/mt7988a.dtsi openwrt/target/linux/mediatek/files-6.6/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
\cp -rf my_files/mt7988a-bananapi-bpi-r4.dtsi openwrt/target/linux/mediatek/files-6.6/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dtsi
\cp -rf my_files/.config openwrt/.config

cd openwrt/

# fantastic_packages
if [ ! -d package/fantastic_packages ]; then
    git clone --depth 1 --branch master --single-branch --no-tags --recurse-submodules https://github.com/fantastic-packages/packages package/fantastic_packages
fi

bash ../mtk-openwrt-feeds/autobuild/unified/autobuild.sh build
