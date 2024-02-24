class Task < ApplicationRecord
    # belongs_to :user
    # Through category, a task can indirectly belong to a user.
    belongs_to :category
  
    validates :title, presence: true
    validates :due_date, presence: true
    validates :status, inclusion: { in: %w[pending completed] }
end
  