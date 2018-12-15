# QuarkChain 挖矿教程
简单署QuarkChain 测试网2.0 挖矿脚本 Linux版本
部署macOS 版本[看这里](https://github.com/HangyuYe/QKC-Miner)


举个例子🌰，[看这里](https://www.jianshu.com/p/14287ab02cf1)

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
sudo wget https://qkc-miner-1256480775.cos.ap-chengdu.myqcloud.com/setup_env.sh && sudo sh setup_env.sh
```

2. 准备QKC地址，或者一个ETH地址

获取QKC地址：[Testnet](https://testnet2.quarkchain.io)

大约需要10分钟左右安装所有模块

4. 等待安装完成会要求你输入你的挖矿地址：

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
