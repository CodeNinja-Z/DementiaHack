Rails.application.routes.draw do

  resources :schedules do
	  resources :scheduled_events
  end

  resources :medications

  get 'schedule/monitor'

  resources :actual_events, only: [:new, :create]
end
