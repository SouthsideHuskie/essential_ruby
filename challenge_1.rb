# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator
puts "I'm told you/'re looking to buy a house"
puts "Congrat!"
puts "By answering a few quick questions, I'll be able to estimate your monthly payment."
puts "What is your interest rate in decimals?"
rate=gets.to_f
ratemon=rate/12
puts "Great!  Now, over how many months are you financing?"
nper=gets.to_f
puts "Almost done.  What is the principal you are financing?"
pv=gets.to_f

def pmt(ratemon, nper, pv)

(ratemon * pv * (1+ratemon)**nper)/((1+ratemon)**nper-1)

end

puts "Your monthly payment will be #{pmt(ratemon, nper,pv).round(2)}"

# Example usage of the method:

# puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
