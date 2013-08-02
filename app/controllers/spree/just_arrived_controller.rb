module Spree
  class JustArrivedController < BaseController

    def index
      @products = Spree::Product.all
    end
  end
end