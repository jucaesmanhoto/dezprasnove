class CandidatesController < ApplicationController
  def index
  end

  def show
    @candidate = Candidate.find(params[:id])
    @soft_skills = @candidate.candidate_skills.select { |candidate_skill| candidate_skill.skill.skill_type == "soft"}
    @hard_skills = @candidate.candidate_skills - @soft_skills
  end

  def new
  end
end
