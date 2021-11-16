class ArenasController < ApplicationController
  def index
    @arenas = Arena.all
  end

  def show
    id = params[:id]
    @arena = Arena.find(id)
  end

  def new
  end

  def create
  end

  def destroy
    id = params[:id]
    arena = Arena.find(id)
    arena.destroy

    redirect_to arenas_path
  end

  def edit
    id = params[:id]
    @arena = Arena.find(id)
  end

  def update
    id = params[:id]
    arena = Arena.find(id)
    arena.update(strong_params)
    arena.save

    redirect_to arena_path(arena.id)
  end

  private

  def strong_params
    params.require(:arena).permit(:address, :description, :capacity)
  end
end
