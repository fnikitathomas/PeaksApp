class PeaksController < ApplicationController
  
# Live scraper added to the index action, rem'd @peaks variable

  def index
    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open("http://www.dec.ny.gov/outdoor/7865.html"))
    @seasonal_notices = doc.xpath('//h3 [contains(., "Seasonal Notices")]').text
    @weather_text = doc.xpath('//p[strong = "Weather:"]').text
    @weather_anchor_href = doc.xpath('//p[strong = "Weather:"]/a/@href').text
    @fire_text = doc.xpath('//p [strong = "Fire Danger:"]').text
    @fire_anchor_href = "http://www.dec.ny.gov" + doc.xpath('//p [strong = "Fire Danger:"]/a/@href').text
    @trail_text = doc.xpath('//p [strong = "Trail Conditions:"]').text
    @water_text = doc.xpath('//p [strong = "Water Conditions:"]').text
    @water_anchor_href = doc.xpath('//p [strong = "Water Conditions:"]/a/@href').text
    @insects_text = doc.xpath('//p [strong = "Biting Insects:"]').text
    @insects_ulli = doc.xpath('//p[strong = "Biting Insects:"]/following-sibling::ul[1]/li').text
    @summits_text = doc.xpath('//p [strong = "Summits:"]').text
    @summits_anchor_href = doc.xpath('//p [strong = "Summits:"]/a/@href').text
    @climb_text = doc.xpath('//p [strong = "Rock Climbing Route Closures:"]').text
    @climb_anchor_href = "http://www.dec.ny.gov" + doc.xpath('//p [strong = "Rock Climbing Route Closures:"]/a/@href').text
    #@peaks = Peak.all
  end

  def show
    @peak = Peak.find(params[:id])
  end

end
