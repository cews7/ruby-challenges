#Determine the years, beginning at year 0, which are “palindromes” (the same series of characters forward and backwards)
class PalindromeFinder
  def self.year_cycler(current_year)
    palindrome_count = 0
    current_year.times do |i|
      if i.to_s.split("")[0] == i.to_s.split("")[-1]
        update_value = i.to_s.split("")[1..-2]
        if update_value[0] == update_value[-1]
          palindrome_count += 1
        end
      end
    end
    p palindrome_count
  end
end

PalindromeFinder.year_cycler(2017)
