class Api::SkillTypesController < ApplicationController
  def show
    @skill_types = SkillType.all
  end
end
