let line = readfile(argv(0))[0]
let ranges = split(line, ',')
let part1_rx = '^\(.\+\)\1$'
let part2_rx = '^\(.\+\)\1\+$'

let sum1 = 0
let sum2 = 0

for r in ranges
    if empty(r)
        continue
    endif

    let parts = split(r, '-')
    let a = str2nr(parts[0])
    let b = str2nr(parts[1])

    for n in range(a, b)
        let s = string(n)

        if s =~# part1_rx
            let sum1 += n
        endif

        if s =~# part2_rx
            let sum2 += n
        endif
    endfor
endfor

echo "Part 1: " . sum1
echo "Part 2: " . sum2
