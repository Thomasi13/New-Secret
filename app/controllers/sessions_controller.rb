class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)

	   if user && user.authenticate(params[:session][:password])
		  flash[:success] = 'Your are succefully connected'
		  log_in (user)
      puts params 
		  redirect_to root_path

    else
    	flash.now[:danger] = 'Invalid email/password combination'
    	render 'new'
	  end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
