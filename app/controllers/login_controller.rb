class LoginController < ApplicationController
  skip_before_action :send_to_login_unless_logged_in

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    respond_to do |format|
      if user && user.password == params[:password]
        session[:user_id] = user.id # logged_in!
        format.html { redirect_to posts_path, notice: "#{user.first_name} is now logged in." }
      else
        @error = "Your email and password combination is not valid."
        format.html { render :new }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    respond_to do |format|
      format.html { redirect_to login_path, notice: 'You have been logged out.'}
    end
  end
end
