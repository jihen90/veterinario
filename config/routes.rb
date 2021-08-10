Rails.application.routes.draw do
  
  resources :clients do
    resources :pets
    delete 'pets/:id', to: 'pets#destroy', as: 'client_pets_destroy'
  end
  
  resources :pets do
    delete 'pets/:id', to: 'pets#destroy', as: 'pets_destroy'
    resources :pet_histories
    delete 'pet_histories/:id', to: 'pet_histories#destroy', as: 'pet_histories_destroy'
  end

  root 'clients#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
