# get list of students from user
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
# print student summary
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# 1. print students with number in front of name
def print(students)
  students.each_with_index do |student,index|
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# 2. prints students whose name begins with certain letter
def print_initial(students)
  puts "List students whose name begins with: "
  user_input = gets.chomp
  puts "Students whose name begins with '#{user_input}': "
  students.each do |student|
    if student[:name].start_with?(user_input)
      puts student[:name]
    end
  end
end
# 3. prints names less than x characters
def print_short(students)
  puts "Find names shorter than how many characters?"
  max_length = gets.chomp.to_i
  students.each do |student|
    if student[:name].length <= max_length
      puts student[:name]
    end
  end
end
# 4. print all students using while or until loop
def printloop(students)
  i = 0
  while i < students.count
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end
# 

students = input_students
# print_header
# print(students)
# print_short(students)
# print_footer(students)
printloop(students)