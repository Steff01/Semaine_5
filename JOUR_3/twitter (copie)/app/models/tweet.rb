class Tweet < ApplicationRecord
    belongs_to :author, class_name: "User"
    has_many :likers, class_name: "User"
    #validates_associated :user
end
