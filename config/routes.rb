Rails.application.routes.draw do
  
  root               'static_pages#home'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  get    'signup' => 'users#new'
  delete 'logout' => 'sessions#destroy'
  
  resources :users, only: [:create, :show]
  resources :events
  resources :event_attendees, only: [:create, :destroy]
  
end
