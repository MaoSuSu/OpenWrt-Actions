#!/bin/bash

# 写入emmc
git clone https://github.com/tuanqing/install-program package/install-program
# 主题
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
# dockerman
svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/luci-app-dockerman
# dnsfilter
git clone https://github.com/garypang13/luci-app-dnsfilter.git package/lean/luci-app-dnsfilter
