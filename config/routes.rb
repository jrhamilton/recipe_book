RecipeBook::Application.routes.draw do

  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes/new', {:via => :post, :to => 'recipes#create'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id/edit', {:via => [:patch, :put], :to => 'recipes#update'})
  match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})

  match('tags', {:via => :get, :to => 'tags#index'})
  match('tags', {:via => :post, :to => 'tags#create'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})
end
