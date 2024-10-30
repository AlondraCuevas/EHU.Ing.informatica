#Talking Data Starter Code

#Part 2 Setting up the program
import pandas as pd
import matplotlib.pyplot as plt

pd.set_option('display.max_columns', None)
pd.set_option('max_colwidth', None)

movieData = pd.read_csv('./rotten_tomatoes_movies.csv')

#print my 3 favorite movies
audience_rating = "audience_rating"
favMovie1 = "Gone With the Wind"
favMovie2 = "The Godfather"
favMovie3 = "La La Land"
print("My favorite movies are: ")
print(favMovie1)
print(favMovie2)
print(favMovie3)
print("------------------------")


#Part 3 Investigate the data
#print(movieData.head()) it is to the firrst five rows
#print(movieData["movie_title"]) to show the column movie_title


#Part 4 Filter data
print("\nThe data for my favorite movies are:\n")
print("\n")
#Create a new variable to store your favorite movie information
favMovieBooleanList1 = movieData["movie_title"] == favMovie1
#print(favMovieBooleanList)
favMovieData1 = movieData.loc[favMovieBooleanList1]
print(favMovieData1)
print("------------------")

favMovieBooleanList2 = movieData["movie_title"] == favMovie2
favMovieData2 = movieData.loc[favMovieBooleanList2]
print(favMovieData1)
print("--------------------")

favMovieBooleanList3 = movieData["movie_title"] == favMovie3
favMovieData3 = movieData.loc[favMovieBooleanList3]
print(favMovieData3)
print("----------")


#Create a new variable to store a new data set with a certain genre
classicsMovieBooleanList = movieData["genres"].str.contains("Classics")
classicsMovieData = movieData.loc[classicsMovieBooleanList]
numOfMovies1 = classicsMovieData.shape[0] #this line of code gives num of rows

dramaMovieBooleanList = movieData["genres"].str.contains("Drama")
dramaMovieData = movieData.loc[dramaMovieBooleanList]
numOfMovies2 = dramaMovieData.shape[0]

print("We will be comparing " + favMovie1 + favMovie2 +  favMovie3 + " to other movies under the genres Classics and Drama in the data set.\n")
print("There are " + str(numOfMovies1) + " movies under the category [Classics].")
print("There are " + str(numOfMovies2) + " movies under the category [Drama].")
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
input("Press enter to see more information about how " + favMovie1 +
      " compares to other movies in the genre classics.\n")

input("Press enter to see data visualizations.\n")

#Part 6 Create graphs
#Create histogram
plt.hist(classicsMovieData["audience_rating"], range = (0, 100), bins = 20 ) #method to create a histogram, each bin will represent a spread of 5

#Adds labels and adjusts histogram
plt.grid(True)
plt.title("Audience ratings of classics movies histogram")
plt.xlabel("audience ratings")
plt.ylabel("number of classic movies")

#Prints interpretation of histogram
print(
  "According to the histogram, the range of ratings that has most movies is from 85 to 90, and there are about 245 movies in those ratings  "
)
print("Close the graph by pressing the 'X' in the top right corner.")
print()

#Show histogram
plt.show()

#histogram 2

input("Press enter to see more information about how " + favMovie2 + favMovie3 +
      " compares to other movies in the genre drama.\n")

plt.hist(dramaMovieData["audience_rating"], range = (0, 100), bins = 20)
plt.grid(True)
plt.title("Audience ratings of drama movies histogram")
plt.xlabel("audience ratings")
plt.ylabel("number of drama movies")
print(
  "According to the histogram, the range of ratings that has most movies is from 75 to 80, and there are about 860 movies in those ratings  "
)
print("Close the graph by pressing the 'X' in the top right corner.")
print()
plt.show()



#Create scatterplot
plt.scatter(data = classicsMovieData, x = "audience_rating", y = "critic_rating",)

#Adds labels and adjusts scatterplot
plt.grid(True)
plt.title("Audience rating vs critics ratings")
plt.xlabel("audience rating")
plt.ylabel("critics rating")
plt.xlim(0, 100)
plt.ylim(0, 100)

plt.scatter(data = favMovieData1, x = "audience_rating", y = "critic_rating", label = favMovie1)

plt.legend()
#Prints interpretation of scatterplot
print(
  "According to the scatter plot, the audience rating and the critics ratings have a low positive correlation, and there are outliers where the minimun critics ratings is 0 and the max is 100 "
)
print()

print("Close the graph by pressing the 'X' in the top right corner.")

#Show scatterplot
plt.show()

#scatterplot drama movies
plt.scatter(data = dramaMovieData, x = "audience_rating", y = "critic_rating",)

#Adds labels and adjusts scatterplot
plt.grid(True)
plt.title("Audience rating vs critics ratings in drama movies")
plt.xlabel("audience rating")
plt.ylabel("critics rating")
plt.xlim(0, 100)
plt.ylim(0, 100)

plt.scatter(data = favMovieData2, x = "audience_rating", y = "critic_rating", label = favMovie2)
plt.scatter(data = favMovieData3, x = "audience_rating", y = "critic_rating", label = favMovie3)
plt.legend()

print(
  "According to the scatter plot, the audience rating and the critics ratings have a low positive correlation, and there are outliers where the minimun critics ratings is 0 and the max is 100 "
)
print()

print("Close the graph by pressing the 'X' in the top right corner.")

#Show scatterplot
plt.show()

print("\nThank you for reading through my data analysis!")














