require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  test "when we sign up, we are redirected to the profile creation page" do
    visit root_path
    click_on "Sign in"
    click_on "Don't have an account? Sign up"

    assert_selector "h1", text: "Create your account"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create account"

    assert_selector "h2", text: "Basic Information"
  end

  test "when we create a profile, we are redirected to the profile page" do
    visit root_path
    click_on "Sign in"
    click_on "Don't have an account? Sign up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create account"

    assert_selector "h2", text: "Basic Information"

    fill_in "Full name", with: "Test Profile"
    fill_in "Date of birth", with: "1982-08-28"
    select "Male", from: "Gender"
    select "Sweden", from: "Country"
    select "Stockholm", from: "City"
    click_on "Update Profile"

    assert_selector "p", class: "title", text: "Test Profile"
  end

  test "adding a instrument to a profile" do
    # Login with fixture user
    visit root_path
    click_on "Sign in"
    click_on "Don't have an account? Sign up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create account"

    assert_selector "h2", text: "Basic Information"

    fill_in "Full name", with: "Test Profile"
    fill_in "Date of birth", with: "1982-08-28"
    select "Male", from: "Gender"
    select "Sweden", from: "Country"
    select "Stockholm", from: "City"
    click_on "Update Profile"

    click_link("+", class: "button is-small is-secondary")
    check "Vocals"
    click_on "Save"
    assert_selector "div", class: "tag", text: "Vocal"
  end

  test "adding a style to a profile" do
    visit root_path
    click_on "Sign in"
    click_on "Don't have an account? Sign up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create account"

    assert_selector "h2", text: "Basic Information"

    fill_in "Full name", with: "Test Profile"
    fill_in "Date of birth", with: "1982-08-28"
    select "Male", from: "Gender"
    select "Sweden", from: "Country"
    select "Stockholm", from: "City"
    click_on "Update Profile"

    click_on "Edit styles"
    check "Rock"
    click_on "Save"

    assert_selector "div", class: "tag", text: "Rock"
  end

  test "editing a profile" do
    visit root_path
    click_on "Sign in"
    click_on "Don't have an account? Sign up"

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm password", with: "password"
    click_on "Create account"

    assert_selector "h2", text: "Basic Information"

    fill_in "Full name", with: "Test Profile"
    fill_in "Date of birth", with: "1982-08-28"
    select "Male", from: "Gender"
    select "Sweden", from: "Country"
    select "Stockholm", from: "City"
    click_on "Update Profile"

    click_on "✎"

    fill_in "Full name", with: "Test Profile 2"
    click_on "Update Profile"

    assert_selector "p", class: "title", text: "Test Profile 2"
  end
end
