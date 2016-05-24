class ApplicationMailer < ActionMailer::Base
  default from: ENV['mailer_address']
  layout 'mailer'
end
