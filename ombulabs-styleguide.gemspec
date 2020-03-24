lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ombulabs/styleguide/version'

Gem::Specification.new do |spec|
  spec.name           = 'ombulabs-styleguide'
  spec.version        = Styleguide.gem_version
  spec.authors        = ['OmbuLabs']
  spec.email          = ['hello@ombulabs.com']

  spec.summary        = 'Style Guide for all OmbuLabs products'
  spec.homepage       = 'https://github.com/ombulabs/styleguide'

  spec.files = Dir['lib/**/*.rb'] + Dir['vendor/**/*']

  spec.add_dependency 'rails', '>= 5.0.0'
  spec.add_dependency 'sass-rails', '>= 5.0'
  # Jquery 
  spec.add_dependency 'jquery-rails', '~> 4.3.0'
  # Font Awesome
  spec.add_dependency 'font-awesome-sass', '~> 5.12.0'
end
