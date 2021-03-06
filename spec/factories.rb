FactoryGirl.define do
 factory :user do 
 	sequence(:name) { |n| "Person #{n}"}
 	sequence(:email) {|n| "Person_#{n}@example.com"}
 	password "Foobar"
 	password_confirmation "Foobar"
 end

 	factory :admin do 
 		admin true 
 	end

 	factory :micropost do 
 		content "Lorem ipsum"
 		user
 	end
end