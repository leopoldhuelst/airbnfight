class PagesController < ApplicationController
  skip_before_action :authenticate_fighter!, only: [:home]
  def home
  end
end
