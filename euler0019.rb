monthLengths      = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
monthLengthsLeap  = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

year = 1901
firstDay = 1
initialSundays = 0

while year < 2000 do
  for i in 0..11 do
    if firstDay == 0
      initialSundays += 1
      puts (year)
      puts(i)
    end
    if year % 4 == 0 && year != 1900
      firstDay = (firstDay + monthLengthsLeap[i]) % 7
    else
      firstDay = (firstDay + monthLengths[i]) % 7
    end
  end
  year += 1
end

puts (initialSundays)
