class OmniauthController < ApplicationController

 def create
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    user = User.from_omniauth(env["omniauth.auth"])

    byebug
    session[:user_id] = user.id

    redirect_to root_url

   
  end

end
