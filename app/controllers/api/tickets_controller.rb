class Api::TicketsController < ApplicationController  
  def index
    @tickets = Ticket.all 
    render "index.json.jb"
  end

  def create
    @ticket = Ticket.new(
     id: params[:id],
     title: params[:title],
     issue: params[:issue],
     created: params[:created],
     originator: params[:originator],
     owner: params[:owner],
     resolution: params[:resolution],
     status: params[:status],
    ) 
    @ticket.save
    render "show.json.jb"
  end

  def show
    @ticket = Ticket.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def update
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.id = params[:id] || @ticket.id
    @ticket.title = params[:title] || @ticket.title
    @ticket.issue = params[:issue] || @ticket.issue
    @ticket.created = params[:created] || @ticket.created
    @ticket.originator = params[:originator] || @ticket.originator
    @ticket.owner = params[:owner] || @ticket.owner
    @ticket.resolution = params[:resolution] || @ticket.resolution
    @ticket.status = params[:statu] || @ticket.status
    render "show.json.jb"
  end

  def destroy
  # ticket = Ticket.find_by(id: params[:id])
  ticket = current_user.tickets.find_by(id: params[:id])
  ticket.destroy
  render json: {message: "Ticket no longer exists."}
  end
end

