
Router.route '/wechat/api/token', (->

	res = @response

	resultstr = HTTP.call('GET', 'https://api.weixin.qq.com/cgi-bin/token',
		params: grant_type: 'client_credential',appid:'appid',secret:'secret')

	console.log 'resultStr:' + resultStr
	res.end resultStr

	return
), where: 'server'
