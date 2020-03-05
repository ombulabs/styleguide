# Ombulabs::StyleGuide

## Ruby on Rails Installation

Add this line to your application's Gemfile:

```ruby
gem 'ombulabs-styleguide'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ombulabs-styleguide

## Usage

In application.css, add:

```ruby
*= require ombulabs/styleguide
```

or if you are using scss: appliation.scss

```ruby
@import "ombulabs/styleguide";
```

In application.js add:
```ruby
//= require ombulabs/styleguide
```

## Static generation

From the gem folder

    $ bundle

Build static

    $ rake precompile_assets

Styles and Javascript files are in `static` folder.

Components can be checked if `index.html` file is opened in a browser.
