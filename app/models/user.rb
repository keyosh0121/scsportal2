class User < ApplicationRecord
  belongs_to :section
  belongs_to :authority
  has_many :band_members
  has_many :bands, through: :band_members
  validates :year, presence: true
  validates :name, presence: true
  validates :authority_id, presence: true
  validates :uni, presence: true
  has_many :mics, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
