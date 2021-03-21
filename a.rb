nbTests = gets.chomp.to_i
cptTest = 1
while cptTest <= nbTests
    meta = gets.chomp.split(" ").map!{|nb| nb.to_i}
    str = gets.chomp
    i = 0
    score = 0
    while i < (str.length / 2).to_i + str.length % 2
        score += 1 unless str[i] == str[str.length - i - 1]
        i += 1
    end
    answer = (meta[1] - score).abs()
    puts "Case ##{cptTest}: #{answer}"
    cptTest += 1
end