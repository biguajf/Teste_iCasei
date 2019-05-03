require 'rails_helper'

RSpec.describe Page, type: :model do
	it "contato is incorrect" do 
		#Teste para 15 contatos
		contatos = create_list(:contato, 15)
		contatos.each do |contato| 
			expect(contato).to be_valid
		end
	end
end
