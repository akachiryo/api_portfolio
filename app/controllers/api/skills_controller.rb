class Api::SkillsController < ApplicationController

  def show
    # @skills = current_user.skills
    @skills = User.find(1).skills
  end

  def create
  end

  def destroy
  end

  def update
  end
end
