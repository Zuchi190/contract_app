Rails.application.routes.draw do
  get 'post/index'
  get "/"=>"home#top"
  get "contract/new"=>"contract#new"
  post "contract/create"=>"contract#create"
  get "/post/index.pdf"=>"post#index"
  get "/test"=>"home#new"
end
