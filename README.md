# MUI for Sass

[![Gem Version](https://badge.fury.io/rb/mui-sass.svg)](http://badge.fury.io/rb/mui-sass)
[![Build Status](https://travis-ci.org/rubysamurai/mui-sass.svg?branch=master)](https://travis-ci.org/rubysamurai/mui-sass)

[MUI](https://www.muicss.com/) is a lightweight CSS framework that follows Google's Material Design guidelines

`mui-sass` is a Sass-powered version of MUI framework for your Ruby applications.

`mui-sass` allows to include MUI framework Sass and JavaScript components. React, Angular, HTML Email, WebComponents are not included.

## Installation

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

## Usage

By default, using `@import 'mui';` and `//= require mui`, all of MUI components are imported.

You can also import individual Sass components.

First you need to include core components:

```scss
// Normalizer
@import "mui/normalize-3.0.3";
// Core variables and mixins
@import 'mui/colors';
@import 'mui/variables';
@import 'mui/mixins';
// CSS Reboot
@import "mui/reboot";
```

Then include desired Sass component:

```scss
// Components
@import "mui/appbar";
@import "mui/buttons";
@import "mui/checkbox-and-radio";
@import "mui/containers";
@import "mui/divider";
@import "mui/dropdown";
@import "mui/form";
@import "mui/grid";
@import "mui/panel";
@import "mui/select";
@import "mui/table";
@import "mui/tabs";
@import "mui/textfield";
// Miscellaneous
@import "mui/helpers";
@import "mui/overlay";
@import "mui/ripple";
@import "mui/typography";
```

### Variables

Sass version of MUI framework provides many variables to make customization process convenient. The full set of MUI variables can be found [here](https://github.com/rubysamurai/mui-sass/blob/master/vendor/assets/stylesheets/mui/_variables.scss)

To override the variable it must be redefined before the @import directive, like this:

```scss
$mui-base-font-size: 16px !default;
@import 'mui';
```

## Versioning

MUI for Sass follows the upstream version of MUI framework, but last version number may be ahead, in case there is a need to release project specific changes. Some upstream versions may be skipped if they include no Sass/JavaScript related changes.

Please always refer to the [CHANGELOG](https://github.com/rubysamurai/mui-sass/blob/master/CHANGELOG.md) when upgrading.

## Contributing

Anyone is welcome to contribute to MUI Sass. Please [raise an issue](https://github.com/rubysamurai/mui-sass/issues), fork the project, make changes to your forked repository and submit a pull request.

## License

MUI © Andres Morey, 2015. Released under the [MIT](https://github.com/muicss/mui/blob/master/LICENSE.txt) license.

`mui-sass` © Dmitriy Tarasov, 2015. Released under the [MIT](https://github.com/rubysamurai/mui-sass/blob/master/LICENSE.txt) license.