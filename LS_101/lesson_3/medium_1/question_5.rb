=begin

Question
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator,
A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
How would you fix this so that it works?
=end

Answer:
fib method is defined after the limit making the limit out of its scope.
fib method does not have access to local variables outside of its scope.

You can add limit as an argument to definition of fib method-and pass it when you call fib.