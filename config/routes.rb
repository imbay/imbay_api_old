Rails.application.routes.draw do
  scope :api do
    scope :v1 do
        scope :account do
            post '/sign_up', to: 'account#sign_up'
            post '/sign_in', to: 'account#sign_in'
            post '/sign_out', to: 'account#sign_out'
            post '/current_user', to: 'account#current_user'
        end
        scope :photo do
          post '/upload', to: 'photo#upload'
          post '/delete', to: 'photo#delete'
          post '/read_comments', to: 'photo#read_comments'
          get '/list', to: 'photo#list'
          get '/content/:id', to: 'photo#content'
        end
    end
  end
end
