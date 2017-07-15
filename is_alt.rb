def is_alt(string)
  c     = string.split("")
  valid = true
  c.each_with_index do |ch, i|
    if (ch.eql?("a") || ch.eql?("e") || ch.eql?("i") || ch.eql?("o") || ch.eql?("u")) && (c[i + 1].eql?("a") || c[i + 1].eql?("e") || c[i + 1].eql?("o") ||
      c[i + 1].eql?("i") || ch.eql?("u"))
      valid = false
    elsif (ch.eql?("b") || ch.eql?("c") || ch.eql?("d") || ch.eql?("f") || ch.eql?("g") || ch.eql?("h") || ch.eql?("j") || ch.eql?("k") ||
      ch.eql?("l") || ch.eql?("m") || ch.eql?("n") || ch.eql?("p") || ch.eql?("q") || ch.eql?("s") || ch.eql?("t") || ch.eql?("v") || ch.eql?("w") ||
      ch.eql?("x")) && (c[i + 1].eql?("b") || c[i + 1].eql?("c") || c[i + 1].eql?("d") || c[i + 1].eql?("f") || c[i + 1].eql?("g") ||
      c[i + 1].eql?("h") || c[i + 1].eql?("j") || c[i + 1].eql?("k") || c[i + 1].eql?("l") || c[i + 1].eql?("m") || c[i + 1].eql?("n")||
      c[i + 1].eql?("p") || c[i + 1].eql?("q") || c[i + 1].eql?("s"))
      valid = false
    end
  end
  p valid
end

is_alt("amazon")
