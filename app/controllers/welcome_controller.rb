class WelcomeController <ApplicationController

  def index
    @user = BleacherApi::Authenticate.login('thompson.kpk@gmail.com', 'password')
binding.pry
  end

end
