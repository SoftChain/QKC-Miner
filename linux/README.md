# QuarkChain 挖矿教程
简单署QuarkChain 测试网2.0 挖矿脚本 Linux版本

## 搭建一个云服务器
* 选择任意一个云服务器提供商，建议选择国外的，或者使用国内服务商提供的国外服务器。
* 最低要求：2 vCPU，4 GB内存，100 GB的硬盘存储空间
* 建议系统：Ubuntu 18以上。
* 当然性能越高，挖矿的效率越高，建议内存是核心数的4倍。（目前挖矿没有回报，所以量力而行）

* 供应商：【国内：腾讯云，阿里云，百度云，华为云】，【国外：AWS，Google Cloud（首次注册有 US$300的现金可用）】
* 注册方法大家可以自行百度。

## 步骤
1. 安装环境

``` bash
sudo bash linux/build_env.sh
```

2. 准备QKC地址，或者一个ETH地址

获取QKC地址：[Testnet](https://testnet2.quarkchain.io)

大约需要10分钟左右安装所有模块

3. 等待安装完成以后复制以下代码：

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

* 新建一个Terminal窗口复制以下代码到新的窗口里
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
