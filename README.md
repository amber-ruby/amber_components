[![license](https://img.shields.io/badge/License-MIT-purple.svg)](LICENSE)
[![Gem Version](https://img.shields.io/gem/v/amber_component.svg?style=flat)](https://rubygems.org/gems/amber_component)
[![Maintainability](https://api.codeclimate.com/v1/badges/ad84af499e9791933a87/maintainability)](https://codeclimate.com/github/amber-ruby/amber_component/maintainability)
[![CI badge](https://github.com/amber-ruby/amber_component/actions/workflows/ci_ruby.yml/badge.svg)](https://github.com/amber-ruby/amber_component/actions/workflows/ci_ruby.yml)
[![Coverage Badge](https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/Verseth/6a095c79278b074d79feaa4f8ceeb2a8/raw/amber_component__heads_main.json)](https://github.com/amber-ruby/amber_component/actions/workflows/ci_ruby.yml)
[![Downloads](https://ruby-gem-downloads-badge.herokuapp.com/amber_component)]((https://rubygems.org/gems/amber_component))

<img src="banner.png" width="500px" style="margin-bottom: 2rem;"/>

# AmberComponent

A simple component library which seamlessly hooks into your Rails project and allows you to create simple backend components. They work like mini controllers which are bound with their view.

Created by [Garbus Beach](https://github.com/garbusbeach) and [Mateusz Drewniak](https://github.com/Verseth).

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add amber_component

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install amber_component

If you're using a Rails application there's an installation generator that you should run:

```sh
$ rails generate amber_component:install
```

## Usage

TODO: Write usage instructions here

### Generators

#### Component

There's a generator for quickly generating new components.

This generator will create all necessary files for a functional
component.

```sh
$ rails generate amber_component Button
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/amber-ruby/amber_component.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Development

### Setup

To setup this gem for development you should use the setup script.

```sh
$ bin/setup
```

### Console

You can access an IRB with this entire gem preloaded like this

```sh
$ bin/console
```

### Tests

You can run all tests with:

```sh
$ rake test
```

All unit tests:

```sh
$ rake test:unit
```

All integration tests:

```sh
$ rake test:integration
```

### Release

To release a new version, update the version number in `version.rb`, and then run

```sh
$ bundle exec rake release
```

This will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Local installation

To install this gem onto your local machine, run

```sh
$ bundle exec rake install
```

### Problems with bundling

> An error occurred while installing ffi (1.15.5), and Bundler cannot continue.
>
> In Gemfile:
>  sassc was resolved to 2.4.0, which depends on
>    ffi

```sh
$ gem install ffi -- --with-cflags="-fdeclspec"
```

**puma**

> Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
>
>    current directory: /Users/mateuszdrewniak/.rvm/gems/ruby-3.1.0@dupa/gems/puma-5.6.2/ext/puma_http11
>
> /Users/mateuszdrewniak/.rvm/rubies/ruby-3.1.0/bin/ruby -I /Users/mateuszdrewniak/.rvm/rubies/ruby-3.1.0/lib/ruby/3.1.0 -r ./siteconf20220219-40641-4uxhq6.rb extconf.rb --with-cflags\=-Wno-error\=implicit-function-declaration
>
> checking for BIO_read() in -lcrypto... *** extconf.rb failed ***
>
> Could not create Makefile due to some reason, probably lack of necessary
> libraries and/or headers.  Check the mkmf.log file for more details.  You may
> need configuration options.

```sh
$ gem install puma -- --with-cflags="-fdeclspec"
```
