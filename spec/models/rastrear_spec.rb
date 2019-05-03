require 'rails_helper'

RSpec.describe Rastrear, type: :model do
  	it "is invalid if email is incorrect" do
  		#Teste para 50 rastros
		rastrear = create_list(:rastro, 50)
		rastrear.each do |rastro| 
			expect(rastro).to be_valid
		end
	end
end
