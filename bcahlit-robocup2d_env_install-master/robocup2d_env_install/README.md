# robocup_2d_平台搭建

#### 介绍
在ubuntu上搭建robocup_2d平台，以及阵型编辑器。测试支持ubuntu16.04 以及18.04

本人只是集成了一下，并且修复了几个bug，更新了几个软件包，删除了自己认为无用或者感觉重复的软件包。

感谢合肥工业大学历届学长所做的工作，

#### 软件架构
install.sh 是一个安装脚本，会自动进行依赖的安装以及软件的编译安装。

#### 安装教程



进入解压后的文件打开终端，执行./install.sh（傻瓜安装法）



chmod +x ./install.sh && ./install.sh 

如果出现错误可以重新运行./install.sh

#### 使用说明

使用 rcsoccersim同时启动Server和monitor 

使用rcssserver启动Server 
使用rcssmonitor  启动监视器 （更推荐使用soccerwindow2）

#### 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request


#### 码云特技

1. 使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2. 码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3. 你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4. [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5. 码云官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6. 码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)