FactoryGirl.define do
	factory :user do
		name	"Jon Grenning"
		email	"jon.grenning@shopify.com"
		password "foobar"
		password_confirmation "foobar"
	end
end
