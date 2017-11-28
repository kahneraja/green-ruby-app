Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts
  resources :addresses do
    resources :address_contacts
  end
end
