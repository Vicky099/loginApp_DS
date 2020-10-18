FactoryBot.define do
	factory :user do
		id {2}
		email {"test@gmail.com"}
		password {"12345678"}
		role {"admin"}
	end
end