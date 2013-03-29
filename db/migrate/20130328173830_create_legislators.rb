require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |l|
      l.integer :id
      l.string :title
      l.string :firstname
      l.string :middlename
      l.string :lastname
      l.string :name_suffix
      l.string :nickname
      l.string :party
      l.string :state
      l.string :district
      l.string :in_office
      l.string :gender
      l.string :phone
      l.string :fax
      l.string :website
      l.string :webform
      l.string :congress_office
      l.string :bioguide_id
      l.string :votesmart_id
      l.string :fec_id
      l.string :govtrack_id
      l.string :crp_id
      l.string :twitter_id
      l.string :congresspedia_url
      l.string :youtube_url
      l.string :facebook_id
      l.string :official_rss
      l.string :senate_class
      l.date :birthdate
    end
  end
end
