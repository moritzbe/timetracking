Rails.application.routes.draw do

get '/' => 'projects#index'
 resources :projects do
 resources :entries
 end


 # get '/' => 'site#home'
 # get "/" => "site#home"
 # get "/contact" => "site#contact"
 # get "/projects" => "site#list"
 # get "/show/:project_id/entries" => "entries#show"
 # get '/projects/:project_id/entries' => 'entries#new', as: "project_entries"
 # post '/projects/:project_id/entries' => 'entries#create'
end