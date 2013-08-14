Blog::Application.routes.draw do
   resources :posts do
      resources :comentarios
   end
   root :to => "posts#index"
end