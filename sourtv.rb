require 'nokogiri'
require 'open-uri'
base_url = "http://www.imdb.com"
path = "/title/tt0773262/"
html = Nokogiri::HTML(open(base_url+path))
seasons_array = html.css('.seasons-and-year-nav').css('div')[3].css('a')
seasons = seasons_array.map do |s| 
	{ :no   =>  s.text,
	  :link =>  s['href'],
	}
end
