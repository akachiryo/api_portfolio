class Api::SkillsController < ApplicationController

  def create
    current_user.skills.create!(skill_params)
    @skill_types = SkillType.all
    @current_user_id = current_user.id
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy!
    @skill_types = SkillType.all
    @current_user_id = current_user.id
  end

  def update
    skill = Skill.find(params[:id])
    skill.update!(skill_params)
    @skill_types = SkillType.all
    @current_user_id = current_user.id
  end

  private

  def skill_params
    params.require(:skill).permit(:user_id, :skill_type_id, :name, :level)
  end
end
