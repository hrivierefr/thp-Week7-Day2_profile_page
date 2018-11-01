require "application_system_test_case"

class GossipsTest < ApplicationSystemTestCase
  setup do
    @gossip = gossips(:one)
  end

  test "visiting the index" do
    visit gossips_url
    assert_selector "h1", text: "Gossips"
  end

  test "creating a Gossip" do
    visit gossips_url
    click_on "New Gossip"

    fill_in "Create", with: @gossip.create
    fill_in "Delete", with: @gossip.delete
    fill_in "Edit", with: @gossip.edit
    fill_in "Index", with: @gossip.index
    fill_in "New", with: @gossip.new
    fill_in "Show", with: @gossip.show
    fill_in "Update", with: @gossip.update
    click_on "Create Gossip"

    assert_text "Gossip was successfully created"
    click_on "Back"
  end

  test "updating a Gossip" do
    visit gossips_url
    click_on "Edit", match: :first

    fill_in "Create", with: @gossip.create
    fill_in "Delete", with: @gossip.delete
    fill_in "Edit", with: @gossip.edit
    fill_in "Index", with: @gossip.index
    fill_in "New", with: @gossip.new
    fill_in "Show", with: @gossip.show
    fill_in "Update", with: @gossip.update
    click_on "Update Gossip"

    assert_text "Gossip was successfully updated"
    click_on "Back"
  end

  test "destroying a Gossip" do
    visit gossips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gossip was successfully destroyed"
  end
end
