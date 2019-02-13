class Band < ApplicationRecord
	has_many :mics, dependent: :destroy
end
