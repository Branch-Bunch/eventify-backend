Rails.application.routes.draw do
  root 'welcome#index'
  get 'schedules' => 'schedule#index'
  post 'schedules' => 'schedule#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
