SETUP:

You will need to be running Firefox 46 do to issues with Firefox running with Webdriver.
Here is a link to Firefox 46:
https://ftp.mozilla.org/pub/firefox/releases/46.0/

git clone the repo
cd into root directory
From the terminal run 'bundle install' ( it will install all missing gems ) on your machine.
NOTE: you have at least Ruby 1.9.3 installed on your machine to run.  You can check your ruby version in the
terminal by running 'ruby --version'
To run the specs that I wrote run this command:

rspec spec/google/hacky_sack_search_spec.rb


Overview:
I created a basic automation framework ( using Capybara, Ruby, and Rspec )and made some page objects.
I made the following folders / files:
Support
 --helpers
    --navigation_helper.rb
    --wait_for_ajax.rb
 --pages
    --google_email_page.rb
    --google_home_page.rb
    --google_results_page.rb
    --google_shopping_page.rb

I also set up the spec helper and a the tcfg.yml file


NOTES:
The bads ( I'll admit these up front :-) )

I did not finish this assignment 100%, I got to the very end, where you have to sign into your email account. - I ran out of time.
Bad practice to use sleeps - I was trying to implement a wait_for_ajax_helper but ran out of time
Bad practice to comment out the Capybara source session reset feature, Instead I need a way to include it in the spec helper ( I tried but couldn’t get it working )
Bad practice to use Xpaths as they are really slow and extremely brittle.
Could not figure out how to click one element, ended up using Javascript to execute jQuery on the element…..I think it could be done better.

