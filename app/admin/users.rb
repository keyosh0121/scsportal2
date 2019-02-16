ActiveAdmin.register User do
  includes :authority, :section

  batch_action :destroy, false
  batch_action :承認する do |ids|
    batch_action_collection.find(ids).each do |user|
      if user.authority.name == "未承認"
        user.update(authority_id: Authority.find_by(name: "一般").id)
      end
    end
    redirect_to collection_path, alert: "ユーザは承認されました"
  end

  permit_params :user_name, :email, :password, :password_confirmation, :user_year, :uni, :gender, :authority_id, :section_id

  index do
    selectable_column
    id_column
    column :user_name
    column :email
    column :created_at
    column :user_year
    column :uni
    column :gender
    column :authority
    column :section
    actions
  end

  filter :user_name
  filter :user_year
  filter :email
  filter :authority
  filter :section
  filter :created_at

  form do |f|
    f.inputs do
      f.input :user_name
      f.input :email
      f.input :authority
      f.input :section
    end
    f.actions
  end

end
