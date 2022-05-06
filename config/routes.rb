Rails.application.routes.draw do
  get "/"=>"home#top"
  get "contract/new"=>"contract#new"
  post "contract/create"=>"contract#create"
end
