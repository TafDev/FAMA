ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :price, :period, :photobooth, :photobooth_attendant, :propbox, :guestbook, :key_ring, :usb, :public_liability_insurance, :gif, :interactive_touchscreen, :red_curtain_background, :unlimited_visits, :social_media_uploads, :personalised_messages, :green_screen, :facial_recognition, :red_carpet, :free_keyrings, :free_pic_frames, :karaoke, :merryoke, :video_messages, :personalised_theme, :percent_discount, :amount_discount
end
