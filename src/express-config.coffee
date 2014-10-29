session = require 'express-session'
bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'
multipart = require 'connect-multiparty'
request = require 'request'
_ = require 'underscore'

###
Sample Config
var config = {
	session : {
		secret : 'mySecret!',
		maxAge : new Date(Date.now() + 7200000), // 2h Session lifetime
		path : '/'
	}
}
###

module.exports = (app, config) ->

	app.use(cookieParser())
	app.use(bodyParser.urlencoded({limit : '50mb', extended: false }))
	app.use(bodyParser.json({limit : '50mb'}))
	app.use(multipart())

	# Session setup
	var sessionConfig = {
		secret : "MyS3cr3t!",
		maxAge : new Date(Date.now() + 7200000) # 2h Session lifetime
	};

	sessionConfig = _.extend sessionConfig, config.session ? {}

	app.use(session(sessionConfig))
