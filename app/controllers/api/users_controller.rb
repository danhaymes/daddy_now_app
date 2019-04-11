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

  def update
    @user = User.find(params[:id])
    
    render 'show.json.jbuilder'
  end

end
