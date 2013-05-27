
require "mail"
require "socket"

Mail.defaults do
  delivery_method :sendmail, :location => "/usr/sbin/sendmail", :arguments => "-i"
end

module Report
  def self.new
    Mail.new do
      from "test@example.com"
      to "test@example.com"

      subject "Backup report - #{Socket.gethostname}"
    end
  end
end

