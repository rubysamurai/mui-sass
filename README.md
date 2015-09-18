# MUI for Sass

[![Gem Version](https://badge.fury.io/rb/mui-sass.svg)](http://badge.fury.io/rb/mui-sass)
[![Build Status](https://travis-ci.org/rubysamurai/mui-sass.svg?branch=master)](https://travis-ci.org/rubysamurai/mui-sass)

[MUI](https://www.muicss.com/) is a lightweight CSS framework that follows Google's Material Design guidelines

`mui-sass` is a Sass-powered version of MUI framework for your applications. It works with Ruby on Rails, Compass, Sprockets, etc. 

`mui-sass` allows to include MUI framework CSS and JavaScript components. HTML Email, React, WebComponents and Design Files are not included.

## Installation

* [Ruby on Rails](#ruby-on-rails)
* [Compass](#compass)

### Ruby on Rails

Open your Rails application's Gemfile and add this line:

```ruby
gem 'mui-sass'
```

Save Gemfile and execute `bundle` command to install the gem.

Open `app/assets/stylesheets/application.scss` file and add this line:

```scss
@import 'mui';
```

> **Note:** Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `*= require_tree .` and `*= require_self` statements from file. Alternatively, to keep original `application.css` file, you can create `custom.scss` file in the same folder and import `mui` there.

Open `app/assets/javascripts/application.js` file and add this line:

````
//= require mui
````

Restart Rails web server if it was running and now your Rails application is powered by Sass version of MUI framework.

### Compass

To use Compass extension you'll need to install `mui-sass` gem:

```
gem install mui-sass
```

#### Existing Compass project

If you have an existing Compass project, open `config.rb` file and require `mui-sass` there:

```ruby
require 'mui-sass'
```

Navigate to your project's folder and run command:

```
compass install mui -r mui-sass
```

This will create new file `styles.scss`, that imports MUI components.

Instead of the install command provided above, you can manually import `mui`:

```
@import 'mui';
```

#### New Compass project

If you are creating a new Compass project and wish to include `mui-sass` run command:

```
compass create project-name -r mui-sass --using mui
```

This command will create a new Compass project with `styles.scss` file, which imports MUI components.

## Usage

By default, using `@import 'mui';` and `//= require mui`, all of MUI components are imported.

You can also import individual Sass components.

First you need to include core components:

```scss
@import 'mui/normalize-3.0.2';
@import 'mui/colors';
@import 'mui/variables';
@import 'mui/mixins';
```

Then include desired Sass component:

```scss
@import 'mui/appbar';
@import 'mui/buttons';
@import 'mui/dividers';
@import 'mui/dropdowns';
@import 'mui/forms';
@import 'mui/grid';
@import 'mui/helpers';
@import 'mui/layout';
@import 'mui/overlay';
@import 'mui/panel';
@import 'mui/ripple';
@import 'mui/scaffolding';
@import 'mui/semantic-markup';
@import 'mui/tables';
@import 'mui/tabs';
@import 'mui/typography';
```

### Variables

Sass version of MUI framework provides many variables to make customization process convenient. The full set of MUI variables can be found [here](https://github.com/rubysamurai/mui-sass/blob/master/vendor/assets/stylesheets/mui/_variables.scss)

To override the variable it must be redefined before the @import directive, like this:

```scss
$mui-base-font-size: 16px !default;
@import 'mui';
```

## Versioning

MUI for Sass follows the upstream version of MUI framework. But last version number may be ahead, in case there is a need to release project specific changes.

Please always refer to the [CHANGELOG](https://github.com/rubysamurai/mui-sass/blob/master/CHANGELOG.md) when upgrading.

## Contributing

Anyone is welcome to contribute to MUI Sass. Please [raise an issue](https://github.com/rubysamurai/mui-sass/issues), fork the project, make changes to your forked repository and submit a pull request.

## License

MUI © Andres Morey, 2015. Released under the [MIT](https://github.com/muicss/mui/blob/master/LICENSE.txt) license.

`mui-sass` © Dmitriy Tarasov, 2015. Released under the [MIT](https://github.com/rubysamurai/mui-sass/blob/master/LICENSE.txt) license.