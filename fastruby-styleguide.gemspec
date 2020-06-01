lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastruby/styleguide/version'

Gem::Specification.new do |spec|
  spec.name           = 'fastruby-styleguide'
  spec.version        = Styleguide.gem_version
  spec.authors        = ['OmbuLabs']
  spec.email          = ['hello@ombulabs.com']

  spec.summary        = 'Style Guide for all Fast Ruby products'
  spec.homepage       = 'https://github.com/fastruby/styleguide'

  spec.files = Dir['lib/**/*.rb'] + Dir['vendor/**/*']

  spec.add_dependency 'rails', '>= 5.2.1'
  spec.add_dependency 'sass-rails', '>= 5.0'
  # Jquery
  spec.add_dependency 'jquery-rails', '>= 4.3.0'
  # Bootstrap
  spec.add_dependency 'bootstrap-sass', '>= 3.4.0'
  # Popper
  spec.add_dependency 'popper_js', '>= 1.14.5'
  spec.add_dependency 'material_design_lite-sass', '>= 1.3.0'
end
