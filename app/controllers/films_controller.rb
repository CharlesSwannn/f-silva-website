class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.create(film_params)
    if @film.save
      redirect_to films_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    if @film.update(film_params)
      redirect_to film_path(@film)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def film_params
    params.require(:film).permit(:title, :description, :year, :festivals, :awards, photos: [])
  end
end
