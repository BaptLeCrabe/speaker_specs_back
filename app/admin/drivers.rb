ActiveAdmin.register Driver do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name,
                :brand_id,
                :size,
                :type,
                :spl,
                :frequency_range,
                :loadspeaker_link,
                :doc_files,
                :glb_file,
                :thiele_small_id,
                { images: [] },
                speakers_ids: [],
                thiele_small_attributes: %i[
                  resonant_frequency
                  qes
                  qms
                  qts
                  vas
                  re
                  zmin
                  le
                  force_factor
                  rms
                  cms
                  mmd
                  mms
                  sd
                  edd
                  driver_xmax
                  xlim
                  xmaxvd
                  efficiency
                  ebp
                ]
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :brand_id, :size, :type, :spl, :frequency_range, :loadspeaker_link, :doc_files, :glb_file, :thiele_small_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form(html: { multipart: true }) do |f|
    f.inputs "Speaker" do
      f.input :name
      f.input :brand, as: :searchable_select
      f.input :size
      f.input :spl
      f.input :frequency_range
      f.input :loadspeaker_link
      f.input :doc_files, as: :file
      f.input :glb_file, as: :file
      f.input :speakers, as: :searchable_select, input_html: { multiple: true }
      f.input :images, as: :file, input_html: { multiple: true }
      f.has_many :thiele_small, heading: false, allow_destroy: true do |ts|
        ts.input :resonant_frequency
        ts.input :qes
        ts.input :qms
        ts.input :qts
        ts.input :vas
        ts.input :re
        ts.input :zmin
        ts.input :le
        ts.input :force_factor
        ts.input :rms
        ts.input :cms
        ts.input :mmd
        ts.input :mms
        ts.input :sd
        ts.input :edd
        ts.input :driver_xmax
        ts.input :xlim
        ts.input :xmaxvd
        ts.input :efficiency
        ts.input :ebp
      end
      f.actions
    end
  end
end
