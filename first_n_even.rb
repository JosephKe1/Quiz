require 'benchmark'

def even_loop(n)
  i = 0
  for i in 0.upto(2*n)
    i += 1
    if i % 2 == 0
    i
    end
  end
end

# even_loop(10)

def even_recursive(n,i=0)
  n==0? nil : i%2 == 0 ?  even_recursive(n-1,i+1).to_a << i : even_recursive(n,i+1)
end

# even_recursive(10)

Benchmark.bm do |x|
  x.report do
    1_000_000.times { even_loop(10) }
  end
  x.report do
    1_000_000.times { even_recursive(10) }
  end
end


# Loop is faster
