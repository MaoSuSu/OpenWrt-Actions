# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 修改默认登录密码
sed -i 's/root:$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow

# 修改主机名
sed -i 's/OpenWrt/MaoSuOS/g' package/base-files/files/bin/config_generate

# 修改WIFI名
sed -i 's/OpenWrt/MaoSu/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改WIFI区域代码
sed -i 's/US/CN/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 注释检查软件签名并添加自定义软件源
sed -i 's/check_signature 1/check_signature 0/g' package/system/opkg/files/opkg-smime.conf
echo 'src/gz openwrt_kiddin9 https://op.supes.top/packages/aarch64_cortex-a53' >>package/system/opkg/files/customfeeds.conf

#修正连接数
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf