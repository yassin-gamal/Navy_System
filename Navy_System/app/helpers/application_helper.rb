# encoding: utf-8
module ApplicationHelper
  
  ARABIC_NUMBERS = %w(٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩)
  def ta numbers
    numbers = numbers.to_s if numbers.is_a? Integer
    results = numbers.chars.map { |char| ARABIC_NUMBERS[char.to_i] }.join
  end
  
  
  # def letter?(lookAhead)
  # lookAhead =~ /[[:alpha:]]/
  # end
  #     
  # def numeric?(lookAhead)
  # lookAhead =~ /[[:digit:]]/
  # end

end
