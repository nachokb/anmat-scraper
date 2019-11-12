# frozen_string_literal: true

require 'interactor'
require './base'

class GetListing
  include Zeus::InteractorBase

  def call
    fill 'input#zk_comp_73',
      with: '07798032933207' # Lorazepam
    click 'button#zk_comp_80' # Buscar
    click '[title="Ver Detalles"]' # Ver Detalles
  end
end
