class UsersController < ApplicationController

  # def movie_params
  #   params.require(:movie).permit(:title, :rating, :description, :release_date)
  # end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def new
    # create user
    @user = User.new

    # Note: should check the security code
  end

  def signin_show
    # signin homepage
    @users = User.all
  end

  def signin
    # sign in
    @user = User.create!(movie_params)
    flash[:notice] = "#{@user.title} was successfully created."
    redirect_to movies_path
  end

  def signup_show
    # signup homepage
    @movies = User.all
  end

  def signup
    # sign up
    @user = User.create!(movie_params)
    flash[:notice] = "#{@user.title} was successfully created."
    redirect_to movies_path
  end

  def forgot_show
    # forgot password homepage
    @users = User.all
  end

  def forgot
    # forgot password
    @user = User.create!(movie_params)
    flash[:notice] = "#{@user.title} was successfully created."
    redirect_to movies_path
  end

  def send_code
    # send verfication code to the email
  end
  
  def edit
    @user = User.find(params[:id])
  end  

end
