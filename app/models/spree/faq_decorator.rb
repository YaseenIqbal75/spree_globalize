module Spree::FaqDecorator
  def self.prepended(base)
    base.translates :question, :answer, fallbacks_for_empty_translations: true
  end
  
  Spree::Faq.include SpreeGlobalize::Translatable
end

::Spree::Faq.prepend(Spree::FaqDecorator)
