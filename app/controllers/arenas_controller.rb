class ArenasController < ApplicationController
  before_action :set_arena, only: [:show, :edit, :update, :destroy]

  def index
    @arenas = policy_scope(Arena)
    @markers = @arenas.geocoded.map do |arena|
      {
        lat: arena.latitude,
        lng: arena.longitude
      }
    end
  end

  def show
  end

  def new
    @arena = Arena.new
    authorize @arena

  end

  def create
    @arena = Arena.new(strong_params)
    @arena.fighter = current_user
    authorize @arena
    if @arena.save
      redirect_to arena_path(@arena)
    else
      render :new
    end
  end

  def destroy
    id = params[:id]
    arena = Arena.find(id)
    arena.destroy

    redirect_to arenas_path
  end

  def edit
  end

  def update
    if @arena.update(strong_params)
      redirect_to arena_path(@arena.id)
    else
      render :edit
    end
  end

  private

  def set_arena
    @arena = Arena.find(params[:id])
    authorize @arena
  end

  def strong_params
    params.require(:arena).permit(:address, :description, :capacity, :image)
  end
end
