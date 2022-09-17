# Flutter Study Notes (Flutter 学习助手)

> 此文档内容为：<br>
> 使用 Windows 系统开发 Android 应用流程（的学习助手）<br>
> 主要提供了本人在学习开发中遇到的问题及解决方案<br>
> 主要学习途径： [Flutter 中文网](https://flutterchina.club/)

<br>

---

## 写在前面

开发过程很多资源需要访问外网，所以需要一个稳定的代理！！！<br>如果没有稳定代理可以看这里: [(Q: 如何搭建自己的稳定代理？)](#Q1)，真滴可谓是保姆级别教程了

<br>

---

## 1. 安装

参考[<u>官方中文文档</u>](https://doc.flutterchina.club/setup-windows/)，不赘述。

> 说说可能遇到的问题：<br>
>
> 1. 检查 Android SDK 环境变量路径是否正确
> 2. Android SDK missing command line tools:
>    > Android Studio - Tools - SDK Manager - SDK Tools - (选择安装) Android SDK command-line Tools
> 3. 无法下载 gradle 问题， 设置 proxy: File - Settings - HTTP Proxy 添加本地代理
> 4. 添加代理后仍无法下载问题：<br>
>    配置或删除 `C:\Users\***\.gradle\gradle.properties` 中的全局代理<br> ~~`systemProp.http.proxyHost=...`~~<br> ~~`systemProp.http.proxyPort=...`~~<br> ~~`systemProp.https.proxyHost=...`~~<br> ~~`systemProp.https.proxyPort=...`~~<br>

<kbd>Win</kbd>+<kbd>Prtsc</kbd> 快速截图

<br>
<br>

---

## FQA:

### <p id="Q1">1. Q: 如何搭建自己的稳定代理？</p>

<font ><em>简述：</em></font><br>
<font ><em>1. 购买一台香港/台湾或国外服务器</em></font><br>

> [注册/购买搬瓦工教程](https://www.bandwagonhost.cn/register.html) <br> <font color=#aaa>这里说说我注册中遇到的几个小问题：<br>
>
> 1. ⟦首先我要有, 然后我才能⟧ 问题：访问这个网站需要翻墙，没有翻墙工具找个临时的，或者找人帮忙，或者选择购买国内服务商提供的香港/台湾/国外服务器<br>
> 2. 注册信息如何填写问题：<br> ![](assets/regist.png)
> 3. 服务器账号名是 root, 密码点这里 ↆ<br> ![](assets/password.png) </font>

<font ><em>2. 服务器安装 shadowsocks</em></font><br>

> \# 1. 服务器安装 wget<br><code>yum install wget</code><br> \# 2. 安装 shadowsocks <br>`wget –no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh`<br> \# 3. 获取 shadowsocks.sh 读取权限 <br> > <code>chmod +x shadowsocks.sh</code><br> \# 4. 设置密码和端口号及加密方式<font color=#aaa>（加密方式使用默认即可）</font><br> <code>./shadowsocks.sh 2>&1 | tee shadowsocks.log</code><br> \# 5. 安装完成后会显示 IP 地址&端口号&密码&加密方式，做好记录后，<font color=yellow><b>重启系统</b></font>！

<font><em>3. 安装客户端工具</em></font>

> 下载其中一个客户端工具解压即可：<br> [V2rayN 安装包](https://github.com/2dust/v2rayN/releases)<br>
> 配置: <br> ![](assets/v2rayN.png) <br> [shadowsocks 安装包](https://github.com/shadowsocks/shadowsocks-windows/releases)<br>
> 配置：<br> ![](assets/shadowsocks.png)

<font><em>4. 开心上网</em></font><br>

> \> [完整参考：购买搬瓦工服务器 + Shadowsocks 搭建个人服务](https://github.com/clown-coding/vpn) <br>
