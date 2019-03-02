# frozen_string_literal: true

json.array! @users do |user|
  json.name user.name
  json.year user.year_in_scs
  json.section user.section.name
  json.id user.id
end
