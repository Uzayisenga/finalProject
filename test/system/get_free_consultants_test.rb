require "application_system_test_case"

class GetFreeConsultantsTest < ApplicationSystemTestCase
  setup do
    @get_free_consultant = get_free_consultants(:one)
  end

  test "visiting the index" do
    visit get_free_consultants_url
    assert_selector "h1", text: "Get Free Consultants"
  end

  test "creating a Get free consultant" do
    visit get_free_consultants_url
    click_on "New Get Free Consultant"

    fill_in "Address", with: @get_free_consultant.address
    fill_in "Cell", with: @get_free_consultant.cell
    fill_in "Concern", with: @get_free_consultant.concern
    fill_in "District", with: @get_free_consultant.district
    fill_in "Dob", with: @get_free_consultant.dob
    fill_in "Email", with: @get_free_consultant.email
    fill_in "Family history", with: @get_free_consultant.family_history
    fill_in "Gender", with: @get_free_consultant.gender
    fill_in "Height", with: @get_free_consultant.height
    fill_in "How did you us", with: @get_free_consultant.how_did_you_us
    fill_in "Name", with: @get_free_consultant.name
    fill_in "Phone", with: @get_free_consultant.phone
    fill_in "Sector", with: @get_free_consultant.sector
    fill_in "Street name", with: @get_free_consultant.street_name
    fill_in "Subcribe article", with: @get_free_consultant.subcribe_article
    fill_in "Time", with: @get_free_consultant.time
    fill_in "Weight", with: @get_free_consultant.weight
    click_on "Create Get free consultant"

    assert_text "Get free consultant was successfully created"
    click_on "Back"
  end

  test "updating a Get free consultant" do
    visit get_free_consultants_url
    click_on "Edit", match: :first

    fill_in "Address", with: @get_free_consultant.address
    fill_in "Cell", with: @get_free_consultant.cell
    fill_in "Concern", with: @get_free_consultant.concern
    fill_in "District", with: @get_free_consultant.district
    fill_in "Dob", with: @get_free_consultant.dob
    fill_in "Email", with: @get_free_consultant.email
    fill_in "Family history", with: @get_free_consultant.family_history
    fill_in "Gender", with: @get_free_consultant.gender
    fill_in "Height", with: @get_free_consultant.height
    fill_in "How did you us", with: @get_free_consultant.how_did_you_us
    fill_in "Name", with: @get_free_consultant.name
    fill_in "Phone", with: @get_free_consultant.phone
    fill_in "Sector", with: @get_free_consultant.sector
    fill_in "Street name", with: @get_free_consultant.street_name
    fill_in "Subcribe article", with: @get_free_consultant.subcribe_article
    fill_in "Time", with: @get_free_consultant.time
    fill_in "Weight", with: @get_free_consultant.weight
    click_on "Update Get free consultant"

    assert_text "Get free consultant was successfully updated"
    click_on "Back"
  end

  test "destroying a Get free consultant" do
    visit get_free_consultants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Get free consultant was successfully destroyed"
  end
end
