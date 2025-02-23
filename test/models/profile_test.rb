require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should create a profile" do
    profile = Profile.new(full_name: "Test Profile", date_of_birth: "1990-01-01", city: "Test City", country: "Test Country")
    assert profile.save
  end

  test "should not create a profile with missing required fields" do
    profile = Profile.new
    assert_not profile.save
  end

  test "should calculate the age" do
    profile = Profile.new(full_name: "Test Profile", date_of_birth: "1990-01-01", city: "Test City", country: "Test Country")
    assert_not_nil profile.age
  end

  test "should not calculate the age with a missing date of birth" do
    profile = Profile.new(full_name: "Test Profile", city: "Test City", country: "Test Country")
    assert_nil profile.age
  end

  test "should not calculate the age with an invalid date of birth" do
    profile = Profile.new(full_name: "Test Profile", date_of_birth: "invalid-date", city: "Test City", country: "Test Country")
    assert_raises(Date::Error) { profile.age }
  end
end
