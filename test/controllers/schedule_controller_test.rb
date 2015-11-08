require 'test_helper'

class ScheduleControllerTest < ActionController::TestCase
  test "should get monitor" do
    get :monitor
    assert_response :success
  end

end
