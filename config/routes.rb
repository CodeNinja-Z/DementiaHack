Rails.application.routes.draw do

  devise_for :users
  resources :clinicians
  resources :patients

  root 'welcome#index'

  get 'patients/:id/clinicians' => 'patients#clinicians'

  get 'schedule/monitor'

  get 'medications/index'

  get 'medications/new'

  get 'medications/show'


  resources :schedules do
	  resources :scheduled_events
  end

  resources :medications

  get 'schedule/monitor'

  resources :actual_events, only: [:new, :create]
end
