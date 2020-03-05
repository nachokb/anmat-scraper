# frozen_string_literal: true

require 'interactor'
require './base'

class GetListing
  include Zeus::InteractorBase

  def call
    # fill 'input#zk_comp_73', # GTIN
    #   with: '07798032933207' # Lorazepam
    fill 'input#zk_comp_73', # GTIN
      with: '07795378002710' # T4 Montpellier
    click 'button#zk_comp_80' # Buscar
    click '[title="Ver Detalles"]' # Ver Detalles
  end
end
