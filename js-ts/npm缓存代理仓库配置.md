# npm 缓存代理仓库配置

**简介：** 采用verdaccio，一个轻量级、开源的npm本地代理服务，加速npm/pnpm包下载速度。首次下载的包会缓存到这个仓库，后续下载速度起飞。

**操作步骤：** 复制粘贴到命令行执行，添加公司内部代理地址，pnpm也同样生效。

```shell
npm config set registry http://192.168.6.128:4873 && echo "Registry set to:" && npm config get registry && npm ping
```
