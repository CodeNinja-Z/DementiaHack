Rails.application.routes.draw do

  devise_for :users
  resources :clinicians
  resources :patients do
    resources :caregivers
    get 'clinicians' => 'patients#clinicians'
  end

  post 'caregivers/caregiver_forgot_meds_text_sender'

  root 'welcome#index'
  
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
