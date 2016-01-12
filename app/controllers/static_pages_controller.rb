class StaticPagesController < ApplicationController
  def landing_page
  	@products = Product.limit(5)
  end
end
