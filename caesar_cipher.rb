#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
@uppercase = ("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
@lowercase = ("abcdefghijklmnopqrstuvwxyz")

def caesar_cipher(string, factor)
  encrypted = String.new
  array = string.split("")
  array.each do |char|
    if @uppercase.include? char
      index = @uppercase.index(char)
      if index + factor < 26
        encrypted += @uppercase[index + factor]
      else
        encrypted += @uppercase[(index + factor) - 26]
      end

    elsif @lowercase.include? char
      index = @lowercase.index(char)
      if index + factor < 26
        encrypted += @lowercase[index + factor]
      else
        encrypted += @lowercase[(index + factor) - 26]
      end
    else
      encrypted += char
    end
  end
  encrypted
end

puts caesar_cipher("xyz", 1)