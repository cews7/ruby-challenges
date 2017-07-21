def phone_number_checker(alleged_phone_number)
  m_valid = alleged_phone_number.split("").map do |char|
    char if (0..9).member?(char.to_i) && !("a".."z").member?(char)
  end.compact
  if m_valid.length.eql?(11) && m_valid[0].eql?("0") && !m_valid.include?(' ')
    print m_valid.join
  else
    print "Not a phone number"
  end
end


phone_number_checker('01074834982')
# => '02078834982'
# phone_number_checker('efRFS:)0207ERGQREG88349F82!')
# => '02078834982'
# phone_number_checker('efRFS:)')
# => 'Not a phone number'
