
DATA DICTIONARY 

"1"	"subject"	
		Range: from 1 to 30
		the subject who performed the activity for each window sample. Its range is from 1 to 30.
"2"	"activitylabel"	
		activity name.
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING
"3"	"tBodyAccmeanX"	
		average of variable ¡±tBodyAccmeanX¡±  for activitylabel and subject.
		Please see detail¡± 1, features descripiton¡± about variables information.
		Following columns have the same Mechanism  
"4"	"tBodyAccmeanY"	
"5"	"tBodyAccmeanZ"	
"6"	"tBodyAccstdX"	
"7"	"tBodyAccstdY"	
"8"	"tBodyAccstdZ"	
"9"	"tGravityAccmeanX"	
"10"	"tGravityAccmeanY"	
"11"	"tGravityAccmeanZ"	
"12"	"tGravityAccstdX"	
"13"	"tGravityAccstdY"	
"14"	"tGravityAccstdZ"	
"15"	"tBodyAccJerkmeanX"	
"16"	"tBodyAccJerkmeanY"	
"17"	"tBodyAccJerkmeanZ"	
"18"	"tBodyAccJerkstdX"	
"19"	"tBodyAccJerkstdY"	
"20"	"tBodyAccJerkstdZ"	
"21"	"tBodyGyromeanX"	
"22"	"tBodyGyromeanY"	
"23"	"tBodyGyromeanZ"	
"24"	"tBodyGyrostdX"	
"25"	"tBodyGyrostdY"	
"26"	"tBodyGyrostdZ"	
"27"	"tBodyGyroJerkmeanX"	
"28"	"tBodyGyroJerkmeanY"	
"29"	"tBodyGyroJerkmeanZ"	
"30"	"tBodyGyroJerkstdX"	
"31"	"tBodyGyroJerkstdY"	
"32"	"tBodyGyroJerkstdZ"	
"33"	"tBodyAccMagmean"	
"34"	"tBodyAccMagstd"	
"35"	"tGravityAccMagmean"	
"36"	"tGravityAccMagstd"	
"37"	"tBodyAccJerkMagmean"	
"38"	"tBodyAccJerkMagstd"	
"39"	"tBodyGyroMagmean"	
"40"	"tBodyGyroMagstd"	
"41"	"tBodyGyroJerkMagmean"	
"42"	"tBodyGyroJerkMagstd"	
"43"	"fBodyAccmeanX"	
"44"	"fBodyAccmeanY"	
"45"	"fBodyAccmeanZ"	
"46"	"fBodyAccstdX"	
"47"	"fBodyAccstdY"	
"48"	"fBodyAccstdZ"	
"49"	"fBodyAccJerkmeanX"	
"50"	"fBodyAccJerkmeanY"	
"51"	"fBodyAccJerkmeanZ"	
"52"	"fBodyAccJerkstdX"	
"53"	"fBodyAccJerkstdY"	
"54"	"fBodyAccJerkstdZ"	
"55"	"fBodyGyromeanX"	
"56"	"fBodyGyromeanY"	
"57"	"fBodyGyromeanZ"	
"58"	"fBodyGyrostdX"	
"59"	"fBodyGyrostdY"	
"60"	"fBodyGyrostdZ"	
"61"	"fBodyAccMagmean"	
"62"	"fBodyAccMagstd"	
"63"	"fBodyBodyAccJerkMagmean"	
"64"	"fBodyBodyAccJerkMagstd"	
"65"	"fBodyBodyGyroMagmean"	
"66"	"fBodyBodyGyroMagstd"	
"67"	"fBodyBodyGyroJerkMagmean"	
"68"	"fBodyBodyGyroJerkMagstd"	

Detail:
=================
1, features descripiton
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

2. column number.
there are 2 columns :subject, activity lable.
there are 8 signals have 3-axial (x,y,z), two estimations (mean,std).  8*3*2= 48
there are 9 signals have two estimations (mean,std). 9*2 = 18.
So in the dataset column number is : 2 + 48 + 18 = 68
