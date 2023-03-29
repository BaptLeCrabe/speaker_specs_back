ActiveAdmin.register Speaker do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name,
                :plan_file,
                :conceptor_id,
                :acoustic_load_id,
                :sensitivity,
                :hpf,
                :f3,
                :driver_sizes,
                :frequency_range,
                :hornsrep_file,
                :akabak_file,
                :glb_file,
                { images: [] },
                driver_ids: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :plan_file, :conceptor_id, :acoustic_load_id, :sensitivity, :hpf, :f3, :driver_sizes, :frequency_range, :hornsrep_file, :akabak_file, :glb_file]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form(html: { multipart: true }) do |f|
    f.inputs "Speaker" do
      f.input :name
      f.input :conceptor, as: :searchable_select
      f.input :acoustic_load, as: :searchable_select
      f.input :sensitivity
      f.input :hpf
      f.input :f3
      f.input :driver_sizes
      f.input :frequency_range
      f.input :plan_file, as: :file
      f.input :hornsrep_file, as: :file
      f.input :akabak_file, as: :file
      f.input :glb_file, as: :file
      f.input :drivers, as: :searchable_select, input_html: { multiple: true }
      f.input :images, as: :file, input_html: { multiple: true }
      f.actions
    end
  end

  controller do
    def create
      driver_sizes = params[:speaker][:driver_sizes].split(" ,")
      params[:speaker].delete(:driver_sizes)
      super
      @speaker.update(driver_sizes: driver_sizes)
    end

    def update
      driver_sizes = params[:speaker][:driver_sizes].split(" ,")
      params[:speaker].delete(:driver_sizes)
      super
      @speaker.update(driver_sizes: driver_sizes)
    end
  end
end
