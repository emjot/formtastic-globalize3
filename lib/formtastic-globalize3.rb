require "formtastic/globalize3/version"
require "formtastic/globalize3/helpers/input_helper"

require 'globalize'
require 'formtastic'

Formtastic::FormBuilder.send(:include, Formtastic::Globalize3::Helpers::InputHelper)
