class GoogleEmailPage
  include Capybara::DSL

  attr_reader :email_sign_in

  def initialize
    @email_sign_in = '.gko-si-bt'
  end

  def sign_in
    page.execute_script(%Q("$(#{email_sign_in}).click();"))
  end
end
