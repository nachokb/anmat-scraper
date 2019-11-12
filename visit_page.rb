# frozen_string_literal: true

require 'interactor'
require './base'

class VisitPage
  include Zeus::InteractorBase

  def call
    driver.navigate.to url
  end

  private
  def validate_context!
    expects! :driver
    expects! :wait
    expects! :url
  end
end
