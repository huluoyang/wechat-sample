# Meteor wechat Demo

This is a demo of the various [Wechat](https://mp.weixin.qq.com/) packages:

## 第一步，验证主机接口

### [接口配置信息](https://github.com/jzwzz/wechat-sample/blob/master/both/wechat/wechatapi.coffee)
    在微信配置的示例：
-    URL: http://wechat-sample.meteor.com/wechat/callback/verifyhost?token=wangzengzhou1234567890
-    Token: wangzengzhou1234567890

    PS:token应该在verifyhost中写死，而不是在URL中传过去，为了方便使用，从URL中的token参数中取的。


###[获取token](https://github.com/jzwzz/wechat-sample/blob/master/both/wechat/wechatapi_token.coffee)

	调用url /wechat/api/token?appid=<your app id>&secret=<your secret id>

	返回值：取data.access_token的值获得access_token的值获得



###[获取微信服务器IP](https://github.com/jzwzz/wechat-sample/blob/master/both/wechat/wechatapi_token.coffee)

	调用url /wechat/api/wechatapi_getcallbackip?access_token=<获取token方法获取的access_token>

	返回值：取data.access_token的值获得access_token的值获得




See it in action here: [wechat-sample.meteor.com](http://wechat-sample.meteor.com)

## License
[MIT License](https://github.com/meteoric/demo/blob/master/LICENSE)
# wechat-sample
