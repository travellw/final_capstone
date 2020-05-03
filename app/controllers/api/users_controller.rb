class Api::UsersController < ApplicationController
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      title: params[:title],
      # password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all 
    render "index.json.jb"
  end


  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "This user is destroyed."}
  end


end
