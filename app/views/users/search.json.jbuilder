json.array! @users do |user|
  json.name user.user_name
  json.year user.user_year
  json.section user.section.name
  json.id user.id
end
