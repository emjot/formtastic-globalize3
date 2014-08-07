# Formtastic::Globalize3

[![Build Status](https://travis-ci.org/emjot/formtastic-globalize3.png?branch=master)](https://travis-ci.org/emjot/formtastic-globalize3)

Transparently use globalize3 translated model fields in formtastic forms.

Without this gem, formtastic can't detect the column type of translated columns correctly (for example, you get a text field instead of a checkbox for a boolean column).

This gem patches `column_for` in the `Formtastic::Helpers::InputHelper`.

## Compatibility

Currently, formtastic 2.x and globalize3 0.3 are supported.

## Installation

Add this line to your application's Gemfile:

    gem 'formtastic-globalize3'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install formtastic-globalize3

## Usage

You don't need to do anything, just include it in your Gemfile.

## Development

To setup tests, make sure all the ruby versions defined in `.travis.yml` are installed on your system.

Run tests via:

* `rake wwtd` (or, faster: `rake wwtd:parallel`) for all combinations of ruby/rails versions
* `rake wwtd:local` for all rails versions, but only on current ruby
* `rake spec` (or e.g. `bundle exec rspec spec --format documentation`) with main Gemfile and only on current ruby 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
