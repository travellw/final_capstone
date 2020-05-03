class Api::AttachmentsController < ApplicationController
  def create
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_url = response["secure_url"]
    @attachment = Attachment.new(
      ticket_id: params[:ticket_id],
      url: cloudinary_url,
    )
    if @attachment.save
      render "show.json.jbuilder"
    else
      render json: {errors: @attachment.errors.full_messages}, status: 422
    end
  end
end
