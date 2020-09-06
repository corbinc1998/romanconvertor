def fromRoman(romanNumber)
    if romanNumber =~ /[?=MDCLXVI]/
        raise TypeError
    raise NotImplementedError
end
translation= {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "CD" => 400,
      "C" => 100,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1
  }
  translationValue = 0
   (0..romanNumber.length - 1).each { |i| 
    if i > 0 and translation[romanNumber[i]] > translation[romanNumber[i - 1]]
    translationValue += translation[romanNumber[i]] - 2 * translation[romanNumber[i - 1]]
    else
        translation += translation[romanNumber[i]]
    end
     }
      translationValue
    end

def toRoman(arabicNumber)
roman = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
  }
  if arabicNumber>3999 || arabicNumber <=0
    raise RangeError
  end
  translationValue = ""
  roman.each do |value, roman_char|
    translationValue << roman_char * (arabicNumber/value)
    arabicNumber %= value
  end
  translationValue
end
