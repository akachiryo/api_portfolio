class HomesController < ApplicationController

def index
  @skill = current_user.skill
end

end
