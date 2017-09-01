require 'pry'
def electionWinner(votes)
  tally = Hash.new(0)
  votes.each { |can| tally[can] += 1 }
  top_vote = 0
  tally.values.each do |num|
    top_vote = num if top_vote < num
  end
  top_names = tally.select do |name, num|
    name if tally[name] == top_vote
  end
  if top_names.count > 1
    ord_values_of_top_names = []
    top_names.keys.each do |name|
      ord_values_of_top_names << name.chars.map {|char| char.ord}
    end
    comparison = ord_values_of_top_names[0].zip(ord_values_of_top_names[1])
    top_name_ord_values = []
    comparison.each_with_index do |ord_set, index|
      if ord_set[0] > ord_set[1]
        top_name_ord_values << ord_values_of_top_names[0]
      elsif ord_set[0] < ord_set[1]
        top_name_ord_values << ord_values_of_top_names[1]
      end
      break if top_name_ord_values.count > 0
    end
    top_name = top_name_ord_values[0].map do |ord|
      ord.chr
    end.join
    puts top_name
  else
    puts top_names.keys.first
  end
end
electionWinner(["ryan", "sious", "jane", "mary", "mary", "mason", "mason", "tom", "janet", "lester"])
