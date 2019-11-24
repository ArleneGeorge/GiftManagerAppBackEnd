class Friend < ApplicationRecord
  belongs_to :user
  has_many :gifts, dependent: :destroy
  has_many :hollidays, dependent: :destroy
  has_many :occasions, dependent: :destroy
end
