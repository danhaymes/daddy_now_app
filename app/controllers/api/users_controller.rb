class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      user_name: params[:user_name],
      zipcode: params[:zipcode],
      profile_pic: params[:profile_pic],
      due_date: params[:due_date]
      )
    @user.save
    render 'show.json.jbuilder'
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.user_name = params[:user_name] || @user.user_name
    @user.zipcode = params[:zipcode] || @user.zipcode
    @user.profile_pic = params[:profile_pic] || @user.profile_pic
    
    @user.save
    render 'show.json.jbuilder'
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/users"
  end

end
