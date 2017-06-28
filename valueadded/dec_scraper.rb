require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.dec.ny.gov/outdoor/7865.html"))

puts seasonal_notices = doc.xpath('//h3 [contains(., "Seasonal Notices")]').text
puts weather = doc.xpath('//p/strong [text() = "Weather:"]').text
puts weather_text = doc.xpath('//p[strong = "Weather:"]').text
puts weather_anchor_text = doc.xpath('//p[strong = "Weather:"]/a').text
puts weather_anchor_href = doc.xpath('//p[strong = "Weather:"]/a/@href').text
puts fire = doc.xpath('//p/strong [text() = "Fire Danger:"]').text
puts fire_text = doc.xpath('//p [strong = "Fire Danger:"]').text
puts fire_anchor_text = doc.xpath('//p [strong = "Fire Danger:"]/a').text
puts fire_anchor_href = doc.xpath('//p [strong = "Fire Danger:"]/a/@href').text
puts trail = doc.xpath('//p/strong [text() = "Trail Conditions:"]').text
puts trail_text = doc.xpath('//p [strong = "Trail Conditions:"]').text
puts water = doc.xpath('//p/strong [text() = "Water Conditions:"]').text
puts water_text = doc.xpath('//p [strong = "Water Conditions:"]').text
puts water_anchor_text = doc.xpath('//p [strong = "Water Conditions:"]/a').text
puts water_anchor_href = doc.xpath('//p [strong = "Water Conditions:"]/a/@href').text
puts insects = doc.xpath('//p/strong [text() = "Biting Insects:"]').text
puts insects_text = doc.xpath('//p [strong = "Biting Insects:"]').text
puts insects_ulli = doc.xpath('//p[strong = "Biting Insects:"]/following-sibling::ul[1]/li').text
puts summits = doc.xpath('//p/strong [text() = "Summits:"]').text
puts summits_text = doc.xpath('//p [strong = "Summits:"]').text
puts summits_anchor_text = doc.xpath('//p [strong = "Summits:"]/a').text
puts summits_anchor_href = doc.xpath('//p [strong = "Summits:"]/a/@href').text
puts climb = doc.xpath('//p/strong [text() = "Rock Climbing Route Closures:"]').text
puts climb_text = doc.xpath('//p [strong = "Rock Climbing Route Closures:"]').text
puts climb_anchor_text = doc.xpath('//p [strong = "Rock Climbing Route Closures:"]/a').text
puts climb_anchor_href = doc.xpath('//p [strong = "Rock Climbing Route Closures:"]/a/@href').text
puts "End output"