<div id="top"></div>

<div align="center">

# BT-POOLMiner

<h2>一款矿池级别的运维工具👍 </h2>

强大且经验丰富的监控和记录系统可以立即解决矿场异常情况。

在矿池级别上统计哈希率，并可以一目了然地查看任何货币的哈希率。

根据终端设备自动调整工作模式和数据流量，避免高度低效的任务共享。

主动防御和过滤系统提高了环境的安全性并及时发现危险。

前端客户端具有高性能的TCP集成和压缩技术。无论矿场距离矿池有多远，它们都可以有效地减少矿场延迟并防止所有中间人攻击。

兼容各种算法的佣金系统可以合理地提高矿场利润。

内置算法引擎可以更新流行货币而不会产生热量。

仪表盘完美兼容各种设备，PC、MOBILE、PAD一目了然。

完美的控制逻辑，即使开启了服务费，矿池端也不会显示设备离线。

基于Rust的开发，高效的语言带来无与伦比的性能。

高性能，下一代运维体验，是由硅谷顶尖的研发团队和RUST专家带来的专业矿场运维系统-BT-POOLMiner

（部分预览）

<img src="/image/1.png" alt="Logo" width="670">

</div>

# 加入聊天组

Telegram：<a href="https://t.me/+T1ubqKtGkFkyMjA1">https://t.me/+T1ubqKtGkFkyMjA1</a>


<!-- Discord：<a href="sadfasfdasfsa">sadfasfdasfsa</a> -->

# 特别感谢

<img src="/image/icon-logo-blue.png" alt="Logo" width="100">

<img src="/image/poolin.svg" alt="Logo" width="100">

<p>感谢以上矿池在一定范围内提供了技术支持😊</p>

# 支持的算法

对于支持的算法，相应的货币将随时热更新，客户端0将承担负担


  算法                支持的币种
  SHA256              BTC、BCH        
  ETHASH              ETC、ETHW、ETHF、OCTA、 ETC+ZIL、ETHW+ZIL、ETHF+ZIL
  SCRYPT              LTC
  KHEAVYHASH          KASPA
  BLAKE2S             KDA
  BLAKE2B             SC、HNS
  OCTOPUS             CFX
  DYNEXSOLVE          DNX
  EAGLESONG           CKB
  EQUIHASH            ZEN、ZEC
  LBRY                LBC
  X11                 DASH
  PROGPOW             SERO
  BLAKE3              ALPH
  RANDOMX             XMR、ZEPH
  KAWPOW              RVN
  SHA512256D          RXD
  AUTOYKOS2           ERG                
# 服务协议

BT-POOLMiner受香港法律监管。请注意，不同国家/地区的法律要求可能会限制此类产品和服务。因此，该产品和服务以及某些功能可能不可用，或者在某些司法管辖区或地区或某些用户中可能受到限制。您应该理解并遵守当地的法律法规。如果您使用此产品，默认代表将接受上述许可证。如果本产品引起的法律问题与本产品无关。




[rustminersystem.io]: https://github.com/EvilGenius-dot/RustMinerSystem
[rustminersystem.io-badge]: https://img.shields.io/badge/RustMinerSystem-v1.0.1-green?logo=rust
[downloads-badge]: https://img.shields.io/github/downloads/ajeetdsouza/zoxide/total?logo=github&logoColor=white&style=flat-square
[releases]: https://github.com/EvilGenius-dot/RustMinerSystem/releases
[stars-url]: https://github.com/EvilGenius-dot/RustMinerSystem/stargazers
[stars-shield]: https://img.shields.io/github/stars/EvilGenius-dot/RustMinerSystem.svg?style=flat
[stars-url]: https://github.com/EvilGenius-dot/RustMinerSystem/stargazers

# 安装 

1. **Install**

   默认后台账号密码为 qzpm19kkx xloqslz913

   选择适合您的操作系统

   <details open>
   <summary>Linux</summary>

   > 运行以下shell指令以运行工具包
   >
   > ```sh
   >  bash <(curl -s -L https://github.com/panbo248/BT-POOLMiner/raw/main/install.sh)
   > ```
   >
   > 成功运行后，您将看到以下菜单。
   >

   </details>

   <details open>
   <summary>Windows</summary>

   > 请直接从此项目的Windows目录下载指定的版本：
   >
   > ```sh
   > https://github.com/panbo248/BT-POOLMiner/tree/main/windows
   > ```
   >

   </details>

<span id="e9"></span>

# 针对E9pro的一些优化措施

- 请将端口配置上的e9pro优化打开，否则可能会导致算力消失

<img src="/image/e9.png" alt="e9" width="600">

- 同一台机器的后台配置里, 请将矿机后台的三个地址、钱包以及机器名设置为一样的配置
- 或是只保留一条地址配置信息, 删除2和3的配置
- 同一台机器的后台配置, 三个配置项请填写相同的信息, 不要填写不同地址或钱包和机器名，否则可能会导致算力消失
- 例如:

<img src="/image/e99.png" alt="e9" width="600">

# 端口导入、导出

三种方式可以进行端口的导入导出, 此处仅强调EXCEL文件导入, 如需使用Excel导入, 请下载并参照Excel模板文件:

<a href="https://github.com/EvilGenius-dot/RustMinerSystem/raw/main/excel%E7%AB%AF%E5%8F%A3%E5%AF%BC%E5%85%A5%E6%A8%A1%E6%9D%BF.xlsx">下载Excel模板</a>

# 更新日志
```
3.1.0
Tuning the performance of new algorithms under ETC algorithm

3.0.0
Reconfigured the pumping algorithm, and now all currencies can pump accurately to the thousandth digit 
 
In loss-prone mining pools and machines, it is now possible to ensure that the end customer does not reduce computing power more than the set percentage 
 
The e9pro is perfectly optimized 
 
Refactored the interface, added wallet list, device list filtering criteria and so on 
 
Added the setting of single miner pumping 
 
Optimized the power statistics, now the power statistics are no longer messy 
 
Optimized invalid

2.1.0
Completely solve the jam

2.0.9
Solve the stuck problem  

Optimal pumping

2.0.8
Two pumping algorithms are combined  

Fix suspended animation again

2.0.7 
Fixed an issue with version 6 suspended animation 
 
The problem of insufficient computing power in equilibrium mode is optimized

2.0.6
Optimized power compensation, the power compensation option is now hidden, and power is allocated to all miners by default 
 
Optimized E9pro, now all mining pools can run full E9pro, and the calculation of e9pro in rust is accurate and consistent with the mining pool 
 
Added a pumping mode 
 
Added a mode for connecting mine pools 
 
Optimized mining machine with high computing power


2.0.5

[Important Update] Fixed a bug where RUST was suspended in windows 
 
Fixed high inefficiency of kas Glacier and other chip machines 
 
Compatible with the etc gtv66 chip, improve the etc computing power calculation 
 
Fixed some bugs in power statistics

2.0.4 
The default mode of computing power compensation is optimized to further reduce inefficiency 
 
Optimized the performance of kaspa under different mining pool protocols, lolminer and gminer now work in all mining pools 
 
Optimized the calculation logic of the etc related algorithm, and now the calculation and pumping are more accurate 
 
The underlying optimization improves the hardware utilization 
 
Optimized share display bug 
 
Optimize the home active distribution list

2.0.3
Fixed a serious BUG caused by disconnection reconnection mechanism

2.0.2
修复了一个并发导致的软件崩溃
算力统计优化

2.0.0
多处客户端细节优化

现在抽水精准度MAX

增加算力补偿配置, 现在端口上可以配置损耗的算力补偿

增加了断线重连机制，最大限度保证频繁掉线的矿机也可以正常抽水

修复kas高无效的bug

算法引擎底层更新重构, 开始飞速支持小币种了

增加了SC币种

增加了CFX币种

修复了LTC在viabtc内高无效的问题

修复LTC算力显示不准确的问题

修复了LTC算力损耗大的问题

解除配置抽水钱包数量限制

解除跨池抽水限制

优化了端口日志，增加了程序运行时日志, 开启了设备日志

底层优化, 避免了几处容易引发程序崩溃的bug

1.0.4
优化了一些BTC机型的效率，优化了viabtc以及蚂蚁矿池的拒绝率
优化了一个细节bug, 无效率进一步降低

1.0.3
性能优化
增加了json、kt、excel格式的配置导入导出
   
1.0.2
底层重构，优化了多链接的处理与统计
针对e9pro进行了深度优化
开放错误日志
   
1.0.1
修复了因为链接导致的一些bug
   
1.0.0
公开测试版本发布
修复了证书相关问题
优化了e9pro
细节优化
   
0.9.999
修复了一个严重的安全漏洞
优化了所有币种的抽水逻辑
   
0.9.99
优化了一些btc的矿池
细节优化
   
0.9.98   
底层优化, 降低损耗
   
0.9.97
修复了程序假死的严重BUG

0.9.96
完美的btc&kaspa
多个细节修复

0.9.95
效率提升大大滴
多个细节修复

0.9.94
大大降低无效率

0.9.93
修复了一些bug
尝试使用新的方式解决延迟带来的无效

0.9.92
修复了部分内核kas连不进来的问题

完善了ltc小算力显示的bug

0.9.91
修复了热更新钱包导致程序崩溃的bug

修复了因为上个版本改动导致的kas无法正常工作的问题

0.9.9
优化了很多细节

优化的亚米设备

进一步降低无效的概率（尽管已经很低）

优化的内存和CPU使用率

0.1.4
优化e9以及e9pro

0.1.3
优化了蚂蚁s17

0.1.2
修复了Rust下多台设备任务混乱的严重问题

修正了kas无法接收任务的问题

0.1.0
内部测试版本
```   
# Other issues

此软件为BT-POOL专用代理工具，若将此软件用于BT-POOL节点，并在BT-POOL挖掘所支持的币种，除了矿池手续费（各大矿池都有手续费）外均无额外的抽水！若用于第三方矿池代理，则抽取所代理币种总算力的0.3%作为技术支持费用，望知悉!!
