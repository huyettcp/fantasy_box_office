# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "nokogiri"
include Nokogiri
require 'open-uri'

n = Nokogiri::HTML(open("http://www.boxofficemojo.com/weekend/chart/?view=main&yr=2013&wknd=38&p=.htm"))
    noko = 1
    # title = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[3]").text

    title = "t"

    while title != ''

      #Returns weekend gross of 1 movie
      box_office_performance = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[5]").text

      #Returns total gross of 1 movie
      total_box_office = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[10]").text

      #Returns budget of 1 movie
      budget = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[11]").text


      noko+=1
      title = n.search("//table/tr/td[1]/table/tr[#{noko}]/td[3]").text

      movie = Movie.create(box_office_performance: box_office_performance, total_box_office: total_box_office, budget: budget, title: title)
      movie.save

    end