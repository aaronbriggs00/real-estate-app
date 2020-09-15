Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "listings/:id" => "listings#show"
    get "/listings" => "listings#index"
    post "/listings" => "listings#create"
  end
end
