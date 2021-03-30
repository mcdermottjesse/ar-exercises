require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Tommy", last_name: "Lee", hourly_rate: 80)
@store1.employees.create(first_name: "Pam", last_name: "Anderson", hourly_rate: 85)

@store2.employees.create(first_name: "Sebastion", last_name: "Bach", hourly_rate: 55)
@store2.employees.create(first_name: "Tiggy", last_name: "McD", hourly_rate: 60)
@store2.employees.create(first_name: "James", last_name: "Brown", hourly_rate: 70)

employee_table = Employee.all

p employee_table
