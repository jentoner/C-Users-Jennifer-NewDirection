# Acess to Customer via active admin
ActiveAdmin.register Customer do
  permit_params :status, :pst_rate, :gst_rate, :hst_rate, :customer_id
end
