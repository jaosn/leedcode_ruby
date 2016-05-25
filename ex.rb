

def last_word(s)

end

a = "han zhen yu"
b = ""
lt = a.length
while b != " "

  b = a[lt]
  lt -= 1
end
p a[lt+2..a.length]
