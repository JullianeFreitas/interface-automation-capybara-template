require_relative '../../system/runtime'

class BancoFuncObject < SitePrism::Page

  element :form_email_name, "#et_pb_contact_name_0"
  element :form_email_address, "#et_pb_contact_email_0"
  element :form_email_button_send, ".et_pb_contact_submit.et_pb_button"
  element :form_message_required_fields, "#et_pb_contact_form_0 > div.et-pb-contact-message > p"
  element  :form_message_required_name, "#et_pb_contact_form_0 > div.et-pb-contact-message > ul:nth-child(2) > li:nth-child(1)"
  element :form_message_required_email, "#et_pb_contact_form_0 > div.et-pb-contact-message > ul:nth-child(2) > li:nth-child(2)"
  element :form_message_invalid_email, "#et_pb_contact_form_0 > div.et-pb-contact-message > ul > li"
  element :button_with_ID, "#idExample"
  element :message_success, ".entry-title"
  element :button_with_class, ".buttonClass"
  element :radio_button_gender_female, "input[value='female']"
  element :radio_button_gender_male, "input[value='male']"
  element :checkbox_bike, "input[value='Bike']"
  element :checkbox_car, "input[value='Car']"
  element :dropdown_car, ".et_pb_blurb_description select"
  element :tab1_link, ".et_pb_tab_0.et_pb_tab_active a"
  element :tab2_link, ".et_pb_tab_1 a"


end