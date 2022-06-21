require "test_helper"

class SkillTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get skill_types_show_url
    assert_response :success
  end
end
