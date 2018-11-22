Rails.application.routes.draw do

  resources :projects
  resources :teams
  root 'home#index'
  
	# modifying devise routes for adding the feature of user confirming their account through a link sent to their mail.
	# How it works? 
	# The person creating the team generates an account of his team mate with name and email and devise sends a link for same to that email address. Then, the user comes through that link and generates a password for his account which is then appended to the same account!

	as :user do
		put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
	end



  devise_for :users, controllers: {
  	registrations: 'registrations',
  	confirmations: 'confirmations'
  }

  
end
