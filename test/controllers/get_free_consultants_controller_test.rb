require 'test_helper'

class GetFreeConsultantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @get_free_consultant = get_free_consultants(:one)
  end

  test "should get index" do
    get get_free_consultants_url
    assert_response :success
  end

  test "should get new" do
    get new_get_free_consultant_url
    assert_response :success
  end

  test "should create get_free_consultant" do
    assert_difference('GetFreeConsultant.count') do
      post get_free_consultants_url, params: { get_free_consultant: { address: @get_free_consultant.address, cell: @get_free_consultant.cell, concern: @get_free_consultant.concern, district: @get_free_consultant.district, dob: @get_free_consultant.dob, email: @get_free_consultant.email, family_history: @get_free_consultant.family_history, gender: @get_free_consultant.gender, height: @get_free_consultant.height, how_did_you_us: @get_free_consultant.how_did_you_us, name: @get_free_consultant.name, phone: @get_free_consultant.phone, sector: @get_free_consultant.sector, street_name: @get_free_consultant.street_name, subcribe_article: @get_free_consultant.subcribe_article, time: @get_free_consultant.time, weight: @get_free_consultant.weight } }
    end

    assert_redirected_to get_free_consultant_url(GetFreeConsultant.last)
  end

  test "should show get_free_consultant" do
    get get_free_consultant_url(@get_free_consultant)
    assert_response :success
  end

  test "should get edit" do
    get edit_get_free_consultant_url(@get_free_consultant)
    assert_response :success
  end

  test "should update get_free_consultant" do
    patch get_free_consultant_url(@get_free_consultant), params: { get_free_consultant: { address: @get_free_consultant.address, cell: @get_free_consultant.cell, concern: @get_free_consultant.concern, district: @get_free_consultant.district, dob: @get_free_consultant.dob, email: @get_free_consultant.email, family_history: @get_free_consultant.family_history, gender: @get_free_consultant.gender, height: @get_free_consultant.height, how_did_you_us: @get_free_consultant.how_did_you_us, name: @get_free_consultant.name, phone: @get_free_consultant.phone, sector: @get_free_consultant.sector, street_name: @get_free_consultant.street_name, subcribe_article: @get_free_consultant.subcribe_article, time: @get_free_consultant.time, weight: @get_free_consultant.weight } }
    assert_redirected_to get_free_consultant_url(@get_free_consultant)
  end

  test "should destroy get_free_consultant" do
    assert_difference('GetFreeConsultant.count', -1) do
      delete get_free_consultant_url(@get_free_consultant)
    end

    assert_redirected_to get_free_consultants_url
  end
end
