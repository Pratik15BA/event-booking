require "application_system_test_case"

class OrganizersTest < ApplicationSystemTestCase
  setup do
    @organizer = organizers(:one)
  end

  test "visiting the index" do
    visit organizers_url
    assert_selector "h1", text: "Organizers"
  end

  test "should create organizer" do
    visit organizers_url
    click_on "New organizer"

    fill_in "Contact no", with: @organizer.contact_no
    fill_in "Email", with: @organizer.email_id
    fill_in "Name", with: @organizer.name
    click_on "Create Organizer"

    assert_text "Organizer was successfully created"
    click_on "Back"
  end

  test "should update Organizer" do
    visit organizer_url(@organizer)
    click_on "Edit this organizer", match: :first

    fill_in "Contact no", with: @organizer.contact_no
    fill_in "Email", with: @organizer.email_id
    fill_in "Name", with: @organizer.name
    click_on "Update Organizer"

    assert_text "Organizer was successfully updated"
    click_on "Back"
  end

  test "should destroy Organizer" do
    visit organizer_url(@organizer)
    click_on "Destroy this organizer", match: :first

    assert_text "Organizer was successfully destroyed"
  end
end
