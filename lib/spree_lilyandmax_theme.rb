module Spree::GoogleMerchant
end


module SpreeLilyandmaxTheme
  class Engine < Rails::Engine
    railtie_name "spree_lilyandmax_theme"

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    initializer "spree.google_merchant.preferences", :after => "spree.environment" do |app|
      Spree::GoogleMerchant::Config = Spree::GoogleMerchantConfiguration.new
    end

    config.to_prepare &method(:activate).to_proc
  end
end

