Rails.application.routes.draw do
  mount Uswds::Rails::Engine => "/uswds-rails"
  root to: 'pages#root'
end
