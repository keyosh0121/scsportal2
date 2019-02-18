class Band < ApplicationRecord
  has_many :band_members
  belongs_to :master, class_name: 'User', foreign_key: 'master_id'
  belongs_to :pa, class_name: 'User', foreign_key: 'pa_id', optional: true
  validates :band_name, presence: {message: 'を入力してください'}
end
