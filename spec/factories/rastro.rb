FactoryBot.define do
	factory :rastro, class: 'Rastrear' do
		url {["home", "sobre", "contato"].sample}
		date {FFaker::Time.datetime}
		user {FFaker::Random.rand(0..100)}
	end
end 