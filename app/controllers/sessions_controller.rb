class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:signin][:email]).first

    if user && user.authenticate(params[:signin][:password])
      session[:user_id] = user.id
      flash[:notice] = "#{user.name} Signed in Successfully."

      redirect_to user_posts_path(user)
    else
      flash[:error] = "Sorry login invalid"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

