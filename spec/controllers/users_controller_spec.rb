require 'rails_helper'

describe UsersController, :type => :controller do
	before do
		@user = User.create!(email: "ptuan917@gmail.com", password: "test1234")
		@user2 = User.create!(email: "ptuan1573@gmail.com", password: "test1234")
	end

	describe "GET #show" do

		context "User is logged in" do
			before do 
				sign_in @user
			end

			it "loads correct user details" do
				get :show, id: @user.id
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end

			it "user1 can't access user2's show page" do
				get :show, id: @user2.id
				expect(response).to have_http_status(302)
				expect(response).to redirect_to(root_path)
			end
		end

     context "No user is logged in" do
       it "redirects to login" do
         get :show, id: @user.id
         expect(response).to redirect_to(root_path)
       end
     end
	end
end