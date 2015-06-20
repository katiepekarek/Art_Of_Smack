class UserController < ApplicationController
  def show_sign_in
  end

  def sign_in
    result = BleacherApi::Authenticate.login(params['email'], params['password'])

    # TODO: Set a status message
    unless result
      redirect_to show_sign_in_path
    end

    
  end
end
