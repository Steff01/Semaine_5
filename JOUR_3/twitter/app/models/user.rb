class User < ApplicationRecord
    has_many :tweets
    has_many :likes
    validates :name, :description, :email, :age, presence: true
end
