class OpportunitiesController < ApplicationController
before_action :set_opportunity, only: %i(show)
skip_before_action :authenticate_user!, only: %i(index show)

  def index
  end

  def show
  end

  def new
  end

  private
  
  def set_opportunity
    @opportunity = Opportunity.find(params[:id])
  end
end
