def solution (number_of_disks, source, destination, spare)
  if number_of_disks == 0
    disk = source.pop
    destination.push(disk)
  else
    solution(number_of_disks-1, source, spare, destination)
    disk = source.pop
    destination.push(disk)
    solution(number_of_disks-1, spare, destination, source)
  end
end

number_of_disks = 5
towerBeginning = (0..number_of_disks).to_a
towerMiddle = []
towerEnd = []
puts "Before solution:"
print "source: #{towerBeginning}"
puts
print "spare: #{towerMiddle}"
puts
print "destination: #{towerEnd}"
puts
solution(number_of_disks, towerBeginning, towerEnd, towerMiddle)
puts "After solution:"
print "source: #{towerBeginning}"
puts
print "spare: #{towerMiddle}"
puts
print "destination: #{towerEnd}"
