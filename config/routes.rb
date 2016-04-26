Rails.application.routes.draw do
  resources :eopartials do
    get "delete"
  end
  resources :eoviews do
    get "delete"
  end
  resources :eodivs do
    get "delete"
  end
  resources :eopages do
    get "delete"
  end
  resources :eopagcols do
    get "delete"
  end
  resources :eoapps do
    get "delete"
  end
  resources :eomodels do
    get "delete"
  end
  resources :eoobjcols do
    get "delete"
  end
  resources :eoobjects do
    get "delete"
  end
  resources :eocolcols do
    get "delete"
  end
  resources :eocolumns do
    get "delete"
  end
  resources :eodatcols do
    get "delete"
  end
  resources :eostoredats do
    get "delete"
  end
  resources :eorowcols do
    get "delete"
  end
  resources :eorowdatcols do
    get "delete"
  end
  resources :eorows do
    get "delete"
  end
  resources :generics
  resources :terminals do
    get "delete"
    get "useapp"
    get "crud"
  end
  post 'telc' => "terminals#crud"
  post 'findex' => "generics#findex"
  post 'fnew' => "generics#fnew"

  root 'terminalapps#buildapp'
end
