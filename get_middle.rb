def center_of(str)
  length = str.length
  if length.odd?
    return str[(length / 2)]
  else
    return "#{str[(length / 2) - 1]}" + "#{str[length / 2]}"
  end 
end 


