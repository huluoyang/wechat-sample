
Router.route '/wechat/api/token', (->

	res = @response

	url = 'https://api.weixin.qq.com/cgi-bin/token'
	#url = 'http://localhost:3000/wechat/debug/showparams'

	appid = @params.query.appid
	secret = @params.query.secret

	wechatParams =  grant_type: 'client_credential', appid:appid, secret:secret

	resultStr = HTTP.call('GET', url, params: wechatParams)
	console.log 'resultStr.statusCode:' + resultStr.statusCode

	resultStr = JSON.stringify resultStr
	console.log 'resultStr:' + resultStr

	res.end resultStr

	return
), where: 'server'
