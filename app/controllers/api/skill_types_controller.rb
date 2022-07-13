class Api::SkillTypesController < ApplicationController
  def show
    @skill_types = SkillType.all
    @current_user_id = current_user.id
  end
end
