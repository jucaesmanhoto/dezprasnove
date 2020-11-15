class ApplicationsController < ApplicationController
  before_action :set_opportunity, only: %i(new create)

  def index
  end

  def show
  end

  def new
  end

  def create
    if Candidate.find_by(user: current_user).nil?
      redirect_to new_candidate_path 
    else
      @application = Application.new(
        opportunity:  @opportunity,
        candidate: Candidate.find_or_create_by(user: current_user)
      )
      # raise
      if @application.save
        redirect_to opportunity_path(@opportunity)
      else
        render :new
      end
    end
  end

  private

  # def application_params
    
  # end

  def set_opportunity
    @opportunity = Opportunity.find(params[:opportunity_id])
  end
end
