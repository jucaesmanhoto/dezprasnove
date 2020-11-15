class CandidatesController < ApplicationController
  def index
  end

  def show
    @candidate = Candidate.find(params[:id])
    @soft_skills = @candidate.skills.select { |skill| skill.skill_type == "soft"}
    @hard_skills = @candidate.skills - @soft_skills
  end

  def new
  end
end
