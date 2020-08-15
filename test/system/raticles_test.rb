require "application_system_test_case"

class RaticlesTest < ApplicationSystemTestCase
  setup do
    @raticle = raticles(:one)
  end

  test "visiting the index" do
    visit raticles_url
    assert_selector "h1", text: "Raticles"
  end

  test "creating a Raticle" do
    visit raticles_url
    click_on "New Raticle"

    fill_in "Author", with: @raticle.author
    fill_in "Text", with: @raticle.text
    fill_in "Title", with: @raticle.title
    click_on "Create Raticle"

    assert_text "Raticle was successfully created"
    click_on "Back"
  end

  test "updating a Raticle" do
    visit raticles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @raticle.author
    fill_in "Text", with: @raticle.text
    fill_in "Title", with: @raticle.title
    click_on "Update Raticle"

    assert_text "Raticle was successfully updated"
    click_on "Back"
  end

  test "destroying a Raticle" do
    visit raticles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raticle was successfully destroyed"
  end
end
