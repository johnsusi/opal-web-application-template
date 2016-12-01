Encoding.default_external = 'utf-8'

require 'rubygems/package_task'

require 'opal'
require 'clearwater'

task :build do

  source = File.read('./app/application.rb')
  compiler = Opal::Compiler.new(source)
  js = compiler.compile
  sm = compiler.source_map.as_json

  FileUtils.mkdir_p('build')
  IO.write('./build/bundle.js', js)
  IO.write('./build/bundle.js.map', sm)


end

task :default => :build
