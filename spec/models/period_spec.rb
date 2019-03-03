# frozen_string_literal: true

# == Schema Information
#
# Table name: periods
#
#  id         :bigint(8)        not null, primary key
#  end_time   :time             not null
#  name       :string           not null
#  start_time :time             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe Period, type: :model do
end
