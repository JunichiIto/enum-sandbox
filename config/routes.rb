Rails.application.routes.draw do
  resources :articles do
    patch :toggle_status
  end
end
