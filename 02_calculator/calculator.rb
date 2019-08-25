#write your code here

def add m, n
    m + n
end

def subtract m, n
    m - n
end

def sum arr
    result = 0
    arr.each { |num| result += num }
    result
end

def multiply m, n, *rest
    result = m * n
    rest.each { |num| result *= num }
    result
end

def power m, n
    result = 1
    n.times do
        result *= m
    end
    result
end

def factorial n
    if n < 2
        return 1
    end

    n * factorial(n - 1)
end
