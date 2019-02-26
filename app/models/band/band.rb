class Band < ApplicationRecord
  has_many :mics, dependent: :destroy
  has_many :band_members
  has_many :users, through: :band_members
  belongs_to :master, class_name: 'User', foreign_key: 'master_id'
  validates :name, presence: true
  validates :type, presence: true
end
