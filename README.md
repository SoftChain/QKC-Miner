# QuarkChain 挖矿教程
简单署QuarkChain 测试网2.0 挖矿脚本 macOS版本

### 部署云服务器 Linux [脚本](https://github.com/HangyuYe/QKC-Miner/linux/README.mb)

## 步骤
1. 安装Docker环境

* 系统要求：macOS El Capitan 10.11 以上，并且具有 4GB以上内存

* 下载地址：[官网下载地址](https://store.docker.com/editions/community/docker-ce-desktop-mac)

* 下载完成以后打开一个 .dmg的文件并且将它拖到应用软件当中。

* 打开"Docker.app"

2. 准备QKC地址，或者一个ETH地址

获取QKC地址：[Testnet](https://testnet2.quarkchain.io)

3. 打开"终端.app" 或者是用搜索"terminal.app" 复制下面指令

```bash
git clone https://github.com/HangyuYe/QKC-Miner.git
cd QKC-Miner
bash miner/pull_image.sh
```

大约需要10分钟左右安装所有模块

4. 等待安装完成以后复制以下代码：

```bash
bash miner/setup_cluster.sh
```
然后粘贴你的ETH或者QKC钱包地址按回车！

等待大概1小时左右区块会同步完成，当出现一堆下面这样的字符，大概率是同步完成了：
```bash
SLAVE_S4: I1210 07:07:48.083341 shard.py:143] [4] received new header with height 55975
SLAVE_S4: I1210 07:07:48.084656 shard.py:143] [4] received new header with height 55975
SLAVE_S4: I1210 07:07:48.130340 shard.py:143] [4] received new header with height 55975
SLAVE_S4: I1210 07:07:48.141338 shard.py:143] [4] received new header with height 55975
SLAVE_S4: I1210 07:07:48.162544 shard.py:143] [4] received new header with height 55975
SLAVE_S3: I1210 07:07:48.402317 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.411519 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.419670 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.421109 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.430198 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.460486 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.461145 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.461504 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.496441 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.503141 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.505479 shard.py:143] [3] received new header with height 55974
SLAVE_S3: I1210 07:07:48.558459 shard.py:143] [3] received new header with height 55974
```

##### 注意看一下后面的数字是不是跟目前的区块高度相符

5. 准备挖矿

* 新建一个窗口 "cmd+n" 复制以下代码到新的窗口里
```bash
bash miner/mining.sh
```
回车，就可以挖矿了。

**当然这个方法上手还是有点难度，如果有什么问题欢迎联系我。**

**Mac端的一键启动GUI版正在构建中。。。敬请期待！**

## 常见问题
单独启动集群同步节点功能：
```bash
bash miner/sync.sh
```

关闭挖矿
```bash
docker stop qkcminer
```
