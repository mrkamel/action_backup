
def execute(cmd, options = {}) 
  output = cmd.dup

  Array(options[:secret]).each do |secret|
    output.gsub! secret, "*****"
  end 

  puts output

  puts %x{ ( #{cmd} ) 2>&1 }
  
  $?.success?
end

