lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'styleguide/version'

Gem::Specification.new do |spec|
  spec.name           = 'styleguide'
  spec.version        = Styleguide.gem_version
  spec.authors        = ['OmbuLabs']
  spec.email          = ['hello@ombulabs.com']

  spec.summary        = 'Style Guide for all OmbuLabs products'
  spec.homepage       = 'https://github.com/ombulabs/styleguide'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

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
