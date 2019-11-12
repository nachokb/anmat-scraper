# frozen_string_literal: true

require 'interactor'
require './base'

class GetListing
  include Zeus::InteractorBase

  def call
    puts "Yay! #{self.class.name}"

    context.fail! message: 'matanga'
  end

  def rollback
    puts "Undoing #{self.class.name}"
  end
end
