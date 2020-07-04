require "yoshimitsu_palindrome/version"

module YoshimitsuPalindrome
  def palindrome?
    !processed_content.strip.empty? && processed_content == processed_content.reverse
  end
  private

  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include YoshimitsuPalindrome
end

class Integer
  include YoshimitsuPalindrome
end