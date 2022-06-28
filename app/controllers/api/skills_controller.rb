class Api::SkillsController < ApplicationController

  def show
    # @skills = current_user.skills
    @skills = User.find(1).skills
  end

  def create
    Skill.create!(skill_params)
    @skill_types = SkillType.all
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy!
    @skill_types = SkillType.all
  end

  def update
    skill = Skill.find(params[:id])
    skill.update!(skill_params)
    @skill_types = SkillType.all
  end

  private

  def skill_params
    params.require(:skill).permit(:user_id, :skill_type_id, :name, :level)
  end
end