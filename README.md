# popkit-elpa
popkit elpa是melpa的国内镜像，满足国内emacs用户快速安装包的需求:  
项目首页为 http://elpa.popkit.org/

## 介绍
这个项目主要从[melpa](https://github.com/aborn/melpa)项目fork而来：
1. 该项目运行在国内作者本人的VPS上；
2. 每天会循环更新recipes列表里的包(从recipe指定的源进行下载)；
3. 每次更新完成后，休息2小时后会进行下一次build；
4. popkit elpa里的recipes，每2小时保持与melpa里的recipes同步；
5. 你可以通过向pokit-elpa提交pull request添加自己的包;
6. 如有任何问题，请联系aborn(https://github.com/aborn)

## 安装
```elisp
(add-to-list 'package-archives
            '("popkit" . "http://elpa.popkit.org/packages/"))
```

## 项目状态
线上运行中

## 支持该项目
支持该项目，用支付宝扫一扫下面二维码进行支付捐赠:
![](html/style/image/donate.png "支持该项目")

## 启动时间 
2015-12-01

## 上线时间
2015-12-05
