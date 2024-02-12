#Sachin Karki #BDS 723: Statistical Programming with R, Homework 1

#1.Create a vector ages with ages of individuals (30, 50, 70, 7, 19, 25, 30, 22). Then use the ages vector to create a logical vector indicating whether each individual is eligible to vote (age 18 or older).

ages <- c(30, 50, 70, 7, 19, 25, 30, 22) #this creates the vector ages with all the ages listed above
voting <- ages>=18 #this sets up a condition that makes the age eligible to vote more than or equal to 18
voting #returns our vector with logic if the listed age group are eligible to vote or not.

#2.Apply the sum function to the following logical vector: c(TRUE, FALSE, TRUE). What does the result tell you about how R treats logical values in arithmetic contexts?

a <- c(TRUE, FALSE, TRUE) # assigns values to vector 'a'
sum(a) #this applies sum function

# So, it looks like R treats logical values as numbers in arithmetic context. True equals to 1 and False equals to 0 and our result is 2, i.e. 1+0+1 = 2.
  
#3.Given x <- c(3, 7, 10, 5), create a logical vector is_even indicating whether each element in x is an even number (hint: check out the operator %%).

x <- c(3, 7, 10, 5) #assigns value to vector x
is_even <- x %% 2 == 0 #sets up condition to check if values are even
is_even #prints out the result

#4.Create a vector named pattern_rep by repeating the sequence 1, 2, 3, 4 three times, and then use the seq function to generate a vector from 1 to the length of pattern_rep.

pattern_rep <- rep(c(1,2,3,4), times = 3) #creates the required vector
pattern_rep #prints the result

new_vector <- seq(1, length(pattern_rep)) #creates a new vector from the length of previous vector
new_vector #prints the result

#5.Generate a vector named nested_pattern by repeating the pattern “a”, “b”, “c” five times, and then use the rep function to repeat the vector three times.

nested_pattern <- rep(c("a","b","c"), times = 5) #creates our first vector to repeat the a,b,c pattern 5 times
nested_pattern

rep_fucntion <- rep(nested_pattern, times=3) #new vector to apply rep function and repeat our vector 3 times
rep_fucntion #prints out the new vector

#6.Given vectors students <- c("Alice", "Bob", "Charlie", "David", "Eve") and their corresponding grades <- c(92, 78, 85, 92, 78), use the which function to find the indices of students who scored above 80 in the grades vector. Print the names of those students.

students <- c("Alice", "Bob", "Charlie", "David", "Eve") #creates students vector
grades <- c(92, 78, 85, 92, 78) #creates grades vector
names(grades) <- students #assigns grades to the student
grades #prints out student names with their respective score
score_above_eighty <- which(grades > 80) #using which function to see students scoring above 80
score_above_eighty #prints the result


#7.Given vectors all_students <- c("Alice", "Bob", "Charlie", "David", "Eve") and selected_students <- c("Bob", "Eve", "Grace"), create a logical vector that indicates whether each student in all_students is in the selected_students vector.

all_students <- c("Alice", "Bob", "Charlie", "David", "Eve") #creates our 1st vector
selected_students <- c("Bob", "Eve", "Grace") #creates our 2nd vector
logical_vector <- all_students %in% selected_students #checks if the names in 1st vector is in 2nd vector
logical_vector #prints our result

#8.Given a vector y <- c(1, 2, 5, 7, 9, 12, 56, 89), show four approaches using functions we covered in class to find the maximum number of this vector.
y <- c(1, 2, 5, 7, 9, 12, 56, 89)
max (y) #approach 1, using max function to find out the highest number in the vector

y_summary <- summary(y)
y_summary #approach 2, using summary function to get statistical summary of the vector

y_range <- range(y)
y_range #approach 3, using range function to find minimum and maximum number in the vector

descending_order <- sort(y, decreasing = TRUE)
descending_order #approach 4, using sort function to arrange numbers by descending order; the highest number in the vector gets displayed at the first 
