nbTests = gets.chomp.to_i
cptTest = 1
while cptTest <= nbTests
    meta = gets.chomp.split(" ").map!{|nb| nb.to_i}
    houses = gets.chomp.split(" ").map!{|nb| nb.to_i}.sort!
    nbHouses = 0
    while !houses.empty? && meta[1] >= houses[0]
        nbHouses += 1
        meta[1] -= houses[0]
        houses.delete_at(0)
    end
    puts "Case ##{cptTest}: #{nbHouses}"
    cptTest += 1
end