class Api::SkillTypesController < ApplicationController
  def show
    binding.pry
    @skill_types = current_user.skill_types
  end
end
