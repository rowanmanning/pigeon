
# Dependencies
cleanCSS = require 'clean-css'
colors = require 'colors'
fs = require 'fs'
hogan = require 'hogan'

# Paths
paths =
  buildConfig: './config/build.json'
  header: './config/header.css'
  nodebin: './node_modules/.bin'
  package: './package.json'

# Build package/config
pkg = JSON.parse fs.readFileSync(paths.package, 'utf8')
pkg.year = (new Date).getFullYear()
config = JSON.parse fs.readFileSync(paths.buildConfig, 'utf8')
header = hogan.compile(fs.readFileSync(paths.header, 'utf8')).render(pkg)

# Bundle CSS
desc 'This bundles files together'
task 'bundle', ->
  console.log 'Bundling CSS:'.cyan
  for outPath, inPaths of config.bundle
    bundle = [header]
    for inPath in inPaths
      content = fs.readFileSync inPath, 'utf8'
      bundle.push content.trim()
    fs.writeFileSync outPath, bundle.join('\n\n')
    console.log "Bundled #{outPath}".green

# Minify CSS
desc 'This minifies bundled CSS files'
task 'minify', ['bundle'], ->
  console.log 'Minifying CSS:'.cyan
  for inPath, outPath of config.minify
    content = fs.readFileSync inPath, 'utf8'
    minifiedContent = cleanCSS.process content
    bundle = [header, minifiedContent]
    fs.writeFileSync outPath, bundle.join('\n')
    console.log "Minified #{outPath}".green

# Default task
task 'default', ['minify']
