Rails.application.routes.draw do
 get "/" => "site#home"
 get "/contact" => "site#contact"
 get "/list" => "site#list"
 #get "/show/:project_id" => "site#show"
 get "/show/:project_id/entries" => "entries#show"
 get 'list/:project_id/entries/new' => 'entries#new'
end