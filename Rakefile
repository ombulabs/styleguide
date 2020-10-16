# frozen_string_literal: true

BUNDLES     = %w[styleguide.css styleguide.js].freeze
BUILD_DIR   = File.expand_path('static')
SOURCE_DIR  = File.expand_path('vendor/assets/')

desc 'Precompile assets'
task :precompile_assets do
  require 'uglifier'
  require 'sprockets-gem-paths'

  sh "rm -rf #{BUILD_DIR}"
  sh "mkdir -p #{BUILD_DIR}"
  puts 'Static folder has been cleared'

  sprockets = Sprockets::Environment.new
  sprockets.css_compressor = :scss

  sprockets.context_class.class_eval do
    def asset_path(path, options = {})
      File.join('images', path)
    end

    def asset_url(path, options = {})
      "url(#{asset_path(path)})"
    end
  end

  sprockets.append_path(File.join(SOURCE_DIR, 'javascript', 'ombulabs'))
  sprockets.append_path(File.join(SOURCE_DIR, 'stylesheets', 'ombulabs'))
  sprockets.append_gem_paths

  BUNDLES.each do |bundle|
    filename = File.join(BUILD_DIR, bundle)
    min_filename = File.join(BUILD_DIR, bundle.gsub("styleguide", "styleguide.min"))
    map_filename = filename + ".map"

    sprockets
      .find_asset(bundle)
      .write_to(File.join(BUILD_DIR, bundle))

    if bundle.end_with?("js")
      uglified, source_map = Uglifier.new(harmony: true).compile_with_map(File.read(filename))
      File.write(min_filename, uglified)
      File.write(map_filename, source_map)
    end

    if bundle.end_with?("css")
      FileUtils.copy(filename, min_filename)
    end

    puts "#{bundle} file has been compiled"
  end

  sh "cp -R #{File.join(SOURCE_DIR, 'images')} #{BUILD_DIR}"
end
