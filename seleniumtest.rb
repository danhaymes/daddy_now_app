require 'selenium-webdriver'
b = Selenium::WebDriver.for :chrome
b.get("http://google.com")
sleep 5