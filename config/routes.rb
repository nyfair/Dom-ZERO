Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hs', to: 'application#holyshit'
  get '/swagger', to: 'application#swagger'
  get '/api', to: 'application#api'
  root 'application#swagger'
end
