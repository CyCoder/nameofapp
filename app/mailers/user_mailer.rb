class UserMailer < ApplicationMailer
	default from: "ptuan917@gmail.com"

	def contact_form(email, name, message)
		@message = message
			mail(:from => email,
				   :to => 'ptuan917@gmail.com',
  		     :subject => "Bike Berlin, #{@name} sent you a message!")
	end
end
