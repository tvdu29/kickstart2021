require 'prime'

def solve(nbTest)
    str = gets.chomp.to_i
    nb1 = 0
    nb2 = 0
    Prime.each(str) do |prime|
        if nb2 * prime > str
            break
        else
            nb1 = nb2
            nb2 = prime
        end
    end
    puts "Case ##{nbTest}: #{nb1 * nb2}"
end

nbTests = gets.chomp.to_i
cptTest = 1
while cptTest <= nbTests
    solve(cptTest)
    cptTest += 1
end