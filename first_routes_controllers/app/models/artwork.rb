# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string           default("Untitled"), not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#

class Artwork < ApplicationRecord
  validates :image_url, presence: true
  validates :title, presence: true, uniqueness: {scope: :artist_id, message: "Artist can't have 2 titles identically named"}

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :shares,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  has_many :shared_viewers,
    through: :shares,
    source: :viewer  
end
