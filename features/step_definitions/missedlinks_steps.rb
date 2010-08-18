require 'safariwatir'

Given /^I have a web browser$/ do
  @browser = Watir::Safari.new
end

Given /I am not authenticated with Twitter$/ do
end

When /I point my browser to the home page/ do
  @browser.goto("http://localhost:9393")
end

Then /I should see "([^\"]*)"$/ do |greeting|
  @browser.contains_text(greeting).should be_true
end

Then /^I should see an input for Twitter username$/ do
  @browser.text_field(:name, 'twitter_username').exists?.should be_true
end

Then /^I should see an input for Twitter password$/ do
  @browser.text_field(:name, 'twitter_password').exists?.should be_true
end

Then /^I should see a "([^\"]*)" button$/ do |button_name|
  @browser.text_field(:name, button_name).exists?.should be_true
end
