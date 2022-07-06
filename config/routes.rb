Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root to: "public/location_reports#index"

  namespace :admin do
    resources :users, only: [:index, :show, :edit]
    resources :location_reports, only: [:index, :show]
    get 'top' => 'location_reports#top'
  end

  namespace :public do
    resources :users, only: [:index, :show, :edit]
    resources :location_reports, only: [:new, :index, :show]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
