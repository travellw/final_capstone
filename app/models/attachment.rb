class Attachment < ApplicationRecord
  belongs_to :ticket

  def create
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_url = response["secure_url"]
    @post = Post.new(
      ticket_id: params[:ticket_id],
      url: params[:url],
      image: cloudinary_url
    )
    if @post.save
      render "show.json.jbuilder"
    else
      render json: {errors: @post.errors.full_messages}, status: 422
    end
  end


end
