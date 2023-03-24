class CommercialsController < ApplicationController
  def index
    @commercials = Commercial.all
  end

  def show
    @commercial = Commercial.find(params[:id])
  end

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

  def edit
  end

  def update
  end

  def delete
  end

  private

  def commercial_params
    params.require(:commercial).permit(:title, :year, :company, photos: [])
  end
end
