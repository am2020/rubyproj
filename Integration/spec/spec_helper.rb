require 'rspec'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.around(:example) do |example|
  	# Initialize chrome webapp
    @driver = Selenium::WebDriver.for :chrome 
    begin
      # Start chrome 
      @driver.run
    ensure
      # End chrome
      @driver.quit
    end
  end
end