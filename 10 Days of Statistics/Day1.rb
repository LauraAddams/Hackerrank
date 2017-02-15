# Enter your code here. Read input from STDIN. Print output to STDOUT
n = $stdin.gets.chomp.to_i
array = gets.split(" ").map(&:to_i)
sorted = array.sort

#q2 is set if even or odd, removes median item if odd
if sorted.length % 2 == 1
    q2 = sorted[n/2]
    sorted.delete_at(sorted.length/2)
else
    q2 = (sorted[(sorted.length / 2)] + sorted[(sorted.length / 2) - 1]) / 2
end

#splits array at median
lower, upper = sorted.each_slice(sorted.length / 2).to_a

#find median for 'lower' array sets, q1. finds median for 'upper' sets q3
q1 = (lower[(lower.length - 1) / 2] + lower[lower.length / 2]) / 2
q3 = (upper[(upper.length - 1) / 2] + upper[upper.length / 2]) / 2

puts q1
puts q2
puts q3
