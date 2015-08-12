Rails.application.routes.draw do
  resources :ocorrencia
  resources :ocorrencia
  resources :ocorrencia
  root to: 'visitors#index'
  devise_for :users
  devise_scope :users do
    authenticated :users do
      root 'anuncios#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  
  #devise_for :usuarios, :skip => [:registration]
  #as :usuarios do
   # post 'sign_up' => 'devise/registration_create', :as => :usuario_create
  #end
    
 # resources :perfils
  resources :users
  resources :anuncios
  resources :lancamentos_contabeis

  # rotas para os períodos
  get 'lancamentos_contabeis/periodo/:periodo' => 'lancamentos_contabeis#no_periodo'

  # area administrativa
  get  '/admin/', to: 'admins#index'
  get  '/admin/sign_in',  to: 'admins#new'
  get  '/admin/sign_out', to: 'admins#destroy'
  post '/admin/sign_in',  to: 'admins#create'

  resources :condos, :path => "/admin/condos"
end
