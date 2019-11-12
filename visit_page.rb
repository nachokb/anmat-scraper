# frozen_string_literal: true

require 'interactor'
require './base'

class VisitPage
  include Zeus::InteractorBase

  def call
    puts "Yay! #{self.class.name}"
  end

  def rollback
    puts "Undoing #{self.class.name}"
  end

  private
  def validate_context!
    expects! :driver
    expects! :url
    # expects! :url2
  end

  def driver
    context.driver
  end
end
