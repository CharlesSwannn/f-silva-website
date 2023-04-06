class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def docs
    @films = Film.where(category: "doc")
  end

  def narrative
    @films = Film.where(category: "narrative")
  end

  def dubbing
    @films = Film.where(category: "dubbing")
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
    params.require(:film).permit(:title, :description, :year, :festivals, :awards, :vimeo_id, :montage, :director, :category, :producer, :cover_photo, display_photos: [])
  end
end
