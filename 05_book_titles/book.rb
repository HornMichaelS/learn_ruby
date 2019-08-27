class Book
  def initialize
    @small_words = [
      'for', 'and', 'nor', 'but', 'or', 'yet', 'so',
      'aboard', 'about', 'above', 'absent', 'across', 'after', 'against', 'along',
      'alongside', 'amid', 'amidst', 'among', 'amongst', 'around', 'as', 'astride',
      'at', 'atop', 'before', 'afore', 'behind', 'below', 'beneath', 'beside',
      'besides', 'between', 'beyond', 'by', 'circa', 'despite', 'down', 'during',
      'except', 'for', 'from', 'in', 'inside', 'into', 'less', 'like', 'minus',
      'near', 'nearer', 'nearest', 'notwithstanding', 'of', 'off', 'on', 'onto',
      'opposite', 'outside', 'over', 'past', 'per', 'save', 'since', 'through',
      'throughout', 'to', 'toward', 'towards', 'under', 'underneath', 'until', 'up',
      'upon', 'upside', 'versus', 'via', 'with', 'within', 'without', 'worth',
      'the', 'a', 'an', 'some'
    ]
  end

  def title
    @title
  end

  def title=(title)
    @title = title.split.map.with_index do |word, index| 
      if index != 0 and @small_words.include? word
        word
      else
        word.capitalize
      end
    end.join ' '
  end
end
