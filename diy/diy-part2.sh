# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 修改默认IP
sed -i 's/10.10.10.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 修改默认登录密码
sed -i 's/root:$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow

# 修改主机名
sed -i 's/OpenWrt/MaoSuOS/g' package/base-files/files/bin/config_generate

# 修改WIFI名
sed -i 's/OpenWrt/MaoSu/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改WIFI区域代码
sed -i 's/US/CN/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh