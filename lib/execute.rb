
def execute(cmd)
  puts cmd
  puts %x{ #{cmd} 2>&1 }
  
  $?.success?
end

