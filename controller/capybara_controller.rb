require 'capybara'
require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require_relative '../system/runtime'
require 'fileutils'
include RSpec::Matchers

module CapybaraAuto
  extend Capybara::DSL

  def self.validate_equal_field(expected, result)
    if expect(result).to eq(expected)
      Console.success("Expected: #{expected} | Result: #{result}")
    else
      Console.error_with_raise("Expected: #{expected} | Result: #{result}")
    end
  end

  def self.validate_current_path (page, path)
    begin
      expect(page).to have_current_path(path, url: true)
      Console.success("URL [#{path}].")
    rescue RSpec::Expectations::ExpectationNotMetError #descobrir excecao
      Console.error_with_raise("Expected: #{path} | Result: #{page.current_path}")
    end
  end

  def self.validate_have_element (element)
    begin
      expect(page).to have_selector element
      Console.success("Page does have element [#{element.description}]")
    rescue RSpec::Expectations::ExpectationNotMetError
      Console.error_with_raise("Page does not have element [#{element.description}]")
    end
  end

  def self.validate_radio_button_or_checkbox_ckecked (element, description)
    begin
      expect(page.find(element)).to be_checked
      Console.success("Element [#{description}] selected")
    rescue RSpec::Expectations::ExpectationNotMetError
      Console.error_with_raise("Element [#{description}] not selected")
    end
  end

  def self.select_radio_button_or_checkbox_ckecked(element)
    element.click
  end

  def self.validate_dropdown_selected(dropdown)
    begin
      expect(page.find('option', text: dropdown)).to be_checked
    rescue Capybara::ElementNotFound
      Console.error_with_raise("Element [#{dropdown}] not found")
    rescue RSpec::Expectations::ExpectationNotMetError
      Console.error_with_raise("Element [#{dropdown}] not checked")
    end
  end

end