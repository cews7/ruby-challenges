def phone_number_checker(alleged_phone_number)
  m_valid = alleged_phone_number.split("").map do |char|
    char.gsub!(/[:)!@%&"]/, "")
    char if (0..9).member?(char.to_i) && !("a".."z").member?(char.downcase)
  end.compact
  f_check = m_valid.reject { |char| char.to_s.empty? }
  if f_check.length.eql?(11) && f_check[0].eql?("0") && !f_check.include?(' ')
    print f_check.join
  else
    print "Not a phone number"
  end
end

phone_number_checker('efRFS:)0207ERGQREG8349F827!')
# => '02078834982'
