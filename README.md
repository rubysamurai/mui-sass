# MUI for Sass

[![Gem Version](https://badge.fury.io/rb/mui-sass.svg)](http://badge.fury.io/rb/mui-sass)
[![Build Status](https://travis-ci.org/rubysamurai/mui-sass.svg?branch=master)](https://travis-ci.org/rubysamurai/mui-sass)

`mui-sass` is a Sass-powered version of [MUI framework](https://www.muicss.com/) for your Ruby applications. It works with Ruby on Rails, Compass, Sprockets, etc.

## Installation

This package provides MUI framework CSS and JavaScript components. HTML Email, React, WebComponents and Design Files are not included.

## Installation

* [Ruby on Rails](#ruby-on-rails)
* [Compass](#compass)

### Ruby on Rails

Add this line to your Rails application's Gemfile:

```ruby
gem 'mui-sass'
```

And then execute `bundle` command to install.

Import `mui` in `app/assets/stylesheets/application.scss`:

```scss
@import 'mui';
```

Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `//= require` and `//= require_tree` statements from file.

Alternatively, to keep original `application.css` file, you can create `custom.scss` file in same folder and import `mui` there.

Require `mui` javascript in `app/assets/javascripts/application.js`:

````
//= require mui
````

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

You can import individual `scss` components like this:

First you need to include core components:

```scss
@import 'mui/normalize-3.0.2';
@import 'mui/colors';
@import 'mui/variables';
@import 'mui/mixins';
```

Then add component:
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

The full set of MUI variables can be found [here](https://github.com/rubysamurai/mui-sass/blob/master/vendor/assets/stylesheets/mui/_variables.scss)

## Contributing

Fork the project and submit a pull request.