# QuarkChain 挖矿教程
简单署QuarkChain 测试网2.0 挖矿脚本 macOS版本

### 部署云服务器 Linux [脚本](https://www.jianshu.com/p/14287ab02cf1)
### GitHub [源代码](https://github.com/HangyuYe/QKC-Miner/tree/master/linux)

## 步骤
1. 安装Docker环境

* 系统要求：macOS El Capitan 10.11 以上，并且具有 4GB以上内存

* 下载地址：[官网下载地址](https://store.docker.com/editions/community/docker-ce-desktop-mac)

* 下载完成以后打开一个 .dmg的文件并且将它拖到应用软件当中。

* 打开"Docker.app"

2. 准备QKC地址，或者一个ETH地址

获取QKC地址：[主网](https://mainnet.quarkchain.io)

3. 打开"终端.app" 或者是用搜索"terminal.app" 复制下面指令

```bash
git clone https://github.com/HangyuYe/QKC-Miner.git
cd QKC-Miner
bash miner_install.sh
```
大约需要10分钟左右安装所有模块

<!-- 4. 等待安装完成会要求你输入你的挖矿地址：

然后粘贴你的ETH或者QKC钱包地址按回车！

等待同步区块数据，官方每12小时会同步一次区块数据，然后上传到服务器中，所以只需要下载12小时以内的数据就可完成同步。

等待同步标签"Syncing"变为"False"挖矿助手就会询问你是否开始挖矿，输入y确定。

然后就开始挖矿了

**Mac端的一键启动GUI版正在构建中。。。敬请期待！**

## 常见功能
单独启动挖矿功能：
```bash
bash miner/miner_mining.sh
```

关闭挖矿
```bash
bash miner/miner_stoper.sh
``` -->
