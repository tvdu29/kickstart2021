def solve(nbTest)
    meta = gets.chomp.split(" ").map!{|nb| nb.to_i}
    str = gets.chomp.chars()
    answers = Array.new(str.length, 0)
    for i in 0..str.length - 1
        if i == 0 || (str[i] <=> str[i - 1]) == 0 || (str[i] <=> str[i - 1]) == -1  then
            answers[i] = 1;
        else
            answers[i] = answers[i - 1] + 1
        end
    end   
    puts "Case ##{nbTest}: #{answers.join(" ")}"
end

nbTests = gets.chomp.to_i
cptTest = 1
while cptTest <= nbTests
    solve(cptTest)
    cptTest += 1
end