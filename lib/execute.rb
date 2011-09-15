
def execute(cmd)
  puts %x{ #{cmd} 2>&1 }
  
  $?.success?
end

