
Router.route '/wechat/callback/verifyhost', (->

	req = @request
	res = @response

	signature = @params.query.signature
	timestamp = @params.query.timestamp
	nonce = @params.query.nonce
	token = @params.query.token

	tmpStr = [token, timestamp, nonce].sort().join(',')

	tmpStr = CryptoJS.SHA1(tmpStr).toString()

	resultStr = if signature == tmpStr then 'true' else 'false'
	res.end resultStr

	return
), where: 'server'