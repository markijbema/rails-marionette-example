RailsMarionetteExample::Application.routes.draw do
  root to: redirect('/x')
  get 'x' => 'home#index'
  get 'x/:id' => 'home#show'
end
