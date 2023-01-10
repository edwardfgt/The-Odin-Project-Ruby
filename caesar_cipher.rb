#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
@uppercase = ("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
@lowercase = ("abcdefghijklmnopqrstuvwxyz")

def caesar_cipher(string, factor)
  encrypted = String.new
  array = string.split("")
  array.each do |char|
    if @uppercase.include? char
      index = @uppercase.index(char)
      encrypted += @uppercase[index + factor]
    elsif @lowercase.include? char
      index = @lowercase.index(char)
      encrypted += (@lowercase[index + factor])
    else
      encrypted += char
    end
  end
  encrypted
end

puts caesar_cipher("Great job", 2)