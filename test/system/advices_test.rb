require "application_system_test_case"

class AdvicesTest < ApplicationSystemTestCase
  setup do
    @advice = advices(:one)
  end

  test "visiting the index" do
    visit advices_url
    assert_selector "h1", text: "Advices"
  end

  test "creating a Advice" do
    visit advices_url
    click_on "New Advice"

    fill_in "Advice", with: @advice.advice
    fill_in "Email", with: @advice.email
    fill_in "Field in", with: @advice.field_in
    fill_in "Name", with: @advice.name
    fill_in "Time", with: @advice.time
    click_on "Create Advice"

    assert_text "Advice was successfully created"
    click_on "Back"
  end

  test "updating a Advice" do
    visit advices_url
    click_on "Edit", match: :first

    fill_in "Advice", with: @advice.advice
    fill_in "Email", with: @advice.email
    fill_in "Field in", with: @advice.field_in
    fill_in "Name", with: @advice.name
    fill_in "Time", with: @advice.time
    click_on "Update Advice"

    assert_text "Advice was successfully updated"
    click_on "Back"
  end

  test "destroying a Advice" do
    visit advices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advice was successfully destroyed"
  end
end
