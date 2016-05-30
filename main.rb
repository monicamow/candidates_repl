# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'


# # TASK 2
# pp experienced?(@candidates[0])

# # TASK 3
# pp find(5)
# pp find(100)

# #TASK 4
# pp qualified_candidates(@candidates)

# # TASK 5
# pp ordered_by_qualifications(@candidates)

# # TASK 6
# find_a_candidate

# EXCEPTIONS

#puts find(@candidates) -- requires you to turn off the require for ./candidates
#puts experienced?(@candidates[0]) -- requires you to delete years_of_experience key from candidate index 0

class StringIntoIntegerError < StandardError
end

# find method that raises custom error
def find(id) 
  unless id.is_a? Integer 
    raise StringIntoIntegerError, "you must type a number, not a word"
  end

  candidate[:id] == id 

  rescue StringIntoIntegerError => my_exception
    puts "An error of type #{my_exception.class} occurred."
    puts "Message is: #{my_exception.message}."
    puts "The issue comes from #{my_exception.backtrace.inspect}."

end

find("two")

