class User < ApplicationRecord
  belongs_to :section
  belongs_to :authority
  has_many :band_members
  validates :user_year, presence: true
  validates :user_name, presence: true
  validates :authority_id, presence: true
  validates :uni, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
