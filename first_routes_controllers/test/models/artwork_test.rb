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

require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
