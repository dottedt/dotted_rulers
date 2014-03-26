class Array
  # Add
  def sum(start = 0)
    inject(start, &:+)
  end
  # Subtract
  def diff(start = 0)
    inject(start, &:-)
  end
  # Multiply
  def product(start = 0)
    inject(start, &:*)
  end
  # Divide
  def quotient(start = 0)
    inject(start, &:/)
  end

end
