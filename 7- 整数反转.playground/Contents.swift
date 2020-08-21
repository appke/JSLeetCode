let a = 123
let b = -123
let c = 120
let d = 1534236469

//Math.pow(2, 31)
//pow(3, 3)

Int32.max
Int32.min

// 2147483648
//if rev > Int32.max || rev < Int32.min {
//    return 0
//}
func reverse(_ x: Int) -> Int {
    
    let str = "\(abs(x))"
    let revStr = String(str.reversed())
    let num = Int(revStr)!
    
    let best = 2147483648
    
    if x>0 && num < best {
        return num
    } else if x<0  && num <= best {
        return -num;
    } else {
        return 0
    }
}


print(reverse(a))
print(reverse(b))
print(reverse(c))
print(reverse(d))


