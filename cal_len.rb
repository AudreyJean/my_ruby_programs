multiplier = ''
actual = ''
divisor = '4.0'
while multiplier != '0' 
  print "What multiplier do you want to use (type '0' to quit)? "
  multiplier = gets.chomp()
  actual = ''
  while actual != '0'
    print "What is the actual measurement (type '0' to quit)? "
    actual = gets.chomp()
    length = actual.to_f / divisor.to_f * multiplier.to_f * 0.01
    puts length.to_s
  end
end
