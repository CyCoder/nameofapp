FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@gmail.com" }
	factory :user do
		email 
    password "test1234"
    first_name "Philip"
    last_name "Tuan"
    admin true
	end
end