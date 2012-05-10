module Spree
  class CupcakeDecorationsController < BaseController

    def index
      @products = Spree::Product.all
    end
  end
end