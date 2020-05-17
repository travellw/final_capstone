class Api::UsersController < ApplicationController
  
  def index
    @users = User.all 
    render "index.json.jb"
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      title: params[:title],
      # password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end


  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:id] || @user.name
    @user.email = params[:title] || @user.email
    @user.title = params[:issue] || @user.title
    @user.password = params[:created] || @user.password
    @user.save
    render "show.json.jb"
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "This user is destroyed."}
  end

end
