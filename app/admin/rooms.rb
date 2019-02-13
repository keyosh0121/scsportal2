ActiveAdmin.register Room do

  permit_params :name, :room_type

  index do
    selectable_column
    id_column
    column :name
    column :room_type
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :room_type
    end
    f.actions
  end

end
