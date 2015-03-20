# == Schema Information
#
# Table name: pins
#
#  id                 :integer          not null, primary key
#  description        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  manufacturer       :string(255)
#  model              :string(255)
#
# Indexes
#
#  index_pins_on_user_id  (user_id)
#

class Pin < ActiveRecord::Base
    belongs_to :user

    has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "200x200>" }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :image, presence: true
  validates :description, presence: true
end
