require 'safariwatir'

Given /^I have a web browser$/ do
  @browser = Watir::Safari.new
end

When /I point my browser to the home page/ do
  @browser.goto("http://localhost:9393")
end

Given /I am at the home page/ do
  Given "I have a web browser"
  When "I point my browser to the home page"
end

Given /I am not authenticated with Twitter$/ do
  #pending "figure out how to fake a twitter OAuth service"
end

Given /^I submit the login form with username "([^\"]*)" and password "([^\"]*)"$/ do |username, password|
  @browser.text_field(:name, 'twitter_username').set(username)
  @browser.text_field(:name, 'twitter_password').set(password)
  @browser.form(:name, 'twitter_auth').submit
end

Then /I should see "([^\"]*)"$/ do |greeting|
  @browser.contains_text(greeting).should be_true
end

Then /^I should see a "([^\"]*)" link$/ do |link_text|
  @browser.link(:id, 'authenticate').exists?.should be_true
  @browser.link(:text, link_text).exists?.should be_true
end

Then /^I should be redirected to the Twitter authentication page$/ do
  @browser.contains_text("Twitter Authenticate").should be_true
end

