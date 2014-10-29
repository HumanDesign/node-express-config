gulp = require 'gulp'
coffee = require 'gulp-coffee'

gulp.task 'coffee', ->
	gulp.src('./src/*.coffee')
		.pipe coffee({bare: true})
		.pipe gulp.dest('./lib/')

gulp.task 'default', ['coffee'], ->
	gulp.watch 'src/**/*.coffee', ['coffee']
