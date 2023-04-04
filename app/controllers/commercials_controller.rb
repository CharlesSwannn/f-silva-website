class CommercialsController < ApplicationController
  before_action :set_commercial, only: %i[show edit update]

  def index
    @commercials = Commercial.all
  end

  def show; end

  def new
    @commercial = Commercial.new
  end

  def create
    @commercial = Commercial.new(commercial_params)
    if @commercial.save
      redirect_to commercials_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @commercial.update(commercial_params)
      redirect_to commercial_path(@commercial)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
  end

  private

  def set_commercial
    @commercial = Commercial.find(params[:id])
  end

  def commercial_params
    params.require(:commercial).permit(:title, :year, :company, :realização, :montagem, :producer, :vimeo_id, :cover_photo, display_photos: [])
  end
end
