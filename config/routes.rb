Rails.application.routes.draw do

  devise_for :users
  resources :clinicians
  resources :patients do
    resources :caregivers do 
    post 'caregiver_forgot_meds_text_sender'
    end  
    get 'clinicians' => 'patients#clinicians'
  end 

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
