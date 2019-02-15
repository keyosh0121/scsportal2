json.array! @users do |user|
  json.name user.name
  json.year user.year
  json.section user.section.name
  json.id user.id
end
