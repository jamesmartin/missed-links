require 'safariwatir'

Given /^I have a web browser$/ do
  @browser = Watir::Safari.new
end

When /I point my browser to the home page/ do
  @browser.goto("http://localhost:9393")
end

Then /I should see "([^\"]*)"$/ do |greeting|
  @browser.contains_text(greeting).should be_true
end
