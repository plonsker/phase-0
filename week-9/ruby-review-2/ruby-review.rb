# Introduction to Inheritance

# I worked on this challenge by myself.


# Pseudocode
# Create two classes, GlobalCohort and LocalCorhort for 
# Chrous Frogs, with attributes that apply to all memeber placed
# in GlobalCohort and specific attributes to LocalCohort.

#LocalCohort will be made to reflect NYC. Therefore, the attribute/method
#'city' will print out 'NYC'.
#Since all students belong to the GlobalCohort, 'students' will be defined
#within LocalCohort
#All Cohort members start phase 0 at the same time, so method p0_start_date will belong
#to global cohort. The immersive start date and graduation date are likely unique to local
#cohorts due to the logistical constraints at each unique campus. 
#Taking logistical contraints back into consideration, some attributes belong to the global
#cohort but can be overridden if need be in local cohorts. These are email_list and num_of_students.

#Methods to alter student enrollment and check graduation will remain particular to local cohorts. 


# Initial Solution
#initial solution to see if LocalCohort inherits from GlobalCohort while also overriding
#particular methods.  

# class GlobalCohort
#   def cohort_name
#   	puts 'Chorus Frogs 2016!'
#   end

#   def students(student_list)
#   	@student_list = student_list
#   	puts '#{student_list}'
#   end

#   def p0_start_date
#   	puts 'P0 start date was October 19th, 2015'
#   end

#   def email_list
#   	puts 'Students are on the Chorus Frogs 2016 listserv.'
#   end

#   def num_of_students
#   	puts 'There are approx 50 students in the cohort group.'
#   end

# end

# class LocalCohort < GlobalCohort
#   #your code here
#   def immersive_start_date
#   	puts 'NYC students begin their immersive onsite on December 28th, 2015.'
#   end

#   def graduation_date
#   	puts 'NYC students will graduate March 4th, 2015'
#   end

#   def email_list_nyc
#   	puts 'These students are on a list for NYC students'
#   end

#   def num_of_students
#   	puts 'There are approx 16 people in the NYC Chorus Frogs group. '
#   end


# end


# # Refactored Solution
# # Time to see if the more active methods work.


# class GlobalCohort
#   def cohort_name
#     puts 'Chorus Frogs 2016!'
#   end

#   def students(student_list)
#     @student_list = student_list
#     puts '#{student_list}'
#   end

#   def p0_start_date
#     puts 'P0 start date was October 19th, 2015'
#   end

#   def email_list
#     puts 'Students are on the Chorus Frogs 2016 listserv.'
#   end

#   def num_of_students
#     puts 'There are approx 50 students in the cohort group.'
#   end

# end

# class LocalCohort < GlobalCohort
#   #your code here
#   def immersive_start_date
#     puts 'NYC students begin their immersive onsite on December 28th, 2015.'
#   end

#   def graduation_date
#     puts 'NYC students will graduate March 4th, 2015'
#   end

#   def email_list_nyc
#     puts 'These students are on a list for NYC students'
#   end

#   def num_of_students
#     puts 'There are approx 16 people in the NYC Chorus Frogs group. '
#   end


# end


# Refactored Solution
# Time to see if the more active methods work.

class GlobalCohort
  def cohort_name
    puts 'Chorus Frogs 2016!'
  end

  def students(student_list)
    @student_list = student_list
    puts student_list
  end

  def p0_start_date
    puts 'P0 start date was October 19th, 2015'
  end

  def email_list
    puts 'Students are on the Chorus Frogs 2016 listserv.'
  end

  def num_of_students
    puts 'There are approx 50 students in the cohort group.'
  end

end

class LocalCohort < GlobalCohort
  #your code here
  def initialize
    require 'date'
    @on_site_start = Date.parse('28-12-2015')
    @gradutaion_date = Date.parse('08-03-2015')
  end

  def immersive_start_date
    puts 'NYC students begin their immersive onsite on December 28th, 2015.'
  end

  def graduation_date
    puts 'NYC students will graduate March 4th, 2015'
  end

  def email_list_nyc
    puts 'These students are on a list for NYC students'
  end

  def num_of_students
    puts 'There are approx 16 people in the NYC Chorus Frogs group. '
  end
  
  def add_student(student_list, new_student)
    student_list.push(new_student)
    puts new_student + ' added to NYC Chorus Frogs!'
  end

  def remove_student(student_list, departing_student)
    if student_list.include?(departing_student)
      student_list.delete(departing_student)
      puts departing_student + ' removed from cohort.'
    else
      puts 'Student not found.'
    end
  end

  def currently_in_phase(student)
    puts 'Today is:'
    puts Date.today
    if Date.today < @on_site_start
      puts student + ' is still in phase 0.'
    elsif Date.today >= @on_site_start && Date.today < @graduation_date
      puts student + ' is currently on-site'
    else
      puts 'There has been an error'
    end
  end




end

frogs = LocalCohort.new
student_list = ['Joe', 'Luis', 'Zollie', 'Falstaff']
new_student = 'Sam'
departing_student = 'Falstaff'
student = 'Joe'

frogs.cohort_name
frogs.students(student_list)
frogs.p0_start_date
frogs.email_list
frogs.num_of_students
frogs.immersive_start_date
frogs.graduation_date
frogs.email_list_nyc
frogs.num_of_students
frogs.add_student(student_list, new_student)
frogs.remove_student(student_list, departing_student)
frogs.currently_in_phase(student)






# Reflection
# What concepts did you review in this challenge?
# I reviewed classes and creating new instances of classes. Also reviewied inheritance,
# which I had read about a while ago but was a bit fuzzy on. I had forgotten I could have methods
# of the same name in each class and have one override the other. I did this by having two different
# methods related to listervs of the same name in each class, and the LocalCohort one overrode the GlobalCohort
# method. Eventually I brought the fun to the end and put the studens on two listervs, one for the whole cohort
# and one just for NYC. 

# What is still confusing to you about Ruby?
# Probably accessors, which I did not use here but thought about them. 

# What are you going to study to get more prepared for Phase 1?
#Read up on the different ways classes can swap info back and forth to each other beyond inheritance, since
#inheritance is mostly a one-way street here. 