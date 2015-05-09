
Router.route '/wechat/api/getcallbackip', (->

	res = @response

	url = 'https://api.weixin.qq.com/cgi-bin/getcallbackip'

	access_token = @params.query.access_token

	wechatParams =  access_token:access_token

	result = HTTP.call('GET', url, params: wechatParams)

	console.log 'resultStr:' + JSON.stringify result.data.ip_list


	resultStr = JSON.stringify result

	console.log 'resultStr:' + resultStr
	res.end resultStr

	return
), where: 'server'
