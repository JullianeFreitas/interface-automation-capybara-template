require_relative '../../controller/capybara_controller.rb'
require_relative '../../system/console'


Quando('envio email com os parâmetros:') do |parameters|
  args = parameters.hashes.first
  CapybaraAuto.validate_have_element(home.form_email_name)
  home.form_email_name.set args['nome']
  home.form_email_address.set args['email']
  home.form_email_button_send.click
end

Quando("volto para a página anterior") do
  home.go_back
end

Quando("valido mensagem de todos os campos necessários para o formulário de email") do
  CapybaraAuto.validate_have_element(have_form_email_name)
  CapybaraAuto.validate_have_element(have_form_email_address)
  CapybaraAuto.validate_have_element(have_form_message_required_fields)
  CapybaraAuto.validate_equal_field("Please, fill in the following fields:", home.form_message_required_fields.text)
  CapybaraAuto.validate_have_element(have_form_message_required_email)
  CapybaraAuto.validate_equal_field("Email Address", home.form_message_required_email.text)
  CapybaraAuto.validate_have_element(have_form_message_required_name)
  CapybaraAuto.validate_equal_field("Name", home.form_message_required_name.text)
end

Quando("valido mensagem de email inválido para o formulário de email") do
  CapybaraAuto.validate_have_element(have_form_email_address)
  CapybaraAuto.validate_equal_field("Invalid email", home.form_message_invalid_email.text)
end

Quando("valido mensagem de email nulo para o formulário de email") do
  CapybaraAuto.validate_have_element(have_form_email_address)
  CapybaraAuto.validate_equal_field("Please, fill in the following fields:", home.form_message_required_fields.text)
  CapybaraAuto.validate_equal_field("Email Address", home.form_message_invalid_email.text)

end

Quando("clico em um botão usando o ID") do
  home.button_with_ID.click
  CapybaraAuto.validate_equal_field("Button success", home.message_success.text)
  CapybaraAuto.validate_current_path(home, "https://ultimateqa.com/button-success/dd")
end

Quando("clico em um botão usando a classe") do
  home.button_with_class.click
  CapybaraAuto.validate_equal_field("Button success", home.message_success.text)
  CapybaraAuto.validate_current_path(home, "https://ultimateqa.com/button-success/ss")
end

E("escolho o radio button {string}") do |option|
  if option == "Female"
    CapybaraAuto.select_radio_button_or_checkbox_ckecked(home.radio_button_gender_female)
  elsif option == "Male"
    CapybaraAuto.select_radio_button_or_checkbox_ckecked(home.radio_button_gender_male)
  else
    Console.error_with_raise("Radio Button not mapped")
  end
end

E("valido que o radio button {string} está selecionada") do |option|
  if option == "Female"
    CapybaraAuto.validate_radio_button_or_checkbox_ckecked "input[value=female]", option
  elsif option == "Male"
    CapybaraAuto.validate_radio_button_or_checkbox_ckecked "input[value=male]", option
  else
    Console.error_with_raise("Radio Button not mapped")
  end
end

E("escolho o checkbox {string}") do |checkbox|
  if checkbox == "I have a bike"
    CapybaraAuto.select_radio_button_or_checkbox_ckecked(home.checkbox_bike)
  elsif checkbox == "I have a car"
    CapybaraAuto.select_radio_button_or_checkbox_ckecked(home.checkbox_car)
  else
    Console.error_with_raise("Checkbox not mapped")
  end
end

E("valido que o checkbox {string} está selecionado") do |checkbox|
  if checkbox == "I have a bike"
    CapybaraAuto.validate_radio_button_or_checkbox_ckecked "input[value='Bike']", checkbox
  elsif checkbox == "I have a car"
    CapybaraAuto.validate_radio_button_or_checkbox_ckecked "input[value='Car']", checkbox
  end
end

E("escolho a opção {string} no dropdown") do |dropdown|
  home.dropdown_car.select dropdown
end

E("valido que a opção {string} está selecionada no dropdown") do |dropdown|
  CapybaraAuto.validate_dropdown_selected dropdown
end

E("clico no {string}") do |tab|
  home.tab1_link.click
  home.tab2_link.click

end

Quando("faço um teste") do

end
