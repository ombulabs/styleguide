# FastRuby::Styleguide

## Gem Version
### Ruby on Rails Installation

Add this line to your application's Gemfile:

```ruby
gem "fastruby-styleguide", github: "fastruby/styleguide", branch: "gh-pages"
```

And then execute:

```sh
$ bundle
```

### Usage with Sprockets

In `application.css`, add:

```ruby
*= require fastruby/styleguide
```

or, if you are using SCSS, in `application.scss` add:

```js
@import "fastruby/styleguide";
```

In `application.js` add:

```js
//= require fastruby/styleguide
```

## As a Node module (Yarn package)

### Ruby on Rails Installation

Install the package directly from this repo

```sh
$ yarn add "fastruby/styleguide#gh-pages"
```

### CSS with Sprockets

In `app/assets/stylesheets/application.scss, add:

```scss
@import "fastruby-io-styleguide";
```

### JavaScript with Webpacker

In `app/javascripts/packs/application.js` add:

```js
import "fastruby-io-styleguide"
```

In `config/webpack/environment.js` add this plugin config to expose jQuery as a global object:

```js
const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)

module.exports = environment
```

## Static generation

From the gem folder

    $ bundle

Build static

    $ rake precompile_assets

Styles and Javascript files are in `static` folder.

Components can be checked if `index.html` file is opened in a browser.

## Updating the Styleguide Code in a Project

### As a gem

Run `bundle update fastruby-styleguide --source`

### As a module

Run `yarn upgrade fastruby-io-styleguide`

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/fastruby/styleguide](https://github.com/fastruby/styleguide). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

When Submitting a Pull Request:

* If your PR closes any open GitHub issues, please include `Closes #XXXX` in your comment

* Please include a summary of the change and which issue is fixed or which feature is introduced.
