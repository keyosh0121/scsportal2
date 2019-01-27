class User < ApplicationRecord
  belongs_to :section
  validates :year, presence: true
  validates :name, presence: true
  validates :authority_id, presence: true
  validates :uni, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
