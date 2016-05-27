# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'
require 'pry'


#TASK 2
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# TASK 3
def find(id)
  @candidates.detect do |candidate| 
    candidate[:id] == id 
  end
end

# More methods will go below

def experienced(candidate)
    candidate[:years_of_experience] > 0 
end

def github_points(candidate)
    candidate[:github_points] > 100 
end

def languages(candidate) #check ||
    candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
end

def date_applied(candidate)
    candidate[:date_applied] >= 15.days.ago.to_date
end

def age(candidate)
    candidate[:age] > 17
end

# TASK 4
def qualified_candidates(data)
  data.select do |candidate| 
    experienced(candidate) && \
    github_points(candidate) && \
    languages(candidate) && \
    date_applied(candidate) && \
    age(candidate)
  end
end

#pp qualified_candidates(@candidates)

# TASK 5
def ordered_by_qualifications(data)
  data.sort_by { |attribute| [-attribute[:years_of_experience], -attribute[:github_points]] }
end

def print_all
  @candidates.each { |candidate| p candidate }
end

# TASK 6 REPL
def find_a_candidate
  finding = true
  # MENU
  puts "To find a candidate... \
  \n-type 'find _' to find candidate by ID (must be integer) \
  \n-type 'all' to print all candidates to screen \
  \n-type 'qualified' to print only qualified candidates, \
  \n ordered by experience and points \
  \n-type 'quit' to exit this menu"

  while finding do

    input = gets.chomp.downcase.strip

    case input

    when /find\s\d/ # find candidate with id
      pp find(input.gsub(/find\s/, "").to_i)
    when "all" # print all candidates
      print_all
    when "qualified" # print qualified candidates ordered by experience & points
      qualified = qualified_candidates(@candidates)
      pp ordered_qualified = ordered_by_qualifications(qualified)
    when "quit" # quit the program
      finding = false
    else
      puts "Does not compute." # anything else thrown in 
    end

  end

end

