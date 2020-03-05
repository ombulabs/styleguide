# frozen_string_literal: true

BUNDLES     = %w[styleguide.css styleguide.js].freeze
BUILD_DIR   = File.expand_path('static')
SOURCE_DIR  = File.expand_path('vendor/assets/')

desc 'Precompile assets'
task :precompile_assets do
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
    sprockets
      .find_asset(bundle)
      .write_to(File.join(BUILD_DIR, bundle))

    puts "#{bundle} file has been compiled"
  end

  sh "cp -R #{File.join(SOURCE_DIR, 'images')} #{BUILD_DIR}"
end
