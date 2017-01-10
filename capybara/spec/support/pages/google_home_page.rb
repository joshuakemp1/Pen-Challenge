class GoogleHomePage
  include Capybara::DSL

  attr_reader :verify_google, :query, :search_button

  def initialize
    @verify_google = 'Switch your default search engine to Google'
    @query = 'q'
    @search_button = 'Search'
  end

  def search_google(text)
    fill_in(query, with: text)
    click_button(search_button)
  end
end
