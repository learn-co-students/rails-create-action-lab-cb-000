Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  post '/students', to: 'students#create'
  get '/student/:id', to: 'students#show', as: 'student'
end
