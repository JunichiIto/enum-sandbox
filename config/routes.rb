Rails.application.routes.draw do
  resources :articles do
    patch :toggle_status
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
