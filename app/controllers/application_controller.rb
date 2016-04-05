class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	skip_before_filter :verify_authenticity_token
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

	rescue_from "CanCan::AccessDenied" do |exception|
	  redirect_to main_app.root_url, :alert => exception.message
	end
end
