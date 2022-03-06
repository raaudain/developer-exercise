class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    m = "marklar"
    string = []

    for word in str.split(" ") do
      pun = ""
      regex = /[?.!,;:]/

      if word.match?(regex)
        pun = word.slice!(word.index(regex)..)
      end
      
      if word.length > 4 && word.capitalize! == nil
        string.push(m.capitalize + pun)
      elsif word.length > 4
        string.push(m + pun)
      else
        string.push(word)
      end
    end

    return string.join(" ")
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