
require "action_mailer"

ActionMailer::Base.template_root = File.dirname __FILE__

class ActionMailer::Base
  def from
    "test@example.com"
  end

  def recipients
    "test@example.com"
  end
end

ActionMailer::Base.sendmail_settings = {
  :location => "/usr/sbin/sendmail",
  :arguments => "-i -t"
}

ActionMailer::Base.delivery_method = :sendmail

class Mailer < ActionMailer::Base
  def notification(str)
    subject "Backup report"

    part :body => str
  end
end
