class Mic < ApplicationRecord
	#RELATION
	belongs_to :user
	belongs_to :band
	belongs_to :room, optional: true
	belongs_to :period

	#QUERY
	scope :eliminate_past, -> { where('date > ?',Date.today ) }
	scope :on_date, ->(date) { where('date = ?',date ) }
	scope :unique_dates, -> { select(:date).distinct.map(&:date).sort }

	#CLARIFY
	enum status: { unapproved: 0, approved: 1, declined: 2 } 

end
