# cf. https://github.com/teamcapybara/capybara/issues/1912
Capybara.register_driver(:selenium_chrome_headless) do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w(no-sandbox headless disable-gpu) }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.javascript_driver = :selenium_chrome_headless
