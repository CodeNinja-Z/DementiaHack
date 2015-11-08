require 'test_helper'

class PatientControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get clinicians" do
    get :clinicians
    assert_response :success
  end

end
