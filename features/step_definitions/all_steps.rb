Given /^that we have a social network feed, called "([^\"]*)"$/ do |name|
  start_social_network(name)
end

Given /^we have a user with a Twitter username of "([^\"]*)"$/ do |twitter_username|
  remember_user(twitter_username)
end

Given /^Twusr has no recent activity in their social network feed$/ do
  register_user_activity("")
end

When /^Twusr visits the home page$/ do
  visit_home_page
end

Then /^the application prompts Twusr to login via Twitter$/ do
  users_browser.should be_at "http://twitter.com/authorize"
end

When /^Twusr authenticates successfully$/ do
  authorize_application
end

Then /^Twusr can see "([^\"]*)"$/ do |the_content|
  users_browser.should display the_content
end

Then /^sees "([^\"]*)"$/ do |the_content|
  users_browser.should dislplay the_content
end