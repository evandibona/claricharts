class String
  def nota_bella(form = nil ) 
    letter, bend, octave = "", "", ""
    # Check if 2 or 4 dashes exist
    if not( [2, 4].include? self.scan('-').length )
      abort "String is not a proper note name. "
    end
    if self.include? '.'
      pieces = self.split('-') 
      letter = pieces[0]
      bend = pieces[1]
      octave = pieces[2] 
    else
      pieces = self.split('-') 
      letter = pieces[0]
      bend = pieces[1]
      octave = pieces[2] 
    end
    case bend
    when 'f'
      bend = "\u266D"
    when 'n'
      bend = ""
    when 's'
      bend = "\u266F"
    end
    return letter + bend 
  end
  def first_note
    if self.include? '.'
      return self.split('.')[0] 
    else
      return self
    end
  end
end
  

