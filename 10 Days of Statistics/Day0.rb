# Enter your code here. Read input from STDIN. Print output to STDOUT
n = $stdin.gets.chomp.to_i
array = gets.split(" ").map(&:to_i)

#mean, add all num in array and divide by N
def mean(array, n)
    array.inject(0, :+) / n.to_f
end

#median, sort numbers, length, and median
def median(array, n)
    sorted = array.sort
    len = sorted.length
    (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

#mode, hash looks for repeated num, if none then smallest num
def mode(array, n)
    sorted = array.sort
    number_times = Hash.new(0)
    
    sorted.each do |number|
        number_times[number] += 1
    end
    
    number_times.max_by{|k, v| v}[0]
end

puts mean(array, n)
puts median(array, n)
puts mode(array, n)
