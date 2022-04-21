# 自动构建 K2P/GeHua/AX6 OpenWrt 固件脚本

**每周自动通过 Github Actions 进行云编译，并发布为当日日期版本**

![手动触发OpenWrt固件云编译](https://github.com/ylqjgm/OpenWrt-Actions/workflows/%E6%89%8B%E5%8A%A8%E8%A7%A6%E5%8F%91OpenWrt%E5%9B%BA%E4%BB%B6%E4%BA%91%E7%BC%96%E8%AF%91/badge.svg) ![OpenWrt 固件自动云编译](https://github.com/ylqjgm/OpenWrt-Actions/workflows/OpenWrt%20%E5%9B%BA%E4%BB%B6%E8%87%AA%E5%8A%A8%E4%BA%91%E7%BC%96%E8%AF%91/badge.svg) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/ylqjgm/openwrt-actions) ![GitHub repo size](https://img.shields.io/github/repo-size/ylqjgm/openwrt-actions) ![GitHub All Releases](https://img.shields.io/github/downloads/ylqjgm/openwrt-actions/total)

## 使用方法

1. 将本项目 **Fork** 到自己帐号
2. 修改 **config** 目录下的配置信息
3. 每周自动编译，或按照下方手动出发方式进行编译

## 手动触发

1. 在 **config** 下创建架构目录，如 `N1`
2. 目录中至少包含 `.config`、`settings.ini` 两个文件，分别代表 **OpenWrt** 配置信息及编译配置信息
3. 若需要更多自定义，请自行增加 `diy`、`files`、`patches` 目录及 `diy1.sh`、`diy2.sh`、`organizer.sh` 三个文件
4. 在 **Actions** 中找到 **手动触发OpenWrt固件云编译** 这个项目，并点击右边的 **Run workflow**，在弹出的窗口内输入自己在 `config` 目录下创建的架构目录名称，必须区分大小写，随后点击绿色按钮即可