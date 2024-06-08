class Profile < ApplicationRecord
    belongs_to :user
    has_many :interests, dependent: :destroy
    has_many :highlights, dependent: :destroy
    has_many :experiences, dependent: :destroy
    has_many :contacts, dependent: :destroy
  
    validates :username, presence: true
  end