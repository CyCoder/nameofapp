class StaticPagesController < ApplicationController
  def landing_page
  	@products = Product.limit(5)
  end

  def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  ActionMailer::Base.mail(:from => @email,
  		:to => 'ptuan917@gmail.com',
  		:subject => "Bike Berlin, #{@name} sent you a message!",
  		:body => @message).deliver_now
  end
end
