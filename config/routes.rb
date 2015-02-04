Rails.application.routes.draw do
 get "/" => "site#home"
 get "/contact" => "site#contact"
 get "/projects" => "site#list"
 #get "/show/:project_id" => "site#show"
 get "/show/:project_id/entries" => "entries#show"
 get '/projects/:project_id/entries/new' => 'entries#new', as: "project_entries"
 post '/projects/:project_id/entries/new' => 'entries#create'
end