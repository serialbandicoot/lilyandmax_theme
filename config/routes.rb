Spree::Core::Engine.routes.append do
  get 'about/index'
  match 'about', :to => "about#index"

  get 'return/index'
  match 'return', :to => "return#index"

  get 'tandc/index'
  match 'tandc', :to => "tandc#index"

  get 'faq/index'
  match 'faq', :to => "faq#index"

  get 'news_letter/index'
  match 'news_letter', :to => "news_letter#index"

  get 'contact_us/index'
  match 'contact_us', :to => "contact_us#index"

  get 'delivery/index'
  match 'delivery', :to => "delivery#index"

  get 'cupcake_decorations/index'
  match 'cupcake_decorations', :to => "cupcake_decorations#index"

  get 'site/index'
  match 'site', :to => "site#index"

  get 'sitemap/index'
  match 'sitemap', :to => "sitemap#index"

  namespace :admin do
    resource :google_merchants
  end

end