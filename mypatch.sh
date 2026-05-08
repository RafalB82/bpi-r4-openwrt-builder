#!/bin/bash
#my_compilation
\cp -rf my_files/mt7988a.dtsi openwrt/target/linux/mediatek/files-6.6/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
\cp -rf my_files/mt7988a-bananapi-bpi-r4.dtsi openwrt/target/linux/mediatek/files-6.6/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dtsi
\cp -rf my_files/.config openwrt/.config

cd openwrt/
git clone --depth 1 --branch master --single-branch --no-tags --recurse-submodules https://github.com/fantastic-packages/packages package/fantastic_packages
bash ../mtk-openwrt-feeds/autobuild/unified/autobuild.sh build
