
Router.route '/wechat/callback/verifyhost', (->

	req = @request
	res = @response
	
	signature = @params.query.signature
	timestamp = @params.query.timestamp
	nonce = @params.query.nonce
	token = @params.query.token
	token = 'wangzengzhou1234567890'
	
	tmpStr = [token, timestamp, nonce].sort().join()
	console.log 'tmpStr1:' + tmpStr

	tmpStr = CryptoJS.SHA1(tmpStr).toString()
	
	console.log 'signature:'+ signature
	console.log 'timestamp:'+ timestamp
	console.log 'nonce:'+ nonce
	console.log 'token:'+ token
	console.log 'tmpStr:' + tmpStr

	resultStr = if signature == tmpStr then 'true' else 'false'
	res.end resultStr

	return
), where: 'server'
