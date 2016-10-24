lily_fill_lake=1
30.times { lily_fill_lake *= 2 }
lilies=2
days=0
while lilies < lily_fill_lake
  days += 1
  lilies *= 2
end
puts " two lilies fill a lake for #{days} days"
