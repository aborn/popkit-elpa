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
popkit elpa已经支持https的访问方式:  
```elisp
(add-to-list 'package-archives
            '("popkit" . "https://elpa.popkit.org/packages/"))
```

## spacemacs用户注意
在 `dotspacemacs/user-init ()` 中加入(注：popkit已经支持https)
```elisp
(setq configuration-layer--elpa-archives
  '(("popkit" . "elpa.popkit.org/packages/")
    ("org"   . "orgmode.org/elpa/")
    ("gnu"   . "elpa.gnu.org/packages/")))

```
popkit源已经加入了gnu和org源里的所有包，可以只设置popkit源就行，如下：

```elisp
 (setq configuration-layer--elpa-archives
        '(
          ("popkit" . "elpa.popkit.org/packages/")
          ))
  )
```

请参考我的[init.el](https://github.com/aborn/.spacemacs.d/blob/master/init.el)

## 项目状态
线上运行中

## 联系 & 反馈
可以通过以下三种方式进行问题反馈？  
1. 最快速方式：加入以下QQ群：537772301（popkit-elpa源，验证答案：elisp)  
2. [提issue](https://github.com/aborn/popkit-elpa/issues/new)  
3. 发邮件到: elpa@popkit.org

## 支持该项目
支持该项目，用支付宝扫一扫下面二维码进行支付捐赠:  
<img src="html/donate.png" alt="支持该项目" style="width:250px;height:250px"/>

多谢以下网友对popkit-elpa开源项目的支持:  
1. 2016-04-21 14:31 收到网名为：**咧威**网友的捐赠，￥10  
2. 2016-05-04 12:35 收到网名为：**笨蛋0007**网友的捐赠，￥50  
3. 2016-05-04 16:18 收到网名为：**康**网友的捐赠，￥100  
4. 2016-05-08 16:38 收到网名为：**不科学的科学君**网友的捐赠，￥100  
5. 2016-05-11 09:33 收到网名为：**青墨**网友的捐赠，￥4  
6. 2016-05-15 14:52 收到网名为：**奇**网友的捐赠，￥20  
7. 2016-05-28 15:38 收到网名为：**雅雯**网友的捐赠，￥50  
8. 2016-05-29 16:42 收到网名为：**DelightRun**网友的捐赠，￥50  
9. 2016-07-13 12:00 收到网名为：**延顺**网友的捐赠，￥10

## 启动时间 
2015-12-01

## 上线时间
2015-12-05
