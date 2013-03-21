RSpec.configure do |config|
  config.mock_with :rspec
end

require 'active_support'
require 'action_pack'
require 'action_view'
require 'action_controller'
require 'action_dispatch'

require File.expand_path(File.join(File.dirname(__FILE__), '../lib/formtastic-globalize3'))

# set up globalize3 and models (borrowed from globalize3)
require 'fileutils'
require 'logger'
tmpdir = File.join(File.dirname(__FILE__), "../tmp")
FileUtils.mkdir(tmpdir) unless File.exist?(tmpdir)
log = File.expand_path(File.join(tmpdir, "globalize3_test.log"))
FileUtils.touch(log) unless File.exists?(log)
ActiveRecord::Base.logger = Logger.new(log)
ActiveRecord::LogSubscriber.attach_to(:active_record)
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')
require File.expand_path('../data/schema', __FILE__)
require File.expand_path('../data/models', __FILE__)
I18n.locale = I18n.default_locale = :en
Globalize.locale = nil

# set up formtastic helper (borrowed from formtastic)
module FormtasticSpecHelper
  include ActionPack
  include ActionView::Context if defined?(ActionView::Context)
  include ActionController::RecordIdentifier
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::FormOptionsHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::ActiveRecordHelper if defined?(ActionView::Helpers::ActiveRecordHelper)
  include ActionView::Helpers::ActiveModelHelper if defined?(ActionView::Helpers::ActiveModelHelper)
  include ActionView::Helpers::DateHelper
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::AssetTagHelper
  include ActiveSupport
  include ActionController::PolymorphicRoutes if defined?(ActionController::PolymorphicRoutes)
  include ActionDispatch::Routing::PolymorphicRoutes
  include AbstractController::UrlFor if defined?(AbstractController::UrlFor)
  include ActionView::RecordIdentifier if defined?(ActionView::RecordIdentifier)

  include Formtastic::Helpers::FormHelper

  def self.included(base)
    base.class_eval do

      def protect_against_forgery?
        false
      end

    end
  end
end
