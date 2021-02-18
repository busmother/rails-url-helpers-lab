Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/students', to: 'students#index'
# get '/student/:id', to: 'students#show'

resources :students, only: [:index, :show]

# A user should be able to go to /students/:id/activate to 
# toggle their active attribute between true and false. 
# (This is just the activate route, and not a actual view.)

# get '/student/:id/activate' do
#   @student = Student.find(params[:id])
#   if @student.active
#     @student.active = false
#   else
#     @student.active = true
#   end
#   redirect "/student/#{@student.id}"
# end

get '/students/:id/activate', to: 'students#activate'

end
