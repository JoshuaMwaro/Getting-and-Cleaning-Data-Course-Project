# CodeBook

This CodeBook describes the variables, data cleaning steps, and transformations used in the dataset.

---

## 1. Data Source

The data if from University of California, Irvine (UCI)'s Machine learning repository.
It's a Multivariate, Time-Series data set on Human Activity Recognition built from 
the recordings of 30 subjects 
performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Each of the 30 subjects performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, and LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration 
and 3-axial angular velocity at a constant rate of 50Hz.
---

## 2. Variables
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 

All variables are normalized and bounded within [-1, 1].

| Variable         | Description |
|---------         |-------------|
| subject          | Unique identifier for each of the participant (1–30) |
| activity         | performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, and LAYING) |
| tBodyAccMeanX    | Mean of the time-domain signal of the body acceleration 
(from the accelerometer) measured on the X-axis for each activity in the activity variable|
| tBodyAccMeanY    | Mean of the time-domain signal of the body acceleration 
(from the accelerometer) measured on the Y-axis for each activity in the activity variable|
| tBodyAccMeanZ    | Mean of the time-domain signal of the body acceleration 
(from the accelerometer) measured on the Z-axis for each activity in the activity variable|
| tGravityAccMeanX | Mean of the time-domain gravity acceleration signal along the X-axis |
| tGravityAccMeanY | Mean of the time-domain gravity acceleration signal along the Y-axis |
| tGravityAccMeanZ | Mean of the time-domain gravity acceleration signal along the Z-axis |
| tBodyAccJerkMeanY| average of the time-domain body acceleration jerk(rate of change of acceleration) along the
Y-axis(lateral movement, side-to-side)|
| tBodyAccJerkMeanX| average of the time-domain body acceleration jerk(rate of change of acceleration/derivative of acceleration over time) along the
X-axis(forward-backward motion)|
| tBodyAccJerkMeanZ| average of the time-domain body acceleration jerk(rate of change of acceleration/derivative of acceleration over time) along the
Z-axis(vertical movement (up-down))|
| tBodyGyroMeanX   | average rotational velocity of the body around the phone's X-axis over the period of observation |
| tBodyGyroMeanY   | average rotational velocity of the body around the phone's Y-axis over the period of observation |
| tBodyGyroMeanZ   | average rotational velocity of the body around the phone's Z-axis over the period of observation |
| tBodyGyroJerkMeanX | average rate of change of the body’s rotational velocity around the X-axis over the measurement period |
| tBodyGyroJerkMeanY| average rate of change of the body’s rotational velocity around the Y-axis over the measurement period |
| tBodyGyroJerkMeanZ | average rate of change of the body’s rotational velocity around the Z-axis over the measurement period |
| tBodyAccMagMean  | average magnitude of the body acceleration vector (combining X, Y, and Z axes) over the time period |
| tGravityAccMagMean| average magnitude of the gravity-related acceleration vector (combining X, Y, and Z axes) over the time period |
| tBodyAccJerkMagMean| average magnitude of the body acceleration jerk across all three axes over the measurement window |
| tBodyGyroMagMean | average magnitude of the body’s rotational velocity (combining three axes) over the time period |
| tBodyGyroJerkMagMean | average magnitude of the rate of change of the body’s rotational velocity across all three axes over the time period |
| fBodyAccMeanX    | average value of the body acceleration along the X-axis in the frequency domain |
| fBodyAccMeanY    | average value of the body acceleration along the Y-axis in the frequency domain |
| fBodyAccMeanZ    | average value of the body acceleration along the Z-axis in the frequency domain |
| fBodyAccMeanFreqX| average frequency of the X-axis body acceleration, weighted by the magnitude of each frequency component.|
| fBodyAccMeanFreqY| average frequency of the Y-axis body acceleration, weighted by the amplitude of each frequency component.|
| fBodyAccMeanFreqZ| average frequency of the Z-axis body acceleration, weighted by the amplitude of each frequency component (where most of the vertical acceleration energy is concentrated in the frequency domain) |
| fBodyAccJerkMeanX| average frequency-domain value of the X-axis body acceleration jerk, showing how the rate of change of acceleration behaves across frequencies. |
| fBodyAccJerkMeanY| average frequency-domain value of the Y-axis body acceleration jerk, indicating how the lateral rate of change of acceleration is distributed across frequencies.|
| fBodyAccJerkMeanZ| average frequency-domain value of the Z-axis body acceleration jerk, indicating how the vertical acceleration changes are distributed across frequencies.|
| fBodyAccJerkMeanFreqX| mean frequency of the X-axis body acceleration jerk,where most of the signal’s energy of acceleration changes is concentrated along the X-axis in the frequency domain|
| fBodyAccJerkMeanFreqY| mean frequency of the Y-axis body acceleration jerk,where most of the lateral acceleration changes are concentrated in the frequency domain|
| fBodyAccJerkMeanFreqZ| mean frequency of the Z-axis body acceleration jerk,where most of the vertical acceleration changes are concentrated in the frequency domain|
| fBodyGyroMeanX       | Average rotational velocity along X-axis in frequency domain |
| fBodyGyroMeanY       | Average rotational velocity along Y-axis in frequency domain | 
| fBodyGyroMeanZ       | Average rotational velocity along Z-axis in frequency domain | — 
| fBodyGyroMeanFreqX   | Mean frequency of rotational velocity along X-axis |
| fBodyGyroMeanFreqY   | Mean frequency of rotational velocity along Y-axis |
| fBodyGyroMeanFreqZ   | Mean frequency of rotational velocity along Z-axis |
| fBodyAccMagMean      | average magnitude of the body acceleration vector in the frequency domain, showing how the overall acceleration energy is distributed across frequencies, regardless of direction |
| fBodyAccMagMeanFreq  | weighted average frequency of the magnitude of the body acceleration jerk, showing where most of the energy from rapid acceleration changes is concentrated. |
| fBodyBodyAccJerkMagMean| average magnitude of the body acceleration jerk in the frequency domain, across all three axes |
| fBodyBodyAccJerkMagMeanFreq| weighted average frequency of the magnitude of the body acceleration jerk, showing where most of the energy from rapid acceleration changes is concentrated across all axes |
| fBodyBodyGyroMagMean | average magnitude of the body’s rotational velocity in the frequency domain, combining all three axes |
| fBodyBodyGyroMagMeanFreq| weighted average frequency of the magnitude of body rotation, showing where most of the rotational energy is concentrated across all three axes |
| fBodyBodyGyroJerkMagMean| average magnitude of the rotational jerk in the frequency domain, showing how quickly the body’s rotational speed changes across all axes, regardless of direction |
| fBodyBodyGyroJerkMagMeanFreq| weighted average frequency of the magnitude of rotational jerk, showing where most of the rotational jerk energy is concentrated across all axes in the frequency domain |
| angle(tBodyAccMean,gravity) | angle between the mean body acceleration vector and the gravity vector over the measurement period, tells you how the phone (or body) is oriented relative to gravity, which can help distinguish activities like walking, standing, or lying down, value is usually expressed in radians |
| angle(tBodyAccJerkMean),gravityMean)| angle between the average body acceleration jerk vector and the mean gravity vector, reflects the orientation of rapid acceleration changes relative to the direction of gravity. |


---
## 3. Data Cleaning Steps

- Removed rows with missing values
- Converted date fields using `lubridate`
- Recoded gender values (1 = Male, 2 = Female)
- Standardized column names with `janitor::clean_names()`

---

## 4. Transformations

- Downloaded the data from the provided link: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
- Unzipped the data
- Read the training, testing, features, activities, data sets
- Merged the data
- Extracted the mean and std measurements
- Used descriptive activity names
- Cleaned variable names
- Created a tidy dataset (average of each variable per subject + activity)
- Saved the output of the tidy dataset as "tidydata.txt"
- Viewed the final data set
- Transformed the first Row to be the Header
