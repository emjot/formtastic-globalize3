# Formtastic::Globalize3

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

## Todo

* Tests!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
