require 'fileutils'

Before do |scenario|
  @step_count = 1
end

AfterStep do |scenario|
  take_screenshot(@step_count)
  @step_count += 1
end
