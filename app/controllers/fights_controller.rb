class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @fight = Fight.new
    authorize @fight
    @arena = Arena.find(params[:arena_id])
  end

  def create
    @fight = Fight.new(strong_params)
    @arena = Arena.find(params[:arena_id])
    authorize @fight
    @fight.arena = @arena
    @fight.fighter = current_user
    if @fight.save
      redirect_to arena_path(@arena)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
    if @fight.update(strong_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def approve
  end

  def deny
  end

  private

  def set_fight
    @fight = Fight.find(params[:id])
    authorize @fight
  end

  def strong_params
    params.require(:fight).permit(:duration, :weapons_allowed, :date, :number_of_fighters, :title)
  end
end
