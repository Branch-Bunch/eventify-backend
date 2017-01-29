Rails.application.routes.draw do
  root 'welcome#index'
  get 'schedules' => 'schedule#index'
  post 'schedules' => 'schedule#create'
  get 'schedules/:id' => 'schedule#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
