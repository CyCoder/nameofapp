class UserMailer < ApplicationMailer
	default from: "ptuan917@gmail.com"

	def contact_form(email, name, message)
		@message = message
			mail(:from => email,
				   :to => 'ptuan917@gmail.com',
  		     :subject => "Philly's Bike Shop, #{@name} sent you a message!")
	end

	def welcome(user)
  @appname = "Philly's Bike Shop"
  mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
	end
end
