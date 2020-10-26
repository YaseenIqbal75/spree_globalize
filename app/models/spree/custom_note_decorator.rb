module Spree::CustomNoteDecorator
  def self.prepended(base)
    base.translates :body, fallbacks_for_empty_translations: true
  end
  
  Spree::CustomNote.include SpreeGlobalize::Translatable
end

::Spree::CustomNote.prepend(Spree::CustomNoteDecorator)
