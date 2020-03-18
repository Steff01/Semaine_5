class User < ApplicationRecord
    has_many :tweets
    validates :name, :description, :email, :age, presence: true
end
