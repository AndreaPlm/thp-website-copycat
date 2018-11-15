Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'static#index'

  get '/lyon', to: 'static#lyon'
  post '/lyon', to: 'static#lyon_create'

  get '/students', to: 'static#students'
  post '/students', to: 'static#student_create'

  get '/corp', to: 'static#corp'
  post '/corp', to: 'static#corp_create'


end
