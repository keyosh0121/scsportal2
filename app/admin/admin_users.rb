ActiveAdmin.register User do
  permit_params :user_name, :email, :password, :password_confirmation, :user_year, :uni, :gender, :authority_id, :section_id

  index do
    selectable_column
    id_column
    column :user_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :user_year
    column :uni
    column :gender
    column :authority_id
    column :section_id
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
