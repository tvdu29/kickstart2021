nbTests = gets.chomp.to_i
cptTest = 1
while cptTest <= nbTests
    meta = gets.chomp.split(" ").map!{|nb| nb.to_i}
    i = 0
    grid = Array.new(meta[0])
    while i < meta[0]
        grid[i] = gets.chomp.split(" ").map!{|nb| nb.to_i}
        i += 1
    end
    answer = 0
    max = 0
    
    x = 0
    while y < meta[0]
        while x < meta[1]
            if y == 0 && x + 1 < meta[1] && grid[y][x] - grid[y][x + 1] > 1
                answer += grid[y][x] - grid[y][x + 1] - 1
                grid[y][x + 1] += grid[y][x] - grid[y][x + 1] - 1
            elsif y == 0 && x == 0 && grid[y][x] - grid[y][x + 1] < -1
                answer += grid[y][x + 1] - grid[y][x] - 1
                grid[y][x] += grid[y][x] - grid[y][x + 1] - 1
            end
            if y + 1 < meta[0] && grid[x]

            end
            x += 1
        end
        y += 1
    end
    puts "Case ##{cptTest}: #{answer}"
    cptTest += 1
end