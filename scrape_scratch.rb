require 'open-uri'
require 'nokogiri'

ingredient = 'chocolate'
#url = "https://www.allrecipes.com/search/?wt=#{ingredient}"

url = 'https://www.bbc.co.uk/food/search?q=broccoli'
html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.fixed-recipe-card').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
#   name = element.search('.fixed-recipe-card__title-link').first.text.strip # chocolate
#   description = element.search('.fixed-recipe-card__description').text.strip # melted chocolate
#   rating = element.search('.stars').attr('data-ratingstars')

#   new_recipe = Recipe.new(name, description, rating)

# end


puts html_doc.search('.gel-layout').search('.promo__title').text.strip


