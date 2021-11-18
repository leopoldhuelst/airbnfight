class ArenasController < ApplicationController
  before_action :set_arena, only: [:show, :edit, :update, :destroy]

  def index 
    @arenas = policy_scope(Arena)
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
    @arena.save

    redirect_to arena_path(@arena)
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
    @arena.update(strong_params)

    redirect_to arena_path(@arena.id)
  end

  private

  def set_arena
    @arena = Arena.find(params[:id])
    authorize @arena
  end

  def strong_params
    params.require(:arena).permit(:address, :description, :capacity)
  end
end
