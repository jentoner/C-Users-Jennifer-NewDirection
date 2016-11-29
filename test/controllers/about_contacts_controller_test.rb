require 'test_helper'

class AboutContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_contact = about_contacts(:one)
  end

  test "should get index" do
    get about_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_about_contact_url
    assert_response :success
  end

  test "should create about_contact" do
    assert_difference('AboutContact.count') do
      post about_contacts_url, params: { about_contact: { content: @about_contact.content, title: @about_contact.title } }
    end

    assert_redirected_to about_contact_url(AboutContact.last)
  end

  test "should show about_contact" do
    get about_contact_url(@about_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_contact_url(@about_contact)
    assert_response :success
  end

  test "should update about_contact" do
    patch about_contact_url(@about_contact), params: { about_contact: { content: @about_contact.content, title: @about_contact.title } }
    assert_redirected_to about_contact_url(@about_contact)
  end

  test "should destroy about_contact" do
    assert_difference('AboutContact.count', -1) do
      delete about_contact_url(@about_contact)
    end

    assert_redirected_to about_contacts_url
  end
end
