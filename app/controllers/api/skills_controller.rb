class Api::SkillsController < ApplicationController

  def create
    User.current_user.skills.create!(skill_params)
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
