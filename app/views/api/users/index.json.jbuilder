json.array! @users.each do |user|
  json.id user.id
  json.first_name user.first_name
  json.last_name user.last_name
  json.email user.email
  json.user_name user.user_name
  json.zipcode user.zipcode
  json.due_date user.due_date
  json.reg_pro_list user.reg_pro_list
  json.baby_names_id user.baby_names_id
  json.calendar_id user.calendar_id
  json.profile_pic user.profile_pic
  json.baby_growth_id user.baby_growth_id
end 