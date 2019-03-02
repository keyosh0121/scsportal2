# frozen_string_literal: true

json.array! @users do |user|
  json.name user.name
  json.year year_in_scs(user)
  json.section user.section.name
  json.id user.id
end
