Rails.application.routes.draw do
	root 'home#index', as: 'home'
	get 'sobre'     => 'pages#sobre', as: 'sobre'
	get 'contato'   => 'pages#contato', as: 'contato'
	get 'relatorio' => 'pages#relatorio', as: 'relatorio'
	post 'rastrear' => 'pages#rastrear', as:'rastrear'
	post 'destroy' => 'pages#destroy', as:'destroy'
	resources :pages
end
