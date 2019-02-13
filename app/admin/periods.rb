ActiveAdmin.register Period do

  permit_params :name, :start_time, :end_time

  index do
    selectable_column
    column :name
    column :start_time
    column :end_time
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_time
      f.input :end_time
    end
    f.actions
  end

end
