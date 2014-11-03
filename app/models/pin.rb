class Pin < ActiveRecord::Base
    belongs_to :user

    has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "200x200>" }

end
