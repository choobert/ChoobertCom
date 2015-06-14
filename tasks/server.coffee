gulp = require('gulp')
browserSync = require('browser-sync')
connect = require('gulp-connect')
modRewrite = require('connect-modrewrite')


# Any paths without a . in them will get served index.html instead
rewrite = modRewrite([ '^[^\\.]*$ /index.html [L]' ])

gulp.task 'server/dev', ['build/dev'], ->
  browserSync
    open: false
    notify: false
    server:
      baseDir: 'build/dev'
      middleware: [rewrite]

gulp.task 'test/e2e/webserver', ['build/dev'], ->
  connect.server
    port: 3001
    root: 'build/dev'
    middleware: -> [rewrite]

gulp.task 'server/dist', ->
  connect.server
    port: 3000
    root: 'build/dist'
    middleware: -> [rewrite]

gulp.task 'test/dist/e2e/webserver', ['build/dist'], ->
  connect.server
    port: 3001
    root: 'build/dist'
    middleware: -> [rewrite]

corsMiddleware = (req, res, next) ->
  res.setHeader("Access-Control-Allow-Origin", "http://localhost:3000")
  res.setHeader("Access-Control-Allow-Credentials", "true")
  next()

gulp.task 'server/data', ->
  connect.server
    port: 8000
    root: 'mock_data/'
    middleware: -> [corsMiddleware]
