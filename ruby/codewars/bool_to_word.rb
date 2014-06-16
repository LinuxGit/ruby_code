def bool_to_word bool
  if false ^ bool
    return 'Yes'
  else
    return 'No'
  end
end

#Best Practices
def bool_to_word bool
  bool ? 'Yes' : 'No'
end
