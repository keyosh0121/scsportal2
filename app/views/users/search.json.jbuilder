json.array! @users do |user|
  json.name user.user_name
  json.year year_in_scs(user)
  json.section user.section.name
  json.id user.id
end
