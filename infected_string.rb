def infected_string(healthy_string, infection)
  infected_string = ""
  healthy_string.split('').each do |char|
    infected_string << infection
  end
  print infected_string
end


infected_string("hello", "b")
# => "zzzzz"
