class Dog < ApplicationRecord
    belongs_to :user
    
    validates :name, presence: true
    validates :description, length: {minimum: 50}
end
