require 'nokogiri'
require 'open-uri'
require 'watir'

browser = Watir::Browser.new(:chrome)
browser.goto("https://twitter.com/search?f=images&vertical=default&q=%23adirondacks%20%23hiking&src=typd")

5.times do
    browser.execute_script("window.scrollBy(0,2000)")
    sleep 1
end

doc = Nokogiri::HTML.parse(browser.html)
j = 0

doc.xpath('//span/@data-url').each do |i|
    File.open("twitter#{j}.jpg", "wb") do |fo|
        fo.write open("#{i}").read 
        j += 1
    end
    puts i
end