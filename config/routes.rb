Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'static#index'

  get '/lyon', to: 'static#lyon'

  get '/students', to: 'static#students'

  get '/corp', to: 'static#corp'
end
