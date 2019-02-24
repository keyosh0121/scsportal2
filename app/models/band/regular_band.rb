class RegularBand < Band
  belongs_to :pa, class_name: 'User', foreign_key: 'pa_id'
  validates :year, presence: {message: 'は必須項目です'}
  validates :description, presence: {message: 'は必須項目です'}
  validates :master_id, presence: {message: 'は必須項目です'}
  validates :pa_id, presence: {message: 'は必須項目です'}
end
