require 'rails_helper'

RSpec.describe PagesController, type: :controller do
	#Testando se os retornos das páginas estão corretos
	describe "Get test Controller" do
		it "return success status" do
			get :sobre
			expect(response).to have_http_status(200)
		end
		it "return success status" do
			get :contato
			expect(response).to have_http_status(200)
		end
		it "return success status" do
			get :relatorio
			expect(response).to have_http_status(200)
		end
		
	end

	#Testando a criação de novo contato
	describe "Post /contato" do
		context "when it has valid parameters" do
			it "create contato" do
				contato_atributes = FactoryBot.attributes_for(:contato)
				post :create, params: {contato: contato_atributes} 
				expect(Page.last).to have_attributes(contato_atributes)
			end
		end
		context "when it has no valid parameters" do
			it "does not create contato" do
				expect{
					post :create, params: {contato: { nome: '', email:''}}
				}.to_not change(Page, :count)
			end
		end

	end

	#Testando delete contato
	describe 'DELETE contato' do
		context 'when the contato exists' do
			it 'return status code 302' do
				contato = create(:contato)
				delete :destroy, params: {id: contato.id}
				expect(response).to have_http_status(302)
			end
			it 'destroy the record' do
				contato = create(:contato)
				delete :destroy, params: {id: contato.id}
				expect {contato.reload}.to raise_error ActiveRecord::RecordNotFound
			end

		end
		context 'when the contato error' do
			it 'return status code 204' do
				delete :destroy
				expect(response).to have_http_status(204)
			end
		end
	end 
end
