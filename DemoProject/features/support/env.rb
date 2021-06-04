require 'watir-webdriver'
require 'cucumber'

def browser_name
  (ENV['browser'] ||= 'chrome').downcase.to_sym
end

=begin
Before do |scenario|
  @browser = Watir::Browser.new browser_name
  @browser.window.maximize

end
=end

