# Build on the results of our in-class exploration to output, for example:
#
# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

require 'date'

puts "What's your name?"
name = gets.chomp.downcase
if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.each_char do |char|
  if char =~ /[aeiouhflmnrs]/
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end

puts "#{name.upcase}'s just GRAND!"

puts "Hey #{name}, what's your birthday?  Use format YY/MM/DD"
# gets the birthday from the user
birthday = gets
birthday = Date.parse(birthday)
today = Date.today
today = Date.new(today.year, today.month, today.day)
puts "today"
puts today
# changes the year of the user's birthday to the current year, so you can calculate the days
bdate = Date.new(today.year, birthday.month, birthday.day)

puts "bdate"
puts bdate

diff = (bdate - today).to_i
  if diff < 0
    bdayNew = Date.new((today.year + 1), bdate.month, bdate.day)
    diff = (bdayNew - today).to_i
end

puts "Awesome! Your birthday is in #{diff} days! Happy Birthday in advance!"
