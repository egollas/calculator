# first we get user inputs for our variables
# and convert them to Floats (they'll initially be strings).
puts "Please enter the cost of your meal (e.g., 22.45): $ "
meal_cost = Float(gets)
puts "Please enter tax rate as a percentage (e.g., 12.5 or 15): "
tax_percent = Float(gets)
puts "Please enter the number of people in your party"
people_party = Float(gets)
puts "Please the tip percentage you'd like to leave (e.g., 18): "
tip_percent = Float(gets)



tax_value = meal_cost * tax_percent/100
meal_with_tax = meal_cost + tax_value
tip_value = meal_cost * tip_percent/100
total_cost = meal_with_tax + tip_value
total_each = total_cost / people_party

print "The pre-tax cost of your meal was $%.2f.\n" % meal_cost
print "At #{tax_percent}, tax for this meal is $%.2f.\n" % [tax_value]
print "For a #{tip_percent} tip, you should leave $%.2f.\n" % [tip_value]
print "The grand total for this meal is then $%.2f.\n" % total_cost
print "The total for each person is $%.2f.\n" % [total_each]
