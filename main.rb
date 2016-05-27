# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'


# TASK 2
pp experienced?(@candidates[0])

# TASK 3
pp find(5)
pp find(100)

#TASK 4
pp qualified_candidates(@candidates)

# TASK 5
pp ordered_by_qualifications(@candidates)

# TASK 6
find_a_candidate


