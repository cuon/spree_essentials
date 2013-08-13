module SpreeEssentials
  class Railtie < Rails::Railtie
    initializer "spree_essentials.spree_helpers" do
      ActionView::Base.send :include, Spree::StoreHelper
    end
  end
end

# lib/my_gem.rb
require 'spree_essentials/railtie' if defined?(Rails)