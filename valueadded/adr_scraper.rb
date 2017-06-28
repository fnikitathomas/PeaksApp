require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.adirondack.net/tour/hike/highpeaks.cfm"))

rows = doc.xpath('(//table)[9]/tr')

header = ["mountain name","elevation in feet","diffculty 1-7","ascent of climb","length of round trip","typical hike time","photo"]

sets = []

rows.each_with_index do |row, i|
    sets[i] = {}
    row.xpath('td').each_with_index do |td, j|
        sets[i][header[j]] = td.text
    end
end

puts sets