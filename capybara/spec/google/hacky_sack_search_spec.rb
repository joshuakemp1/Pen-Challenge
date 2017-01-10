require 'spec_helper'
require_relative '../support/pages/google_home_page'
require_relative '../../spec/support/pages/google_results_page'
require_relative '../../spec/support/pages/google_shopping_page'
require_relative '../../spec/support/pages/google_email_page'
require_relative '../support/helpers/navigation_helper'

describe 'Google search', :type => :feature do

  let(:nav) { Navigation.new }
  let(:google_home_page) { GoogleHomePage.new }
  let(:google_results_page) { GoogleResultsPage.new }
  let(:google_shopping_page) { GoogleShoppingPage.new }
  let(:google_email_page) { GoogleEmailPage.new }

  it 'for hacky sack' do
    nav.go_to_google_home_page
    expect(page).to have_content google_home_page.verify_google
    google_home_page.search_google('hacky sack')
    sleep 5
  end

  it 'click on the shopping link' do
    expect(current_url).to include('q=hacky+sack')
    google_results_page.click_shopping
  end

  it 'click on the 4th image' do
    sleep 2
    expect(current_url).to eq('https://www.google.com/?gws_rd=ssl#q=hacky+sack&tbm=shop')
    google_shopping_page.click_fourth_image
  end

  it 'save to short list' do
    google_shopping_page.click_save_to_short_list
  end

  it 'sign into shopping' do
    google_shopping_page.sign_in
    google_email_page.sign_in
    # google_shopping_page.click_add_note
  end

  # it 'add a note' do
  #   sleep 3
  #   google_shopping_page.adding_note
  #   expect(page).to have_content(google_shopping_page.buy_text)
  # end
end
