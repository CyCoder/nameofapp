class StaticPagesController < ApplicationController
  def landing_page
  	@products = Product.limit(10)
  end
end
