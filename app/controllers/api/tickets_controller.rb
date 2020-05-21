class Api::TicketsController < ApplicationController  
  def index
    @tickets = Ticket.all 
    render "index.json.jb"
  end

  def create
    # response = Cloudinary::Uploader.upload(params[:url])
    # cloudinary_url = response["secure_url"]
    @ticket = Ticket.new(
    #  id: params[:id],
     title: params[:title],
     issue: params[:issue],
     created: params[:created],
     originator: params[:originator],
    #  owner: params[:owner],
     resolution: params[:resolution],
     status: params[:status],
     user_id: 1,
    #  cloudinary_url: cloudinary_url,
    ) 
    if @ticket.save 
      render "show.json.jb"
    else
      render json: {errors: @ticket.errors.full_messages}, status: 422 
    end
  end

  def show
    @ticket = Ticket.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def update
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.title = params[:title] || @ticket.title
    @ticket.issue = params[:issue] || @ticket.issue
    @ticket.created = params[:created] || @ticket.created
    @ticket.originator = params[:originator] || @ticket.originator
    # @ticket.owner = params[:owner] || @ticket.owner
    @ticket.resolution = params[:resolution] || @ticket.resolution
    @ticket.status = params[:status] || @ticket.status
    @ticket.save 
    render "show.json.jb"
  end

  def destroy
  # ticket = Ticket.find_by(id: params[:id])
    ticket = Ticket.find_by(id: params[:id])
    ticket.destroy
    render json: {message: "Ticket no longer exists."}
  end


  # def destroy
  #   user = User.find_by(id: params[:id])
  #   user.destroy
  #   render json: {message: "This user is destroyed."}
  # end
end

