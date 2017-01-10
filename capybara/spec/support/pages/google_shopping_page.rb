class GoogleShoppingPage
  include Capybara::DSL

  attr_reader :fourth_image, :shortlist, :add_note, :buy_text, :sign_in

  def initialize
    @fourth_image = '.psgi:nth-child(4)'
    @shortlist = '//*[@id="rso"]/div[1]/div/div[6]/div/div[2]/div/div[2]/div[3]/div[4]/div[2]/div'
    @add_note = '//*[@id="bubble-9"]/div[2]/div[2]/div[2]/div[2]/div[1]'
    @buy_text = 'Please buy me'
  end

  def click_fourth_image
    find(:css, fourth_image).click
  end

  def click_save_to_short_list
    find(:xpath, shortlist).click
  end

  def click_add_note
    click_link add_note
  end

  def sign_in
    page.execute_script(%Q("$('.gko-c-ad ._-b').click();"))
  end

  def adding_note
    fill_in('.gko-c-ni', with: buy_text)
  end
end
