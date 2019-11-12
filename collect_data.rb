# frozen_string_literal: true

# rubocop:disable Style/SpecialGlobalVars

require 'interactor'
require './base'

class CollectData
  include Zeus::InteractorBase

  def call
    span = elem('span.z-label#zk_comp_43')

    context.name = span.text
  rescue Selenium::WebDriver::Error::TimeoutError
    context.fail! message: $!.message,
      backtrace: $@[1..3]
  end
end
