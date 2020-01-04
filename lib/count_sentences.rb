require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end 
  

  def question?
    self.end_with? ("?")
  end

  def exclamation?
    self.end_with? ("!")
  end


#Think about the steps you need to go through to enact the desired behavior:

#split the string on any and all periods, question marks and exclamation marks.
#count the number of elements that results from that split.
  def count_sentences
     self.split(/[.!?]/).reject {|x| x.empty?}.size
  end
end