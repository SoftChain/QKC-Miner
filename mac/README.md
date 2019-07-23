# QuarkChain 挖矿教程
简单署QuarkChain 测试网2.0 挖矿脚本 “云挖矿版本”

要部署云矿机 版本[看这里](https://github.com/HangyuYe/QKC-Miner)
[简书](https://www.jianshu.com/p/14287ab02cf1)
要部署Linux 版本[看这里](https://github.com/HangyuYe/QKC-Miner/tree/master/linux)


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

4. 等待安装完成会要求你输入你的挖矿地址：

- 然后粘贴你的ETH或者QKC钱包地址按回车！

```bash
QKC_CONFIG=`pwd`/mainnet/singularity/cluster_config_template.json python3 quarkchain/tools/miner_address.py
```

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
这个时候就可以关闭Terminal然后休息一会。区块数据在10G左右，所以大约可以等待2-3小时以后，设个闹钟，以免到时候忘了有这回事了。

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
