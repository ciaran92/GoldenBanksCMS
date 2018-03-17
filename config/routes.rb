Rails.application.routes.draw do

  devise_for :users
	root 'pages#dashboard', :as => :home

	get "my_articles", to: "articles#display_all_articles", :as => :display_blog 
	#get "post/:id", to: "articles#display_selected_article", :as => :display_selected_article
	get "manage_stallions", to: "stallions#all_stallions", :as => :all_stallions
	get "stallions_for_sale",  to: "stallions#stallions_for_sale", :as => :all_stallions_for_sale

	get "manage_show_team", to: "members#display_members", :as => :display_members

	resources :articles
	resources :stallions
	resources :members
	resources :emails
  end
