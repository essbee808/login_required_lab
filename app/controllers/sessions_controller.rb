class SessionsController < ApplicationController
    
    def new
       #login
    end

    def create
      #submitting the login form
      if params[:name]
          session[:name] = params[:name]
        
      else
          redirect_to :new
      end

      return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end

    def destroy
        session.delete(:name)
        redirect_to controller: 'application', action: 'hello'
    end

end