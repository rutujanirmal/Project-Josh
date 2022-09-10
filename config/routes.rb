Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/create_student", to: 'students#create'
  get "/get_students", to: 'students#index'

  post "/create_teacher", to: 'teachers#create'
  get "/get_teachers", to: 'teachers#index'

  post "/create_submission", to: 'submissions#create'
  get "/get_submissions", to: 'submissions#index'

  get "/mysubmissions/:id", to: 'submissions#mysubmissions'
  get "/assignedsubmissions/:id", to: 'submissions#assignedsubmissions'

end
