class BodyPartsController < ApplicationController
  def show
    @body_part=BodyPart.find(params[:id])
    
    @posts=@body_part.posts

   
  end
end
