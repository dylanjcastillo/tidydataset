#run_analysis.R

This script was designed to download, extract, tidy up and summarize part of the "Human Activity Recognition Using Smartphones Dataset Version 1.0" made by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto. 

#How it works

1. Check if the dataset already exists and if it doesn't, download it
2. Read the data from .zip and create different data frames from it
3. Create one dataframe with all the relevant data
4. Add appropiate names for variables in header
5. Replace activity id numbers with the appropiate labels
6. Order data according to: 1. SubjectID and 2. Activity
7. Create output table "tidyData" and give header a more legible format
8. Calculate mean for each subject and activity and write to tidyData

#Variables

There are 66 measurements expressing means or standard deviations of different values and 2 identifiers expressing the subject id and which activity he's performing. More information of this is available in the CodeBook.md found in this repository.

#Credits

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
