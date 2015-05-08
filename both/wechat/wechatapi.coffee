
Router.route '/wechat/callback/verifyhost', (->

	req = @request
	res = @response
	
	signature = @params.query.signature
	timestamp = @params.query.timestamp
	nonce = @params.query.nonce
	token = @params.query.token
	#token = 'wangzengzhou1234567890'
	echostr = @params.query.echostr

	tmpStr = [token, timestamp, nonce].sort().join('')
	console.log 'tmpStr1:' + tmpStr

	tmpStr = CryptoJS.SHA1(tmpStr).toString()
	
	console.log 'signature:'+ signature
	console.log 'timestamp:'+ timestamp
	console.log 'nonce:'+ nonce
	console.log 'token:'+ token
	console.log 'tmpStr:' + tmpStr
	console.log 'echostr:'+ echostr

	resultStr = if signature == tmpStr then echostr else ''
	console.log 'resultStr:' + resultStr
	res.end resultStr

	return
), where: 'server'
