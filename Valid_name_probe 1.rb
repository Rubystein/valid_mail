#With 1 mistake - return not so many used!

def is_valid_email(str)
  parts = str.split('@')

  if parts.length != 2
    false
  end

  first = parts[0]
  second = parts[1]
  alpha = 'abcdefghijklmnopqrstuvwxyz'

  first.each_char do |char|
  unless alpha.include?(char)
    false
  end
  end

  if second.split('.').length == 2
    true
  else
    false
  end
end


puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false