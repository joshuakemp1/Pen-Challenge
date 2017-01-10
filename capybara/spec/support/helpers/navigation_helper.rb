# Navigation helper methods
class Navigation
  include Capybara::DSL

  def go_to_google_home_page
    visit(TCFG['BASE_URL'])
  end
end
