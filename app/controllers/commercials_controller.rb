class CommercialsController < ApplicationController
  def index
    @commercials = Commercial.all
  end

  def show
    @commercial = Commercial.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
