axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
roots_config = require 'roots-config'

config =
  error_url: '/error.html'
  callback_url: 'http://localhost:1111'

module.exports =

  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(manifest: "assets/js/manifest.yml")
    css_pipeline(files: 'assets/css/*.styl')
    roots_config(config)
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
