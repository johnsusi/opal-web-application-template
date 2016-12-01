Encoding.default_external = 'utf-8'

require 'opal'
require 'clearwater'

desc "Build our app to build/bundle.js"
task :build do

  Opal.append_path "app"
  builder = Opal::Builder.new
  result = builder.build("application")
  js = result.to_s
  sm = result.source_map

  FileUtils.mkdir_p('build')
  IO.write('./build/bundle.js', js << '//# sourceMappingURL=bundle.js.map')
  IO.write('./build/bundle.js.map', sm)

end

desc "Minify our build"
task :minify do

  unless system %( uglifyjs --compress --mangle --in-source-map ./build/bundle.js.map \
    --source-map build/bundle.min.js.map -- build/bundle.js \
    > build/bundle.min.js
  ) then
    puts
    puts 'Install uglify-js using `npm install uglify-js -g`'
  end
end


task :default => :build
