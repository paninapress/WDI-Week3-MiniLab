RitlyApp::Application.routes.draw do
  #go controller

    root to: "go#index"

    get "/go/:random_string", to: "go#redirect", as: :redirect

    #get "/go/:random_string/preview", to: "go#preview", as: :preview
 

 #links controller
    get "/links", to: "links#index", as: :links

    get "/links/new", to: "links#new", as: :new_link

    get "/links/:random_string", to: "links#show", as: :link

    get "/links/:random_string/preview", to: "links#preview", as: :preview

    post "/links", to: "links#create" 


end
