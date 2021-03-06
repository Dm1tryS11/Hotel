require "application_system_test_case"

class ProposalsTest < ApplicationSystemTestCase
  setup do
    @proposal = proposals(:one)
  end

  test "visiting the index" do
    visit proposals_url
    assert_selector "h1", text: "Proposals"
  end

  test "creating a Proposal" do
    visit proposals_url
    click_on "New Proposal"

    check "Accept" if @proposal.accept
    fill_in "Arrival", with: @proposal.arrival
    fill_in "Departure", with: @proposal.departure
    fill_in "Email", with: @proposal.email
    fill_in "Name", with: @proposal.name
    fill_in "Passport", with: @proposal.passport
    click_on "Create Proposal"

    assert_text "Proposal was successfully created"
    click_on "Back"
  end

  test "updating a Proposal" do
    visit proposals_url
    click_on "Edit", match: :first

    check "Accept" if @proposal.accept
    fill_in "Arrival", with: @proposal.arrival
    fill_in "Departure", with: @proposal.departure
    fill_in "Email", with: @proposal.email
    fill_in "Name", with: @proposal.name
    fill_in "Passport", with: @proposal.passport
    click_on "Update Proposal"

    assert_text "Proposal was successfully updated"
    click_on "Back"
  end

  test "destroying a Proposal" do
    visit proposals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proposal was successfully destroyed"
  end
end
