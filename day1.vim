let lines = readfile(argv(0))

let pos = 50
let part1 = 0
let part2 = 0

for line in lines
    if line ==# ''
        continue
    endif

    let dir = line[0]
    let dist = str2nr(line[1:])

    if dir ==# 'L'
        let step = -1
    else
        let step = 1
    endif

    for i in range(dist)
        let pos = (pos + step) % 100
        if pos < 0
            let pos += 100
        endif

        if pos == 0
            let part2 += 1
        endif
    endfor

    if pos == 0
        let part1 += 1
    endif
endfor

echo "Part 1: " . part1
echo "Part 2: " . part2
