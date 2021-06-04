require 'watir'

browser = Watir::Browser.new :chrome
browser.window.maximize


Given(/^I login to cai$/) do
  browser.goto('https://cai-staging.tools.sap/')
end

When(/^I click on OK button$/) do
  browser.button('test-id': 'Gtq_kp8qh').click
end

When(/^NewBot button is clicked$/) do
  browser.span(text: 'New bot').click
end

When(/^Normal bot flow is clicked$/) do
  browser.p(text: 'Perform Actions').click
end

When(/^Store Conversation data is selected$/) do
  browser.strong(text: 'Do not store').click
end

Then(/^Signin is displayed$/) do
  browser.button('test-id': 'TSIRcfPS0i').exists?
end

Then(/^Signup is displayed$/) do
  browser.button(text: 'Sign Up').exists?
end

Then(/^Signin button is clicked$/) do
  browser.span(text: 'Sign In').click
end

Then(/^Username is displayed$/) do
  browser.p(text: 'sairamswaminathan').exists?
end

Then(/^Bots are displayed$/) do
  browser.div(text: 'Bots').exists?
end

Then(/^Organizations are displayed$/) do
  browser.p(text: 'Organizations').exists?
end

Then(/^Collaborations are displayed$/) do
  browser.div(text: 'Collaborations').exists?
end

Then(/^NewBot button is displayed$/) do
  browser.button(text: 'New bot').exists?
end

And(/^"([^"]*)" Skill is selected$/) do |arg|
  browser.p(text: arg).click
end

And(/^"([^"]*)" is selected$/) do |arg|
  browser.div(text: arg).click
end

Then(/^"([^"]*)" is displayed$/) do |arg|
  browser.button(text: arg).exists?
end

And(/^"([^"]*)"  is displayed$/) do |arg|
  browser.button(text: arg).exists?
end

And(/^Create button is clicked$/) do
  browser.button(text: 'Create').click
end

Then(/^"([^"]*)" is created$/) do |arg|
  browser.link(text: arg).exists?

end

When(/^"([^"]*)" is clicked$/) do |arg|
  browser.link(text: arg).click
end

Then(/^"([^"]*)" is loaded$/) do |arg|
  browser.link(text: arg).exists?
end

And(/^botname "([^"]*)" is entered$/) do |arg|
  browser.text_field(placeholder: 'Your bot name').set (arg)
end
