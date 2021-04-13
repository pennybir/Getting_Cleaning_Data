# Getting and cleaning data peer assignment

## Dataset
Dataset used: **Human Recognition Using Smartphones Dataset Version 1.0**
Accessed here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments were carried out with a group of 30 volunteers (19-48 years old). 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain, described in the data dictionary below.

The final summary file contains 180 observations (1 for each subject and activity) and 68 variables, explained below

## Data dictionary

1. subjects : the unique identifier of the subject who carried out the experiment<br/>
<br/>
2. activity: the type of activity performed while measurements were taken<br/>
          1: Walking<br/>
          2: Walking upstairs<br/>
          3: Walking downstairs<br/>
          4: Sitting<br/>
          5: Standing<br/>
          6: Laying<br/>
          <br/>
3. tBodyAcc-mean()-X : mean x-axis raw body acceleration signals from accelerometer<br/>
<br/>
4. tBodyAcc-mean()-Y : mean y-axis raw body acceleration signals from accelerometer<br/>
<br/>
5. tBodyAcc-mean()-Z : mean z-axis raw body acceleration signals from accelerometer<br/>
<br/>
6. tBodyAcc-std()-X : standard deviation of x-axis raw body acceleration signals from accelerometer<br/>
<br/>
7. tBodyAcc-std()-Y : standard deviation of y-axis raw body acceleration signals from accelerometer<br/>
<br/>
8. tBodyAcc-std()-Z : standard deviation of z-axis raw body acceleration signals from accelerometer<br/>
<br/>
9. tGravityAcc-mean()-X : mean x-axis raw gravity acceleration signals from accelerometer<br/>
<br/>
10. tGravityAcc-mean()-Y : mean y-axis raw gravity acceleration signals from accelerometer<br/>
<br/>
11. tGravityAcc-mean()-Z : mean z-axis raw gravity acceleration signals from accelerometer<br/>
<br/>
12. tGravityAcc-std()-X : standard deviation of x-axis raw gravity acceleration signals from accelerometer<br/>
<br/>
13. tGravityAcc-std()-Y : standard deviation of y-axis raw gravity acceleration signals from accelerometer<br/>
<br/>
14. tGravityAcc-std()-Z : standard deviation of z-axis raw gravity acceleration signals from accelerometer<br/>
<br/>
15. tBodyAccJerk-mean()-X : mean x-axis jerk signals of body linear acceleration from accelerometer<br/>
<br/>
16. tBodyAccJerk-mean()-Y : mean y-axis jerk signals of body linear acceleration from accelerometer<br/>
<br/>
17. tBodyAccJerk-mean()-Z : mean z-axis jerk signals of body linear acceleration from accelerometer<br/>
<br/>
18. tBodyAccJerk-std()-X : standard deviation of x-axis jerk signals of body linear acceleration from accelerometer<br/>
<br/>
19. tBodyAccJerk-std()-Y : standard deviation of y-axis jerk signals of body linear acceleration from accelerometer<br/>
<br/>
20. tBodyAccJerk-std()-Z : standard deviation of z-axis jerk signals of body linear acceleration from accelerometer<br/>
<br/>
21. tBodyGyro-mean()-X : mean x-axis raw signals of angular velocity from gyroscope<br/>
<br/>
22. tBodyGyro-mean()-Y : mean y-axis raw signals of angular velocity from gyroscope  <br/>
<br/>
23. tBodyGyro-mean()-Z : mean z-axis raw signals of angular velocity from gyroscope  <br/>
<br/>
24. tBodyGyro-std()-X : standard deviation of x-axis raw signals of angular velocity from gyroscope<br/>
<br/>
25. tBodyGyro-std()-Y : standard deviation of y-axis raw signals of angular velocity from gyroscope<br/>
<br/>
26. tBodyGyro-std()-Z : standard deviation of z-axis raw signals of angular velocity from gyroscope<br/>
<br/>
27. tBodyGyroJerk-mean()-X : mean x-axis jerk signals of angular velocity from gyroscope<br/>
<br/>
28. tBodyGyroJerk-mean()-Y : mean y-axis jerk signals of angular velocity from gyroscope<br/>
<br/>
29. tBodyGyroJerk-mean()-Z : mean z-axis jerk signals of angular velocity from gyroscope<br/>
<br/>
30. tBodyGyroJerk-std()-X : standard deviation of x-axis jerk signals of angular velocity from gyroscope<br/>
<br/>
31. tBodyGyroJerk-std()-Y : standard deviation of y-axis jerk signals of angular velocity from gyroscope<br/>
<br/>
32. tBodyGyroJerk-std()-Z : standard deviation of z-axis jerk signals of angular velocity from gyroscope<br/>
<br/>
33. tBodyAccMag-mean() : mean magnitude of raw body acceleration signals using Euclidean norm<br/>
<br/>
34. tBodyAccMag-std() : standard deviation of magnitude of raw body acceleration signals using Euclidean norm<br/>
<br/>
35. tGravityAccMag-mean() : mean magnitude of raw gravity acceleration signals using Euclidean norm<br/>
<br/>
36. tGravityAccMag-std() : standard deviation of magnitude of raw gravity acceleration signals using Euclidean norm<br/>
<br/>
37. tBodyAccJerkMag-mean() : mean magnitude of jerk body linear acceleration signals using Euclidean norm<br/>
<br/>
38. tBodyAccJerkMag-std() : standard deviation of magnitude of jerk body linear acceleration signals using Euclidean norm<br/>
<br/>
39. tBodyGyroMag-mean() : mean magnitude of raw signals of angular velocity using Euclidean norm<br/>
<br/>
40. tBodyGyroMag-std() : standard deviation of magnitude of raw signals of angular velocity using Euclidean norm<br/>
<br/>
41. tBodyGyroJerkMag-mean() : mean magnitude of jerk signals of angular velocity using Euclidean norm<br/>
<br/>
42. tBodyGyroJerkMag-std() : standard deviation of magnitude of jerk signals of angular velocity using Euclidean norm<br/>
<br/>
43. fBodyAcc-mean()-X : mean frequency domain signals, produced by applying a Fast Fourier Transform to the x-axis raw body acceleration signals from acceleromete<br/> 
<br/>
44. fBodyAcc-mean()-Y : mean frequency domain signals, produced by applying a Fast Fourier Transform to the y-axis raw body acceleration signals from accelerometer<br/>
<br/>
45. fBodyAcc-mean()-Z : mean frequency domain signals, produced by applying a Fast Fourier Transform to the z-axis raw body acceleration signals from accelerometer<br/>
<br/>
46. fBodyAcc-std()-X : standard deviation of frequency domain signals, produced by applying a Fast Fourier Transform to the x-axis raw body acceleration signals from accelerometer<br/>
<br/>
47. fBodyAcc-std()-Y : standard deviation of frequency domain signals, produced by applying a Fast Fourier Transform to the y-axis raw body acceleration signals from accelerometer<br/>
<br/>
48. fBodyAcc-std()-Z : standard deviation of frequency domain signals, produced by applying a Fast Fourier Transform to the z-axis raw body acceleration signals from accelerometer<br/>
<br/>
49. fBodyAccJerk-mean()-X : mean frequency domain signals, produced by applying a Fast Fourier Transform to the x-axis jerk body linear acceleration signals from accelerometer<br/>
<br/>
50. fBodyAccJerk-mean()-Y : mean frequency domain signals, produced by applying a Fast Fourier Transform to the y-axis jerk body linear acceleration signals from accelerometer<br/>
<br/>
51. fBodyAccJerk-mean()-Z : mean frequency domain signals, produced by applying a Fast Fourier Transform to the z-axis jerk body linear acceleration signals from accelerometer<br/>
<br/>
52. fBodyAccJerk-std()-X : standard deviation of frequency domain signals, produced by applying a Fast Fourier Transform to the x-axis jerk body linear acceleration signals from accelerometer<br/>
<br/>
53. fBodyAccJerk-std()-Y : standard deviation of frequency domain signals, produced by applying a Fast Fourier Transform to the y-axis jerk body linear acceleration signals from accelerometer<br/>
<br/>
54. fBodyAccJerk-std()-Z : standard deviation of frequency domain signals, produced by applying a Fast Fourier Transform to the z-axis jerk body linear acceleration signals from accelerometer<br/>
<br/>
55. fBodyGyro-mean()-X : mean frequency domain signal, produced by applying a Fast Fourier Transform to the x-axis raw angular velocity signals<br/>
<br/>
56. fBodyGyro-mean()-Y : mean frequency domain signal, produced by applying a Fast Fourier Transform to the y-axis raw angular velocity signals<br/>
<br/>
57. fBodyGyro-mean()-Z : mean frequency domain signal, produced by applying a Fast Fourier Transform to the z-axis raw angular velocity signals<br/>
<br/>
58. fBodyGyro-std()-X : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the x-axis raw angular velocity signals<br/>
<br/>
59. fBodyGyro-std()-Y : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the y-axis raw angular velocity signals<br/>
<br/>
60. fBodyGyro-std()-Z : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the z-axis raw angular velocity signals<br/>
<br/>
61. fBodyAccMag-mean() : mean frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of raw body acceleration signal<br/>
<br/>
62. fBodyAccMag-std() : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of raw body acceleration signal<br/>
<br/>
63. fBodyAccJerkMag-mean() : mean frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of jerk body linear acceleration signal<br/> 
<br/>
64. fBodyAccJerkMag-std() : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of jerk body linear acceleration signal<br/>
<br/>
65. fBodyGyroMag-mean() : mean frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of raw signals of angular velocity<br/>
<br/>
66. fBodyGyroMag-std() : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of raw signals of angular velocity<br/>
<br/>
67. fBodyGyroJerkMag-mean() : mean frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of jerk signals of angular velocity<br/>
<br/>
68. fBodyGyroJerkMag-std() : standard deviation of frequency domain signal, produced by applying a Fast Fourier Transform to the magnitude of jerk signals of angular velocity<br/> 
<br/>
