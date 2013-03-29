require_relative "models/legislator.rb"

legislator = Legislator.find(10)
p legislator

params = {state: "CA", title: "Rep"}

legislator = Legislator.where("state = :state AND title = :title", 
  {state: params[:state], title: params[:title]})
p legislator

# Given any state, first print out the senators for that state (sorted by last name), 
# then print out the representatives (also sorted by last name). Include the party 
# affiliation next to the name. The output might look something like this:

# Senators:
#   Barbara Boxer (D)
#   Diane Feinstein (D)
# Representatives:
#   Xavier Becerra (D)
#   Howard L. Berman (D)
#   Brian P. Bilbray (R)
#   (... etc., etc., ...)
#   Diane E. Watson (D)
# Given a gender, print out what number and percentage of the senators are of that 
# gender as well as what number and percentage of the representatives, being sure 
# to include only those congresspeople who are actively in office, e.g.:

# Male Senators: 83 (83%)
# Male Representatives: 362 (83%)
# Print out the list of states along with how many active senators and 
# representatives are in each, in descending order (i.e., print out states 
#   with the most congresspeople first).

# CA: 2 Senators, 53 Representative(s)
# TX: 2 Senators, 32 Representative(s)
# NY: 2 Senators, 29 Representative(s)
# (... etc., etc., ...)
# WY: 2 Senators, 1 Representative(s)
# For Senators and Representatives, count the total number of each (regardless 
#   of whether or not they are actively in office).

# Senators: 137
# Representatives: 603
# Now use ActiveRecord to delete from your database any congresspeople who are 
# not actively in office, then re-run your count to make sure that those rows were deleted.

# Senators: 100
# Representatives: 435
