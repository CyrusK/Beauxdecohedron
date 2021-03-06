# == Schema Information
#
# Table name: pins
#
#  id                  :integer          not null, primary key
#  description         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  user_id             :integer
#  image_file_name     :string(255)
#  image_content_type  :string(255)
#  image_file_size     :integer
#  image_updated_at    :datetime
#  manufacturer        :string(255)
#  model               :string(255)
#  image2_file_name    :string(255)
#  image2_content_type :string(255)
#  image2_file_size    :integer
#  image2_updated_at   :datetime
#  image3_file_name    :string(255)
#  image3_content_type :string(255)
#  image3_file_size    :integer
#  image3_updated_at   :datetime
#  image4_file_name    :string(255)
#  image4_content_type :string(255)
#  image4_file_size    :integer
#  image4_updated_at   :datetime
#  image5_file_name    :string(255)
#  image5_content_type :string(255)
#  image5_file_size    :integer
#  image5_updated_at   :datetime
#  is_auction          :boolean
#  auction_start_at    :datetime
#  auction_end_at      :datetime
#  reserve             :float
#  quantity            :integer          default(1)
#
# Indexes
#
#  index_pins_on_user_id  (user_id)
#

require 'test_helper'

class PinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
