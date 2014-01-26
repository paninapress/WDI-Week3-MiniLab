RitlyApp::Application.routes.draw do
  #go controller

    root to: "go#index"

    get "/go/:random_string", to: "go#redirect"

    get "/go/:random_string/preview", to: "go#preview"
 

 #links controller
    get "/links", to: "links#index"

    get "/links/new", to: "links#new"

    get "/links/:random_string", to: "links#show"

    post "/links", to: "links#create" 
end
