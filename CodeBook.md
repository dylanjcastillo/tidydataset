#Data
The original data consisted of 10299 instances with 561 attributes, meaning that each instance was a 561-feature vector with time and frequency domain variables. The resulting data consists of 180 instances with 66 attributes and 2 identifiers.

The 66 measurements express one of these two measures: triaxial acceleration from the accelerometer and the estimated body acceleration or triaxial angular velocity from the gyroscope.

#Transformations of the data


The files X_train.txt, y_train.txt, X_test.txt, y_test.txt, subject_test.txt and subject_train.txt were merged into a single data frame. Then the measurements on the mean and standard deviation for each instance were extracting, dropping the rest. The resulting data frame was arranged by subject and activity and the last step taken was to create another data set with the average of each attribute for each activity and each subject.

#

Variables

## Identifiers

There are 2 indentifiers -SubjectID and Activiy- each serving a specific goal:

* SubjectID: identifier of the subject who carried out the experiment. It takes integer values ranging from 1 up to 30 (both values included).

* Activity: a vector string identifier that express which activity is doing the subject. It takes 6 possible values: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING".
  
##Measurements

There are 66 measurements consisting of:
              

* tBodyAcc.MEAN.X: Average time domain body linear acceleration signal in X-axis. 
* tBodyAcc.MEAN.Y: Average time domain body acceleration signal in Y-axis.           

* tBodyAcc.MEAN.Z: Averagetime domain body linear acceleration signal in Z-axis.            

* tBodyAcc.STDEV.X: Standard Deviation of time domain body linear acceleration signals in X-axis.          

* tBodyAcc.STDEV.Y: Standard Deviation of time domain body linear acceleration signals in Y-axis.          

* tBodyAcc.STDEV.Z: Standard Deviation of time domain body linear acceleration signals in Z-axis.          

* tGravityAcc.MEAN.X: Average time domain gravity linear acceleration  signal in X-axis.         

* tGravityAcc.MEAN.Y: Averagetime domain gravity linear acceleration  signal in Y-axis.        

* tGravityAcc.MEAN.Z: Average time domain gravity linear acceleration  signal in Z-axis.  

* tGravityAcc.STDEV.X: Standard Deviation of time domain gravity linear acceleration signals in X-axis.         

* tGravityAcc.STDEV.Y: Standard Deviation of time domain gravity linear acceleration signals in Y-axis.        
* tGravityAcc.STDEV.Z: Standard Deviation of time domain gravity linear acceleration signals in Z-axis.        

* tBodyAccJerk.MEAN.X: Average time domain body linear acceleration Jerk signal in X-axis.      

* tBodyAccJerk.MEAN.Y: Average time domain body linear acceleration Jerk signal in Y-axis.        

* tBodyAccJerk.MEAN.Z: Average time domain body linear acceleration Jerk signal in Z-axis.        

* tBodyAccJerk.STDEV.X: Standard Deviation of time domain body linear acceleration Jerk signals in X-axis.      

* tBodyAccJerk.STDEV.Y: Standard Deviation of time domain body linear acceleration Jerk signals in Y-axis.       

* tBodyAccJerk.STDEV.Z: Standard Deviation of time domain body linear acceleration Jerk signals in Z-axis.      

* tBodyGyro.MEAN.X: Average time domain body angular velocity signal in X-axis.            

* tBodyGyro.MEAN.Y: Average time domain body angular velocity signal in Y-axis.      

* tBodyGyro.MEAN.Z: Average time domain body angular velocity signal in Z-axis.           

* tBodyGyro.STDEV.X: Standard Deviation of time domain body angular velocity signals in X-axis.           

* tBodyGyro.STDEV.Y: Standard Deviation of time domain body angular velocity signals in Y-axis.             

* tBodyGyro.STDEV.Z: Standard Deviation of time domain body angular velocity signals in Z-axis.            
* tBodyGyroJerk.MEAN.X: Average time domain body angular velocity Jerk signal in X-axis.        

* tBodyGyroJerk.MEAN.Y: Average time domain body angular velocity Jerk signal in Y-axis.      

* tBodyGyroJerk.MEAN.Z: Average time domain body angular velocity Jerk signal in Z-axis.       

* tBodyGyroJerk.STDEV.X: Average time domain body angular velocity Jerk signal in X-axis.     

* tBodyGyroJerk.STDEV.Y: Standard Deviation of time domain body angular velocity Jerk signal in Y-axis.      

* tBodyGyroJerk.STDEV.Z: Standard Deviation of time domain body angular velocity Jerk signal in Z-axis.     

* tBodyAccMag.MEAN: Average magnitude of time domain body linear acceleration three-dimensional signal.         

* tBodyAccMag.STDEV: Standard Deviation of the magnitude of time domain body linear acceleration three-dimensional signals.         

* tGravityAccMag.MEAN: Average magnitude of time domain gravity linear acceleration three-dimensional signal.         

* tGravityAccMag.STDEV: Standard Deviation of the magnitude of time domain gravity linear acceleration three-dimensional signals.      

* tBodyAccJerkMag.MEAN: Average magnitude of time domain body linear acceleration three-dimensional Jerk signal.       

* tBodyAccJerkMag.STDEV: Standard Deviation of the magnitude of time domain body linear acceleration three-dimensional Jerk signals.     

* tBodyGyroMag.MEAN: Average magnitude of time domain body angular velocity three-dimensional signal.           

* tBodyGyroMag.STDEV: Standard Deviation of the magnitude of time domain body angular velocity three-dimensional signal.        

* tBodyGyroJerkMag.MEAN: Average magnitude of time domain body angular velocity three-dimensional Jerk signal.      

* tBodyGyroJerkMag.STDEV: Standard Deviation of the magnitude of time domain body angular velocity three-dimensional Jerk signals.    

* fBodyAcc.MEAN.X: Average frequency domain body linear acceleration signal in X-axis.             

* fBodyAcc.MEAN.Y: Average frequency domain body linear acceleration signal in Y-axis.           

* fBodyAcc.MEAN.Z: Average frequency domain body linear acceleration signal in Z-axis.
* fBodyAcc.STDEV.X: Standard Deviation of frequency domain body linear acceleration signals in X-axis.           

* fBodyAcc.STDEV.Y: Standard Deviation of frequency domain body linear acceleration signals in Y-axis.           

* fBodyAcc.STDEV.Z: Standard Deviation of frequency domain body linear acceleration signals in Z-axis.           

* fBodyAccJerk.MEAN.X: Average frequency domain body linear acceleration Jerk signal in X-axis.        

* fBodyAccJerk.MEAN.Y: Average frequency domain body linear acceleration Jerk signal in Y-axis.       

* fBodyAccJerk.MEAN.Z: Average frequency domain body linear acceleration Jerk signal in Z-axis.        

* fBodyAccJerk.STDEV.X: Standard Deviation of frequency domain body linear acceleration Jerk signals in X-axis.        

* fBodyAccJerk.STDEV.Y: Standard Deviation of frequency domain body linear acceleration Jerk signals in Y-axis.         

* fBodyAccJerk.STDEV.Z: Standard Deviation of frequency domain body linear acceleration Jerk signals in Z-axis.        

* fBodyGyro.MEAN.X: Average frequency domain body angular velocity signal in X-axis.           

* fBodyGyro.MEAN.Y: Average frequency domain body angular velocity signal in Y-axis.          

* fBodyGyro.MEAN.Z: Average frequency domain body angular velocity signal in Z-axis.           

* fBodyGyro.STDEV.X: Standard Deviation of frequency domain body angular velocity signals in X-axis.         

* fBodyGyro.STDEV.Y: Standard Deviation of frequency domain body angular velocity signals in Y-axis.          

* fBodyGyro.STDEV.Z: Standard Deviation of frequency domain body angular velocity signals in Z-axis.         

* fBodyAccMag.MEAN: Average magnitude of frequency domain body linear acceleration three-dimensional signal.           

* fBodyAccMag.STDEV: Standard Deviation of the magnitude of frequency domain body linear acceleration three-dimensional signal.          

* fBodyBodyAccJerkMag.MEAN: Average magnitude of frequency domain body linear acceleration three-dimensional Jerk signal.     

* fBodyBodyAccJerkMag.STDEV: Standard Deviation of the magnitude of frequency domain body linear acceleration three-dimensional Jerk signal.
* fBodyBodyGyroMag.MEAN: Average magnitude of frequency domain body angular velocity three-dimensional signal.        

* fBodyBodyGyroMag.STDEV: Standard Deviation of the magnitude of frequency domain body angular velocity three-dimensional signal.    

* fBodyBodyGyroJerkMag.MEAN: Average magnitude of frequency domain body angular velocity three-dimensional Jerk signal.  
* fBodyBodyGyroJerkMag.STDEV: Standard Deviation of the magnitude of frequency domain body angular velocity three-dimensional Jerk signal.
