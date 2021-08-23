ActiveAdmin.register Job do
  permit_params :job_description, :job_type_id, :job_location_id, :company_id
  actions :all
  index do
    selectable_column
    id_column
    column :job_description
    column :job_type_id
    column :job_location_id
    column :company_id
    actions

  end
  filter :job_type_id
  filter :job_location_id
  filter :company_id
  show do
    tabs do
      tab I18n.t('active_admin.overview') do
        panel I18n.t('active_admin.general') do
          attributes_table_for job do
            row :id
            row :job_type_id
            row :job_description
            row :company_id
          end
        end


        end
      end
    end
  form do |f|
    f.inputs do
      if f.object.new_record?
        f.input :job_type_id
        f.input :job_description
        f.input :company_id
        f.input :job_location_id

    end

    actions
  end
    end
end
