FactoryBot.define do
	factory :contato, class: 'Page' do
		nome { FFaker::Name.name }
		email { FFaker::Internet.email }
	end
end