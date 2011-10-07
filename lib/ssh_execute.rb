
def ssh_execute(host, user, command)
  execute "/usr/bin/ssh -o PasswordAuthentication=no -l #{user} #{host} #{command}"
end

