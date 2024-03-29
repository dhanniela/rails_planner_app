class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    has_many :categories, dependent: :destroy
    # This allows you to access all tasks through categories for a given user.
    has_many :tasks, through: :categories, dependent: :destroy
  
    validates :username, presence: true, uniqueness: { case_sensitive: false }
  end
  