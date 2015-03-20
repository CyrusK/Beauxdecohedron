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
#
# Indexes
#
#  index_pins_on_user_id  (user_id)
#

class Pin < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "200x200>" }
  has_attached_file :image2, :styles => { :medium => "400x400>", :thumb => "200x200>" }
  has_attached_file :image3, :styles => { :medium => "400x400>", :thumb => "200x200>" }
  has_attached_file :image4, :styles => { :medium => "400x400>", :thumb => "200x200>" }
  has_attached_file :image5, :styles => { :medium => "400x400>", :thumb => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image4, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image5, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :image, presence: true
  validates :description, presence: true

  def single_image_only?
    !self.image2_file_name &&
    !self.image3_file_name &&
    !self.image4_file_name &&
    !self.image5_file_name
  end
end
