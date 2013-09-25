module BoxOfficeScraper
  include Nokogiri
  def load_data_table
    n = Nokogiri::HTML(open("http://www.boxofficemojo.com/weekend/chart/?view=main&yr=2013&wknd=38&p=.htm"))
    noko = 1
    #title = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[3]").text

    while title != ''

      #Returns weekend gross of 1 movie
      box_office_performance = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[5]").text

      #Returns total gross of 1 movie
      total_box_office = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[10]").text

      #Returns budget of 1 movie
      budget = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[11]").text


      noko+=1
      title = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[3]").text

      #movie = Movie.create(box_office_performance: box_office_performance, total_box_office: total_box_office, budget: budget, title: title)
      #movie.save

    end
  end
end




#   #Returns title of the #1 movie("Prisoners")
# n.search("//table/tr/td[1]/table/tr[2]/td[3]").text

# #Returns weekend gross of #1 movie
# n.search("//table/tr/td[1]/table/tr[2]/td[5]").text

# #Returns total gross of #1 movie
# n.search("//table/tr/td[1]/table/tr[2]/td[10]").text

# #Returns budget of #1 movie
# n.search("//table/tr/td[1]/table/tr[2]/td[11]").text
