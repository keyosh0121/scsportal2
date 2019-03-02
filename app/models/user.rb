# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           not null
#  encrypted_password     :string           not null
#  gender                 :integer
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  name                   :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  uni                    :string           not null
#  year                   :integer          not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  authority_id           :bigint(8)        not null
#  section_id             :bigint(8)        not null
#
# Indexes
#
#  index_users_on_authority_id          (authority_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_section_id            (section_id)
#
# Foreign Keys
#
#  fk_rails_...  (authority_id => authorities.id)
#  fk_rails_...  (section_id => sections.id)
#


class User < ApplicationRecord
  belongs_to      :section
  belongs_to      :authority
  has_many        :band_members
  has_many        :bands, through: :band_members
  has_many        :mics, dependent: :destroy
  has_many        :room_usages
  validates       :year, presence: true
  validates       :name, presence: true
  validates       :uni, presence: true
  validates       :gender, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum gender: { male: 0, female: 1 }
end
