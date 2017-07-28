
test "a++"
    2 = (set a 1; let a++; echo $a)
end

test "a--"
    0 = (set a 1; let a--; echo $a)
end

test "a+=3"
    4 = (set a 1; let a+=3; echo $a)
end

test "a-=3"
    -2 = (set a 1; let a-=3; echo $a)
end

test "a=a%3"
    1 = (set a 1; let a+=3; let a=$a%3; echo $a) 
end

test "a=(1+2)*3"
    9 = (set a; let a='(1+2)*3'; echo $a)
end
