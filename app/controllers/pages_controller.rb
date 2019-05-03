class PagesController < ApplicationController
	## PAGINAS ##

	# Abre a pagina sobre, busca todos os contatos salvos e envia como variavel
	def sobre
		@contatos = Page.all
	end

	# Se salvo o contato, a pagina show é chamada confirmando que foi salvo o contato com sucesso
	def show
		@contato = Page.find(params[:id])
	end

	# Abre a página para criar novo contato
	def contato
		@contato = Page.new
	end
	
	def destroy
		begin
			@contato = Page.find(params[:id])
			@contato.destroy
			redirect_to sobre_path
		rescue StandardError => e
			return e
		end
	end

	# Recebe o formulário enviado na página contato e cria novo contato, caso não consiga chama a página de erro
	def create
		@contato = Page.new(page_params)
		if @contato.save
			redirect_to @contato
		else
			render 'contato'
		end
	end


	private def page_params
		params.require(:contato).permit(:nome, :email)
	end

	## RASTREAR ##
	
	# Retorna os 50 ultimos registros
	def relatorio
		@relatorio = Rastrear.all.order("created_at DESC").limit(50)
	end

	# Verifica a quantidade de registros salvos, Se = a quantidade determinada apaga o primeiro registro
	# Salva o novo registro
	def rastrear
		if Rastrear.all.count() == 100
			Rastrear.first.destroy
		end
		@rastrear = Rastrear.new(rastrear_params)
		@rastrear.save
	end
	private def rastrear_params
		params.require(:rastro).permit(:url, :date, :user)
	end

end