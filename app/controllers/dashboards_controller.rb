class DashboardsController < ApplicationController
  def index
    @arenas = policy_scope(current_fighter.arenas)
    @fights = current_fighter.fights
  end
end
