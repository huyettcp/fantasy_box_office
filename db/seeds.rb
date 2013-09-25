# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include Nokogiri

movie = Movie.create(title: 'Gone in 60 Seconds')
league = League.create(league_name: 'Gone in 40 Seconds')
user = User.create(name: 'Gone')

league.users << user
user.movies << movie

n = Nokogiri::HTML(open("http://www.boxofficemojo.com/weekend/chart/?view=main&yr=2013&wknd=38&p=.htm"))
title = n.search("//table/tr/td[1]/table/tr[2]/td[3]").text
prisoners = Movie.create(title: title)