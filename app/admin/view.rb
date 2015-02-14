ActiveAdmin.register View do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  #
  index do
    selectable_column
    id_column
    column :title
    column :url
    column :start_at
    column :duration
    actions
  end

  filter :title
  filter :url
  filter :start_at
  filter :duration

end
