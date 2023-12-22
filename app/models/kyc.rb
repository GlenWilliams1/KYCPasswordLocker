# app/models/kyc.rb
class Kyc < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :document, presence: true, uniqueness: true
end
