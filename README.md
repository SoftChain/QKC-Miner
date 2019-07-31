# QuarkChain 挖矿教程
简单署QuarkChain 主网1.1.1 挖矿脚本 “云挖矿版本”

要部署macOS 版本[看这里](https://github.com/HangyuYe/QKC-Miner/tree/master/mac)
要部署Linux 版本[看这里](https://github.com/HangyuYe/QKC-Miner/tree/master/linux)


多图慎入

## 搭建一个云服务器
* 选择任意一个云服务器提供商，建议选择国外的，或者使用国内服务商提供的国外服务器。
* 最低要求：2 vCPU，4 GB内存，100 GB的硬盘存储空间
* 建议系统：Ubuntu 18以上。
* 当然性能越高，挖矿的效率越高，建议内存是核心数的4倍。（目前挖矿没有回报，所以量力而行）

* 供应商：【国内：腾讯云，阿里云，百度云，华为云】，【国外：AWS，Google Cloud（首次注册有 US$300的现金可用）】
* 注册方法我们已腾讯云为例，其他家差不多。

## 我们以腾讯云为例
首先我们打开腾讯云的[官网](https://cloud.tencent.com)
* 选择云服务器
![图1.png](https://upload-images.jianshu.io/upload_images/15372740-e283e0683a448935.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 购买一个新的服务器，选择自定义配置
![图2](https://upload-images.jianshu.io/upload_images/15372740-e1b770c6df642840.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**按量计费是按照你使用的时间（按秒来算）来计算价钱，土豪可以选择按月付费，性能越好价格越贵，建议选择内存型或者计算型的机器。**

* 这里我们已一个标准型的双核4GB内存为例，价格是0.43月每小时。
![图3](https://upload-images.jianshu.io/upload_images/15372740-49e781559db4655c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 选择系统我们选Ubuntu 64位的。
![图4](https://upload-images.jianshu.io/upload_images/15372740-0cc520f219f89752.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 接下来是“选配”内容，网络我们可以选择按流量计费，相当划算，挖矿要不了多少流量的。带宽的大小不会影响价格所以我们当然选择100M。
![图4](https://upload-images.jianshu.io/upload_images/15372740-008f53ea90b5639b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 设置安全组，高级玩家只用放开TCP/UDP:38291，小白玩家就全放吧！
![图5](https://upload-images.jianshu.io/upload_images/15372740-d9722adf843478b9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 设置密码
![图6](https://upload-images.jianshu.io/upload_images/15372740-2cb4212ca6fae667.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 完成了，最后结算0.48元每小时。当然你可以一次性部署很多台。（点完成之前记得先充值）
![图7](https://upload-images.jianshu.io/upload_images/15372740-8d97051ae15097c6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 等待创建完成以后我们点击登录
![图8](https://upload-images.jianshu.io/upload_images/15372740-44749499b9c4e7c3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 然后在弹出来的对话框中选择网页版，然后输入你刚刚创建的密码。
当然你也可以尝试用下面几种方法登录到你的服务器当中。
![图9](https://upload-images.jianshu.io/upload_images/15372740-8ad6bdd95bc630c2.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
当然你也可以尝试用下面几种方法登录到你的服务器当中。

## 接下来，就是启动矿机。

## 步骤
#### 启动集群（Cluster）
1. 安装环境
复制下面命令，粘贴到命令行中。
``` bash
sudo wget https://qkc-miner-1256480775.cos.ap-chengdu.myqcloud.com/setup_env.sh && sudo sh setup_env.sh
```

2. 准备QKC地址，或者一个ETH地址

获取QKC地址：[主网](http://mainnet.quarkchain.io/wallet)

3. 完成以后会进入到pyquarkchain的repo里面。
```bash
/code/pyquarkchain#
```
- 输入下面的指令👇
```bash
python3 quarkchain/tools/miner_address.py
```
- 粘贴你的ETH或者QKC钱包地址按回车！
- 导出挖矿所用的模版，输入指令然后回车！
```bash
export QKC_CONFIG=`pwd`/mainnet/singularity/cluster_config_template.json
```
- 启动Cluster开始同步账本信息，大约需要几个小时，取决于机器的地理位置。
```bash
python3 quarkchain/cluster/cluster.py --cluster_config $QKC_CONFIG
```
- 这个时候机器开始滚代码，看下面的这些字眼，就说cluster启动成功了，然后就等待同步区块，这个时候可以去喝一杯茶，或者不妨看一集综艺。
```bash
MASTER: I0722 14:26:35.665557 root_state.py:60] Recovering root chain from local database...
MASTER: I0722 14:26:35.667544 root_state.py:256] Created genesis root block
MASTER: I0722 14:26:35.670538 master.py:792] Trying to connect 127.0.0.1:38000
MASTER: I0722 14:26:35.671606 master.py:804] Connected to 127.0.0.1:38000
MASTER: I0722 14:26:35.671985 master.py:792] Trying to connect 127.0.0.1:38001
MASTER: I0722 14:26:35.672539 master.py:804] Connected to 127.0.0.1:38001
MASTER: I0722 14:26:35.672894 master.py:792] Trying to connect 127.0.0.1:38002
MASTER: I0722 14:26:35.673468 master.py:804] Connected to 127.0.0.1:38002
MASTER: I0722 14:26:35.673775 master.py:792] Trying to connect 127.0.0.1:38003
MASTER: I0722 14:26:35.674808 master.py:804] Connected to 127.0.0.1:38003
MASTER: I0722 14:26:35.676369 master.py:961] [0/0] is run by slave [b'S0']
MASTER: I0722 14:26:35.676529 master.py:961] [4/0] is run by slave [b'S0']
MASTER: I0722 14:26:35.676805 master.py:961] [1/0] is run by slave [b'S1']
MASTER: I0722 14:26:35.676954 master.py:961] [5/0] is run by slave [b'S1']
MASTER: I0722 14:26:35.677160 master.py:961] [2/0] is run by slave [b'S2']
MASTER: I0722 14:26:35.677361 master.py:961] [6/0] is run by slave [b'S2']
MASTER: I0722 14:26:35.677553 master.py:961] [3/0] is run by slave [b'S3']
MASTER: I0722 14:26:35.677741 master.py:961] [7/0] is run by slave [b'S3']
MASTER: I0722 14:26:35.680508 master.py:506] Slave b'S1' connected to other slaves successfully
MASTER: I0722 14:26:35.682678 master.py:506] Slave b'S0' connected to other slaves successfully
MASTER: I0722 14:26:35.684604 master.py:506] Slave b'S2' connected to other slaves successfully
MASTER: I0722 14:26:35.685582 master.py:506] Slave b'S3' connected to other slaves successfully
SLAVE_S3: I0722 14:26:35.769347 shard_state.py:382] [3/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash b8724a90a0de184ee6f934687a43af1155bfe931a75a3c313fcc676175b02b64
SLAVE_S0: I0722 14:26:35.769361 shard_state.py:382] [4/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash 8cfce6ea3c685462476721f22c8ca2ab8d99bc29871b19b0e879526bebc7c5f0
SLAVE_S1: I0722 14:26:35.772444 shard_state.py:382] [1/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash f02644bc2de0cd5e07b1a5fc0b2843a48722cf1156f7682e46d8290c79566a4a
SLAVE_S2: I0722 14:26:35.772512 shard_state.py:382] [2/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash dda81fc86497cd170440a27a24e8bb6e5ac5a5fb5379eef8b9d73f4af6d092a9
SLAVE_S3: I0722 14:26:35.775670 shard_state.py:382] [7/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash 81fb2c87d0c334a2d936abaa1c04044524fb54b539fe9f2fd79c4c4cdf828dc0
SLAVE_S1: I0722 14:26:35.777130 shard_state.py:382] [5/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash 4cdde426d9d9f948784cce5f6dd9071810e42e1f20f0e4d5beac9f888ce4c2c8
SLAVE_S0: I0722 14:26:35.777562 shard_state.py:382] [0/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash 04493a3c06261af970ca4fc33caa585fbcef11cdb73bb1e3be2a9f6b828a7a0f
SLAVE_S2: I0722 14:26:35.779800 shard_state.py:382] [6/0] Initialized genensis state at root block 0 4036783e441eb5057bf2be96bf1fd4585ac49824de15c0d92a4c14a97886ca51, genesis block hash 26d35714cc9fca44ec2af439636cc51fdd9a9a1de7da1253e3d5c0409d7404d7
```
这个时候就可以关闭浏览器然后休息一会。区块数据在10G左右，所以大约可以等待2-3小时以后，设个闹钟，以免到时候忘了有这回事了。

- 使用下面这个指令检查当前是否同步完成了。
```bash
cd QKC-Miner && bash miner/stats_tool.sh
```
如果看到在Syncing那一栏是false就说明同步完成了，否在就再等等吧！
如果是下面这种的样子，就说同步好了，就可以开始启动挖矿了。
```bash
/code/pyquarkchain/quarkchain/tools#$ pypy3 stats -i 2 --ip localhost
QuarkChain Cluster Stats

CPU:                8
Memory:             16 GB
IP:                 localhost
Shards:             8
Network Id:         22
Peers:              35.231.158.99:38291, 104.248.77.137:38291

Timestamp             Syncing    ROOT SHARDS
2018-12-03 15:43:04     False      64 [425, 426, 470, 437, 440, 447, 387, 371]
2018-12-03 15:43:06     False      64 [425, 426, 470, 437, 440, 447, 387, 371]
2018-12-03 15:43:08     False      64 [425, 426, 470, 437, 440, 447, 387, 371]
2018-12-03 15:43:10     False      64 [426, 426, 470, 437, 440, 447, 387, 371]
2018-12-03 15:43:12     False      64 [427, 426, 470, 437, 441, 448, 387, 371]
```

#### 启动挖矿
```bash
cd QKC-Miner && sudo bash miner/start_mining.sh
```

因为是CPU挖矿，所以使用qkchash进行挖矿，使用默认的分片ID是458753 和 393217，高级一点，如果想要自定义使用其他分片ID的话使用下面这行指令。
```bash
 sudo docker exec -it qkcminer python3 /code/pyquarkchain/quarkchain/tools/external_miner_manager.py --config $QKC_CONFIG --worker 1 --shard $Shard_ID
```
到这里就结束了，过个几个小时就能官网或者qPocket当中查到挖到的QKC了。
祝大家挖矿愉快。
