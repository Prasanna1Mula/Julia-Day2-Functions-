function add(x,y)
    x + y 
end 
println("Addition: ", add(5,3) )

function subtract(x,y)
    x - y
end
println("Subtraction: ", subtract(7,3))

function factorial(n)
    n <= 1 ? 1 : n*factorial(n-1)
end 
println("Factorial: ", factorial(5))

function is_even(n)
    return n % 2 == 0 
end
println("if even: ", is_even(4))

# To check if a number is prime or not 
function is_prime(n) 
    n <= 1 && return false 
    for i in 2:sqrt(n)
        if n % i == 0 
            return false 
        end
    end 
return true 
end 
println("Is 9 prime? ", is_prime(9))

function circle_area(radius)
    return 3.14*radius^2
end
println("Area: ", circle_area(4))

function hypot(x,y)
    x = abs(x)
    y = abs(y)
    if x>y 
        r = y/x 
        return x*sqrt(1 + r*r)
    end 
    if y == 0
        return zero(x)
    end 
    r = x/y 
    return y*sqrt(1 + r*r)
end 
println("Hypotenus: ", hypot(3,4))

# Return Function Example 

function g(x,y)::Int8
    return x*y 
end
println("Muliplication: ", g(4,5))

function (x)
    x^2 + 2x - 1
end 
println("Roots of equation: ", x)

function foo(a,b)
    a+b, a*b
end 
println("The function values are: ", foo(2,3))

using Dates 
function date(y::Int64, m::Int64=1, d::Int64=1)
    err = Dates.validargs(Date, y, m, d)
    err == nothing || throw(err)
    return Date(Dates.UTD(Dates.totaldays(y,m,d)))
end

function plot(x, y; style="solid", width=1, color="black")
end

function f(; x::Int=1)
    ###
end
