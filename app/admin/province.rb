# Access to Province via active admin
ActiveAdmin.register Province do
  permit_params :name, :gst, :pst, :hst
end
