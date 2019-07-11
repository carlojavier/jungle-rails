class SessionsController < ApplicationController
    
    def new
    end

    def create 
        user = User.find_by_email(params[:email])
        #check if user exists and if PW is correct
        if user && user.authenticate(params[:password])
            #bake cookies
            session[:user_id] = user_id
            redirect to '/'
        else
            redirect to '/login'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect to '/login'
    end

end
