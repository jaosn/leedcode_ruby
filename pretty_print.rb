def pretty_print_matrix(mat)
  res = "[\n"
  mat.each_with_index do |row,m|
    temp = "["
    row.each_with_index do |col,n|
      if n != row.length-1
        temp += col.to_s
        temp += ", "
      else
        temp += col.to_s
        temp += "]"
      end
    end
    temp += "\n"
    res += temp
  end
  return res + "]"
end
