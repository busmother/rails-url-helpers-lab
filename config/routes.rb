Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/students', to: 'students#index'
# get '/student/:id', to: 'students#show'

resources :students, only: [:index, :show]

# A user should be able to go to /students/:id/activate to 
# toggle their active attribute between true and false. 
# (This is just the activate route, and not a actual view.)

#we need to define a route helper and use as: 'activate_student_path'

get '/students/:id/activate', to: 'students#activate', as: :activate_student

end
