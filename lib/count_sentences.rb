require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[\.|!|\?]/).filter { |sentence| !sentence.empty? }.count
  end

end 
# \. the backslash means we want to escape and in this case we are escaping the periods usual speacial meaning. The . normally means any single character. We are saying we want only a period instead

#self.split(/[\. |! |? ]*/).count

# def count_sentences
#   self.split(/[.!?]*$/)
#   binding.pry
#   self.count
# end
# end