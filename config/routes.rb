Rails.application.routes.draw do
    get 'rsas' => 'rest#generate_key'
end
