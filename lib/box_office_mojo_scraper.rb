module BoxOfficeScraper
  include Nokogiri
  def load_data_table
    n = Nokogiri::HTML(open("http://www.boxofficemojo.com/weekend/chart/?view=main&yr=2013&wknd=38&p=.htm"))
    movie_titles = n.search('//table/tr/td[1]/table/tr/td[3]/font')
    movie_titles.each do |movie_title|
      movie_title = Movie.create(:title)
      movies << movie_title
    end


  end
end

counter = 2
def up
  loop do
    counter += 1
    n.search("//table/tr/td[1]/table/tr[2]/td[1]").text
    break if counter >= 11
  end
end




noko = 1
name = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[3]").text

while name != ''

  #Returns weekend gross of #1 movie
  b = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[5]").text

  #Returns total gross of #1 movie
  c = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[10]").text

  #Returns budget of #1 movie
  e = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[11]").text


  puts b
  puts c
  puts e
  puts '********************' 

  noko+=1
  name = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[3]").text
  puts name
end




#   #Returns title of the #1 movie("Prisoners")
# n.search("//table/tr/td[1]/table/tr[2]/td[3]").text

# #Returns weekend gross of #1 movie
# n.search("//table/tr/td[1]/table/tr[2]/td[5]").text

# #Returns total gross of #1 movie
# n.search("//table/tr/td[1]/table/tr[2]/td[10]").text

# #Returns budget of #1 movie
# n.search("//table/tr/td[1]/table/tr[2]/td[11]").text
