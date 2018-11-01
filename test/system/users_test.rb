require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Create", with: @user.create
    fill_in "Edit", with: @user.edit
    fill_in "New", with: @user.new
    fill_in "Show", with: @user.show
    fill_in "Update", with: @user.update
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Create", with: @user.create
    fill_in "Edit", with: @user.edit
    fill_in "New", with: @user.new
    fill_in "Show", with: @user.show
    fill_in "Update", with: @user.update
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
