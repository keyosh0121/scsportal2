class Band < ApplicationRecord

	has_many :mics, dependent: :destroy
  validates :band_name, presence: {message: 'を入力してください'}
  validates :band_year, presence: {message: 'は必須項目です'}
  validates :description, presence: {message: 'は必須項目です'}
  validates :master_id, presence: {message: 'は必須項目です'}
  validates :pa_id, presence: {message: 'は必須項目です'}

end
