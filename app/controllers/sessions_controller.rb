class SessionsController < ApplicationController
  def create
    @bleacher_response = BleacherApi::Authenticate.login(params['email'], params['password'])
    @user = User.find_by(params[:user_id], params[:bleacher_id]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
