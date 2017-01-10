class GoogleResultsPage
  include Capybara::DSL

  attr_reader :shopping_link

  def initialize
    @shopping_link = '.hdtb-msel+ .hdtb-imb .qs'
  end

  def click_shopping
    find(:css, shopping_link).click
  end
end
