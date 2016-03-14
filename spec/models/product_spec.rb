require 'rails_helper'

describe Product do 

	context "when the product has comments" do
		before do
			@product = Product.create!(name: "race bike")
			@user = User.create(email: "ptuan917@gmail.com", encrypted_password: "test1234")
			@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
			@product.comments.create!(rating: 3, user: @user, body: "The bike was good!")
			@product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
		end

		it "returns the average rating of all comments" do
			expect(@product.comments.average(:rating).to_f).to eq 3.0
		end
	end

	it "product is not valid" do
			expect(Product.new(description: "Nice bike")).not_to be_valid
	end
end