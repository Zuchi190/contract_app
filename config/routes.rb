Rails.application.routes.draw do
  get 'things/show'
  get "/"=>"home#top"
  get "contract/new"=>"contract#new"
  post "contract/create"=>"contract#create"
  get "/things/show.pdf"=>"things#show"
end
