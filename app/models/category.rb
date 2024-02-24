class Category < ApplicationRecord
    belongs_to :users
  
    has_many :tasks, dependent: :destroy
  
    validates :name, presence: true
end