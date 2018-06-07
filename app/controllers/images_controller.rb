class ImagesController < ApplicationController

rescue_from(ActionController::ParameterMissing) do | missing_params_exception | 
  redirect_to root_path
  flash[:danger] = 'Please choose an image!'
end

  def index 
    @image = Image.new
    @languages = Language.all
  end

  def new
    @image = Image.new
    @languages = Language.all
  end

  def create
    @languages = Language.all
    @image = Image.new(resources_params)
    @image.language = @languages.find(params[:language])
    @language_code = @languages.find(params[:language]).lang_code
    @tesseract = `tesseract "#{Rails.public_path}#{@image.attachment}" - -l "#{@language_code}"` 
    @notice = "#{flash[:success] = 'Image convert to Text success!'}"

    if verify_recaptcha 
      if @image.save
        if @language_code == 'ind'
            @image_text = @tesseract
            @notice

        elsif @language_code == 'eng'
            @image_text = @tesseract
            @notice

        elsif @language_code == 'ara'
            @image_text = @tesseract
            @notice

        elsif @language_code == 'jpn'
            @image_text = @tesseract
            @notice
        else
            render 'new'
            #Debug errors
            puts @image.errors.messages
        end
      end
    else
      #Debug errors
      puts @image.errors.full_messages
      render 'new'
    end
  end


  private

  def resources_params
    params.require(:image).permit(:attachment)
  end

end
