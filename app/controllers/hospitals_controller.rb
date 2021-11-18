class HospitalsController < ApplicationController
  def index
    @arenas = policy_scope(Arena)
    @hospitals = Hospital.all
  end

  def show
    @arena = Arena.new
    authorize @arena
    @hospital = Hospital.find(params[:id])
  end
end
