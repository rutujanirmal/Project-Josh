Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/create_student", to: 'students#create'
  get "/get_students", to: 'students#index'

end
