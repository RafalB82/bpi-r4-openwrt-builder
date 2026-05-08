#!/bin/bash
#my_compilation
\cp -rf my_files/mt7988a.dtsi openwrt/target/linux/mediatek/files-6.6/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
\cp -rf my_files/mt7988a-bananapi-bpi-r4.dtsi openwrt/target/linux/mediatek/files-6.6/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dtsi
#\cp -rf my_files/999-2764-net-phy-sfp-add-some-FS-copper-SFP-fixes.patch openwrt/target/linux/mediatek/patches-6.6/999-2764-net-phy-sfp-add-some-FS-copper-SFP-fixes.patch
#\cp -rf my_files/500-tx_power.patch mtk-openwrt-feeds/autobuild/unified/filogic/mac80211/24.10/files/package/firmware/wireless-regdb/patches
#\cp -rf my_files/99999_tx_power_check_by_dan_pawlik.patch mtk-openwrt-feeds/autobuild/unified/filogic/mac80211/24.10/files/package/kernel/mt76/patches/
\cp -rf my_files/.config openwrt/.config

cd openwrt/
git clone --depth 1 --branch master --single-branch --no-tags --recurse-submodules https://github.com/fantastic-packages/packages package/fantastic_packages
#bash ../mtk-openwrt-feeds/autobuild/unified/autobuild.sh filogic-mac80211-mt7988_rfb-mt7996
#
bash ../mtk-openwrt-feeds/autobuild/unified/autobuild.sh build
