print "what is the temperature?"
temperature= gets.chomp.to_i



print "what is your gender?"
gender = gets.chomp #asks for a prompt
if gender == "male" #exactly equal
  if temperature > 20
    puts "I like pants"
  else puts "i don't like pants"
  end
end
if gender == "female" #exactly equal
  if temperature > 20
    puts "I like skirts"
  else puts "i don't like skirts"
  end
else puts "Stopping"
end
=begin
    if temperature < 20
      puts "i don't like pants"
  end
if gender == "female"
   if temperature > 20
     puts "I like skirts"
  end
  if temperature < 20
    puts "I don't like skirts"
    end
  end
=end

# == has to be exactly as the either sides of the double equals
# else - if first, checks it if not then the last resort
#if needs to finish with end
#if statement in another if needs to be indented
# shift tab makes what you've highlighted aligned
