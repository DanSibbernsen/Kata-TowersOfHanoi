$number_of_moves = 0
def solution (number_of_disks, source, destination, spare)
    if number_of_disks > 0
    solution(number_of_disks-1, source, spare, destination)
    $number_of_moves += 1
    disk = source.pop
    destination.push(disk)
    solution(number_of_disks-1, spare, destination, source)
  end
end

number_of_disks = 3
towerBeginning = (1..number_of_disks).to_a
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
puts
puts "Number of moves: #{$number_of_moves}"
