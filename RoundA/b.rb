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
    x = 0
    while x < meta[1]
        y = 0
        while y < meta[0]
            if grid[y][x] == 1 then
                nbUp = 1
                stopUp = 0
                nbDown = 1
                stopDown = 0
                nbLeft = 1
                stopLeft = 0
                nbRight = 1
                stopRight = 0
                i = 1
                while (stopUp.zero? || stopDown.zero? || stopLeft.zero? || stopRight.zero?) && (y - i >= 0 && grid[y - i][x] == 1 || y + i < meta[0] && grid[y + i][x] == 1 || x - i >= 0 && grid[y][x - i] == 1 || x + i < meta[1] && grid[y][x + i] == 1)
                    if y - i >= 0 && grid[y - i][x] == 1 && stopUp.zero? then
                        nbUp += 1
                    elsif y - i >= 0 && grid[y - i][x] == 0 then
                        stopUp = 1
                    end
                    if y + i < meta[0] && grid[y + i][x] == 1 && stopDown.zero? then
                        nbDown += 1
                    elsif y + i < meta[0] && grid[y + i][x] == 0 then
                        stopDown = 1
                    end
                    if x - i >= 0 && grid[y][x - i] == 1 && stopLeft.zero? then
                        nbLeft += 1
                    elsif x - i >= 0 && grid[y][x - i] == 0 then
                        stopLeft = 1
                    end
                    if x + i < meta[1] && grid[y][x + i] == 1 && stopRight.zero? then
                        nbRight += 1
                    elsif x + i < meta[1] && grid[y][x + i] == 0 then
                        stopRight = 1
                    end
#                    puts "loop: #{i}, u#{stopUp} d#{stopDown} l#{stopLeft} r#{stopRight}"
                    i += 1
                end
#                puts "[#{y},#{x}]: up: #{nbUp}, down: #{nbDown}, left: #{nbLeft}, right: #{nbRight}"
                i = 2
                while i <= nbUp || i <= nbDown || i <= nbLeft || i <=nbRight
                    if i <= nbUp then
                        answer += 1 if nbRight >= i * 2
                        answer += 1 if nbLeft >= i * 2  
                    end
                    if i <= nbRight
                        answer += 1 if nbUp >= i * 2
                        answer += 1 if nbDown >= i * 2
                    end
                    if i <= nbDown then
                        answer += 1 if nbRight >= i * 2
                        answer += 1 if nbLeft >= i * 2  
                    end
                    if i <= nbLeft
                        answer += 1 if nbUp >= i * 2
                        answer += 1 if nbDown >= i * 2
                    end
                    i += 1
                end
            end
            y += 1
        end
        x += 1
    end
    puts "Case ##{cptTest}: #{answer}"
    cptTest += 1
end