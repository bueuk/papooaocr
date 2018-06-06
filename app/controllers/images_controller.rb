class ImagesController < ApplicationController

rescue_from(ActionController::ParameterMissing) do | missing_params_exception | 
  redirect_to root_path
  flash[:danger] = 'Please choose an image'
end

  def index 
    @image = Image.new
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(resources_params)

    if @image.save
    @image_text = `tesseract /home/z/Programming/rails-dev/ocr/public/#{@image.attachment} - -l eng --oem 3`
    flash[:success] = 'Image convert to Text success!'
    else
      puts @image.errors.full_messages
      render 'new'
    end
  end


  private

  def resources_params
    params.require(:image).permit(:attachment)
  end

end
