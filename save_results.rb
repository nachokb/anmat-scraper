# frozen_string_literal: true

require 'interactor'
require './base'

class SaveResults
  include Zeus::InteractorBase

  def call
    puts "Yay! #{self.class.name}"
  end

  def rollback
    puts "Undoing #{self.class.name}"
  end
end
