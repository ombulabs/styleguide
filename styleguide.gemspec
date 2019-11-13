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

  spec.add_dependency 'rails'
  spec.add_dependency 'sass'
  spec.add_dependency 'sass-rails'
  # Jquery
  spec.add_dependency 'jquery-rails'
  # Bootstrap
  spec.add_dependency 'bootstrap-sass'
  # Popper
  spec.add_dependency 'popper_js', '~> 1.14.5'
  spec.add_dependency 'material_design_lite-sass'
end
