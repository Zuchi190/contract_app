Rails.application.routes.draw do
  get 'pdfs/bill'
  get "/"=>"home#top"
  get "contract/new"=>"contract#new"
  post "contract/create"=>"contract#create"
  get 'pdf/bill'
end
