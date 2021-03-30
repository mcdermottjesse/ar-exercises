require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue is #{total_revenue}"

revenue_average = Store.average(:annual_revenue)
puts "The revenue average is #{revenue_average}"

stores = Store.where(annual_revenue: 1000000..Float::INFINITY).size
puts "Number of stores generating $1M or more are #{stores} stores"