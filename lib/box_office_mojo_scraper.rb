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


2.upto(11) do |num|
  n.search("//table/tr/td[1]/table/tr['#{num}']").text
end

