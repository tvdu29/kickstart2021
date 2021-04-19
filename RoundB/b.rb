def solve(nbTest)
    meta = gets.chomp.split(" ").map!{|nb| nb.to_i}
    str = gets.chomp.split(" ").map!{|nb| nb.to_i}
    answer = 2
    i_start = 0
    change = -1
    diff = str[0] - str[1]
    i = 1
    while i < str.length
        if i < str.length - 1 && (str[i] - str[i + 1]) == diff then
            i += 1
        elsif (i < str.length - 2 && (str[i] - str[i + 1]) != diff && (str[i] - str[i + 2]) == diff * 2) && change == -1 then
            change = i
            i +=  2
        else
            if answer < (i - i_start + 1 + (change == -1 ? 1 : 0)) then
                answer = (i - i_start + 1 + (change == -1 ? 1 : 0)) < str.length ? (i - i_start + 1 + (change == -1 ? 1 : 0)) : str.length
            end
            if i != str.length - 1 then
                i_start = (change == -1) ? i : change
                change = -1
                i = i_start + 1
                diff = str[i_start] - str[i]
            else
                i += 1
            end
        end
    end

    str = str.reverse()
    i_start = 0
    change = -1
    diff = str[0] - str[1]
    i = 1
    while i < str.length
        if i < str.length - 1 && (str[i] - str[i + 1]) == diff then
            i += 1
        elsif (i < str.length - 2 && (str[i] - str[i + 1]) != diff && (str[i] - str[i + 2]) == diff * 2) && change == -1 then
            change = i
            i +=  2
        else
            if answer < (i - i_start + 1 + (change == -1 ? 1 : 0)) then
                answer = (i - i_start + 1 + (change == -1 ? 1 : 0)) < str.length ? (i - i_start + 1 + (change == -1 ? 1 : 0)) : str.length
            end
            if i < str.length - 1 then
                i_start = (change == -1) ? i : change
                change = -1
                i = i_start + 1
                diff = str[i_start] - str[i]
            else
                i += 1
            end
        end
    end
    puts "Case ##{nbTest}: #{answer}"
end

nbTests = gets.chomp.to_i
cptTest = 1
while cptTest <= nbTests
    solve(cptTest)
    cptTest += 1
end