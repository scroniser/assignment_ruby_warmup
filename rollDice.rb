def roll_dice(dice=1)
  total = 0
  dice.times do |roll|
    total += (1 + rand(6))
  end
  return total
end

#Test output: 
print roll_dice(4)
