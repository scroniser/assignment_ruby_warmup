def dice_outcomes(dice=1, rolls)
  nums = {}
  rolls.times do |round|
    num = roll_dice(dice)
    if  nums[num] != nil
      nums[num] = nums[num] + 1
    else
      nums[num] = 1
    end
  end
  print "#{nums}\n"
  nums.sort.each_with_index do |(key, display), index|
    if index != 0
      print "\n"
    end
    print "#{key} "
    display.times do |count|
      print "#"
    end
  end
end

def roll_dice(dice=1)
  total = 0
  dice.times do |roll|
    total += (1 + rand(6))
  end
  return total
end

#Test output: 
#dice_outcomes(4, 100)
