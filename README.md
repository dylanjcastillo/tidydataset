#run_analysis.R

This script was designed to download, extract, tidy up and summarize part of the "Human Activity Recognition Using Smartphones Dataset Version 1.0" made by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto. 

#How it works

1. Checks if the dataset already exists and if it doesn't, downloads it from the corresponding source
2. Reads the data from .zip and creates different dataframes from it
3. Creates one dataframe with all the relevant data
4. Adds appropiate names for the variables in the header
5. Replaces the activity ID numbers with the appropiate labels
6. Orders the data according to: SubjectID and Activity
7. Creates an output table called *tidyData* and gives the header a more legible format
8. Calculates the mean for each subject and activity and writes it to tidyData

#Variables

There are 66 measurements expressing means or standard deviations of different values and 2 identifiers expressing the subject id and which activity he's performing. More information of this is available in the CodeBook.md found in this repository.

#References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
