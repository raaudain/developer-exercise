class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    return str.split(" ").map{|word| 
      m = "marklar"
      pun = ""
      regex = /[?.!,;:]/

      if word.match?(regex)
        pun = word.slice!(word.index(regex)..)
      end
      
      if word.length > 4 && word.capitalize! == nil
        m.capitalize + pun
      elsif word.length > 4
        m + pun
      else
        word
      end
    }.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    results = [0, 1]
    i = 2

    while i <= nth do
      a = results[i - 1]
      b = results[i - 2]
      results.push(a + b)
      i += 1
    end

    return results.reject{|n| n % 2 != 0}.reduce(:+)
  end
end