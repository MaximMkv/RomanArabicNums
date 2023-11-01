def roman_to_int(roman)
    roman_numerals = {
      'M' => 1000,
      'D' => 500,
      'C' => 100,
      'L' => 50,
      'X' => 10,
      'V' => 5,
      'I' => 1
    }
  
    result = 0
    prev_value = 0
  
    roman.reverse.each_char do |char|
      value = roman_numerals[char]
  
      if !value
        puts "Неправильний символ у римському числі: #{char}"
        return
      end
  
      if value < prev_value   #XVI
        result -= value
      else
        result += value
      end
  
      prev_value = value
    end
  
    result
  end



  
  def int_to_roman(num)
    if num <= 0 || num >= 4000
      puts "Введене число не входить в діапазон від 1 до 3999."
      return
    end
  
    roman_numerals = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  
    result = ''
  
    roman_numerals.each do |value, roman| #14
      while num >= value
        result += roman
        num -= value
      end
    end
  
    result
  end
  


  puts roman_to_int("MCMXC")
  puts roman_to_int("XIV")
  puts roman_to_int("XVI")
  puts int_to_roman(2008)
  puts int_to_roman(1666)
  puts int_to_roman(14)