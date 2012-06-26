topSequence = []

for startnum in (1..1000000)
#  puts (startnum)
  sequence = [startnum]

  while sequence.last != 1
#    puts(sequence[count])
    if sequence.last.modulo(2) == 0
      sequence.push(sequence.last/2) 
    else
      sequence.push(sequence.last*3 + 1)
    end
  end

  if sequence.length > topSequence.length
    topSequence = sequence
#    puts(topSequence.inspect)
  end

end


#puts(1)  
puts(topSequence.inspect)
puts(topSequence.length)
#puts(startnum)