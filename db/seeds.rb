# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end
  Business.all.each do |b|
    b.destroy
  end
  def generate_businesses
    Business.create!(
      name: "Chateau De JimBo",
      address: "123 Fake St.",
      description: "A fine French Dining establishment with all the best vittles."
    )
    Business.create!(
      name: "Luther's pants",
      address: "2188, Sycamore Avenue suite #7",
      description: "Like pants? Need pants? got money for pants. Come on down to Luther's"
    )
    Business.create!(
      name: "Post office",
      address: ".... somewhere around here, I think",
      description: "The place to be when you want to mail something"
    )
    Business.create!(
      name: "Wildcard Comics",
      address: "743 Evergreen Terrace",
      description: "All the newest Comics and Games are at Wildcard. Note: cards not available."
    )
    Business.create!(
      name: "Kwik-E-Mart",
      address: "Over on the corner by the thing.",
      description: "Swing on by, get a squishy, say Hi to Apu"
    )
    Business.create!(
      name: "Chez Cleetis",
      address: "123 Fake St.",
      description: "A fine French Dining establishment with all the best vittles."
    )
    Business.create!(
      name: "Lenny's Scarves",
      address: "2188, Sycamore Avenue suite #7",
      description: "Like scarves? Need scarves? got money for scarves. Come on down to Lenny's"
    )
    Business.create!(
      name: "FedEx",
      address: ".... somewhere around here, I think",
      description: "The place to be when you want to mail something"
    )
    Business.create!(
      name: "Blue Moon Comics",
      address: "743 Evergreen Terrace",
      description: "All the newest Comics and Games are at Wildcard. Note: cards not available."
    )
    Business.create!(
      name: "Circle K",
      address: "Over on the corner by the thing.",
      description: "Swing on by, get a squishy, say Hi to Apu"
    )
    Business.all.each do |b|
      puts "Business #{b.id}: name is '#{b.name}' and address is '#{b.address}' and description is '#{b.description}'."
    end
  end
end

Seed.begin
