require "application_system_test_case"

class VehiculesTest < ApplicationSystemTestCase
  setup do
    @vehicule = vehicules(:one)
  end

  test "visiting the index" do
    visit vehicules_url
    assert_selector "h1", text: "Vehicules"
  end

  test "creating a Vehicule" do
    visit vehicules_url
    click_on "New Vehicule"

    fill_in "N°Cin", with: @vehicule.N°cin
    fill_in "N°Engine", with: @vehicule.N°engine
    fill_in "Color", with: @vehicule.color
    fill_in "Date", with: @vehicule.date
    fill_in "Mark", with: @vehicule.mark
    fill_in "Owne Name", with: @vehicule.owner_name
    fill_in "Vehicules Type", with: @vehicule.vehicules_type
    click_on "Create Vehicule"

    assert_text "Vehicule was successfully created"
    click_on "Back"
  end

  test "updating a Vehicule" do
    visit vehicules_url
    click_on "Edit", match: :first

    fill_in "N°Cin", with: @vehicule.N°cin
    fill_in "N°Engine", with: @vehicule.N°engine
    fill_in "Color", with: @vehicule.color
    fill_in "Date", with: @vehicule.date
    fill_in "Mark", with: @vehicule.mark
    fill_in "Owne Name", with: @vehicule.owner_name
    fill_in "Vehicules Type", with: @vehicule.vehicules_type
    click_on "Update Vehicule"

    assert_text "Vehicule was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicule" do
    visit vehicules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicule was successfully destroyed"
  end
end
