require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |data|
    data.each do |atr, v|
      if atr == "status" && v == "Winner"
        winner = data["name"]
        return winner.split(" ")[0]
        binding.pry
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |hash|
      hash.each do |atr, v|
        if atr == "occupation" && v == occupation
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each do |atr, v|
        if atr == "hometown" && v == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |hash|
      hash.each do |atr, v|
        if atr == "hometown" && v == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |hash|
    hash.each do |atr, v|
      if atr == "age"
       age_array << v.to_i
      end
    end
  end
  sum = 0
  len = age_array.length
  age_array.each do |i|
    sum += i
  end
  avg_age = sum.to_f / len
  return avg_age.round
end
