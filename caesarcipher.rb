require 'pry'
def cipher(message, shift)
  decode = message.split('')
  decoded_message = ""
  while shift >= 26 
    shift = shift - 26
  end
  decode.each do |letter|
    if letter == ' '
      decoded_message += letter
      next
    end
    shift.times {letter = letter.next}
    decoded_message += letter
  end 
  puts decoded_message   
  
end  



puts "What\'s the message?"
message = gets.chomp
puts "How much should we shift the message? (Numerically)"
shift = gets.chomp.to_i
cipher(message, shift)
