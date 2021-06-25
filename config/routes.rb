Rails.application.routes.draw do
  get '/parties', to: 'parties#index'
  # For details on the DSL available within this file, see https://guides.rubyonrg/routing.rails.ohtml
end
