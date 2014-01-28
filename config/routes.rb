RitlyApp::Application.routes.draw do
  #go controller

    #root to: "go#index"

    #get "/go/:random_string", to: "go#redirect", as: :redirect

    #get "/go/:random_string/preview", to: "go#preview", as: :preview
 

 #links controller

 	root to: "links#index"

    get "/links", to: "links#index"

    get "/links/new", to: "links#new", as: :new_link

    get "/links/:random_string", to: "links#show", as: :link

    get "/links/:random_string/preview", to: "links#preview", as: :preview

    get "/go/:random_string", to: "links#redirect", as: :redirect

    post "/links", to: "links#create" 


end
