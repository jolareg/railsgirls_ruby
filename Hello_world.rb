puts "Hello world :) What is Your name?"
name = gets
puts "Nice to meet you, #{name}"

puts "What is your surname?"
surname = gets

def full_name(name, surname)
  puts "New user's fullname: #{name} #{surname}"
end

full_name(name, surname)
