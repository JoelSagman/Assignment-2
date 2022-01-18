# Part 1

# 1. A regular save rewrite the current version of the file. 
#To commit something with Git is similar to saving but it allows for version control tracking.
#Each commit acts as a record the can be gone back too or used to restore work
#Branching allows for two separate commit history to exist in parallel.
#This branched versions can then be merge into the same commit file. 

# 2. Commits through Git allow for version control which can be shared with other users.
#It is also an easy way to track changes.

# 3. .gitignore contains files that Git has been told by the user to ignore. 
#This includes any the user does not committed into the GitHub repository.
#This means it will not show up in the official version.

# 4. You would 'push' our official version of containing your Git files to GitHub 
#and 'pull' changes from GitHub to synchronize with your version.

# 5. Git a version control program allowing for commits 
#is a local repository where GitHub is an online repository where
#files can be pushed and pulled from. This allows for multiple people to work on
#the same git repository


# 6. @JoelSagman

#Part 2 
#Kayal, Mohsen; Adjeroud, Mehdi (2022), Data from: 
# the war of corals: patterns, drivers, and implications 
#of changing coral competitive performances across reef environments, 
#Dryad, Dataset, https://doi.org/10.5061/dryad.98sf7m0kn

#Note - I could not figure out how to change the latitude and longitude into a format that would import into R
# I remove them from the data set



CorData<-read.csv("Data_TheWarOfCorals.csv") # import data set from project
str(CorData) # examine structure of variables
library(ggplot2)

# 1.
qplot(x=Depth, data=CorData, binwidth=0.5) # quick frequency plot of depth in meters to examine the variable

# 2. 


print(BarPlot)
            
# 3. 
qplot(data=CorData, x=InvolvedPerim, y=mDcomp, colour=MorphoCoral, geom="boxplot")

# 4. 
(BarPlot<-ggplot(CorData, aes(x=log(mDcomp), y=log(InvolvedPerim))) +
  geom_point(aes(col=GenusComp, size=Depth, alpha=I(0.3))) +
  labs(y="Perimeter involved in competition (in cm)", 
       x="Focal coral mean three-dimensional diameter (in cm)",
       colour="Competitor Genus",
       caption = "Source: midwest") + 
  theme_bw())
  
# 5.



