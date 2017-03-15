Show.delete_all

show1 = Show.create({ title: "The Simpsons", series: 12, description: "Cartoon fun for kids and adults", image: "www.gettyimages.co.uk/detail/news-photo/join-the-simpsons-family-for-season-26-of-the-emmy-award-news-photo/460765286", programmeID: "S12"});

show2 = Show.create({ title: "Silent Witness", series: 6, description: "Death and drama", image: "https://ichef.bbci.co.uk/images/ic/480x270/p04m9ndr.jpg", programmeID: "SW6"});

show3 = Show.create({ title: "Broadchurch", series: 3, description: "Dorset police drama", image: "http://vignette4.wikia.nocookie.net/broadchurch/images/8/8f/Series_1.jpg/revision/latest?cb=20150117215058", programmeID: "BC3"});

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
