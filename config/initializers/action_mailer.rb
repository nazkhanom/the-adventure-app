ActionMailer::Base.tap do |config|
  config.default_url_options = { host: ENV['APP_BASE_URL'] }
  config.default_options = { from: ENV['ACTION_MAILER_FROM'] }
  config.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: '587',
    authentication: :plain,
    user_name: ENV['SENDGRID_USERNAME'],
    password: ENV['SENDGRID_PASSWORD'],
    domain: 'heroku.com',
    enable_starttls_auto: true
  }
end
