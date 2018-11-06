
require "mail"
require "socket"

Mail.defaults do
  delivery_method :sendmail, :location => "/usr/sbin/sendmail", :arguments => "-i"
end

module Report
  def self.new
    Mail.new do
      from "test@localhost"
      to "test@localhost"

      subject "Backup report - #{Socket.gethostname}"
    end
  end
end

