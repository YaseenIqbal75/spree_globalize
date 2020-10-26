module Spree::DownloadableDecorator
  def self.prepended(base)
    base.translates :title, fallbacks_for_empty_translations: true
  end
  
  Spree::Downloadable.include SpreeGlobalize::Translatable
end

::Spree::Downloadable.prepend(Spree::DownloadableDecorator)
