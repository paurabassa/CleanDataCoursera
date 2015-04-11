The "clean-data.txt" is derived from the "Human Activity Recognition Using Smartphones Dataset" available at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original experiments were carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. Each person performed six 
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration 
and 3-axial angular velocity at a constant rate of 50Hz were captured. 
The experiments were video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying 
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50
% overlap (128 readings/window). The sensor acceleration signal, which has gravi
tational and body motion components, was separated using a Butterworth low-pass 
filter into body acceleration and gravity. The gravitational force is assumed to
 have only low frequency components, therefore a filter with 0.3 Hz cutoff frequ
ency was used. From each window, a vector of features was obtained by calculatin
g variables from the time and frequency domain. See 'features_info.txt' for more
 details. 



The first column of the "clean-data.txt" contains the subject ID from the experiment, the second colums contains the activity label. The remainder of variables correspond to the average of mean and std of the original time and frequency domain variables. See 'features_info.txt' for more details in the original data set for more details on these variables. 


