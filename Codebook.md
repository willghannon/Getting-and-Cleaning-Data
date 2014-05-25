#Getting and Cleaning Data Course Project Codebook (May 23, 2014)
========================================
## ID Fields

* `subject`  The participant ("subject") ID
* `activity`  The label of the activity performed when the corresponding measurements were taken

## Extracted Feature Fields

The feature fields contain a combination of keywords indicating the type of measurement and the calculation being used. 

time: A measurement of time.
frequencyuency: a measurement of frequencyuency.
Body: Force signals produced by the body.
Gravity: Force signals produced by gravity.
Accelerometer: Signal provided by the accelerometer (acceleration).
Gyroscope: Signal provided by the gyroscope (angular velocity).
Jerk: Derivation of the body linear acceleration and angular velocity relative to time.
Mean: The mean calculation of the listed variable.
Std: The standard deviation of the listed variable.
X,Y,Z: Directional measurement of the listed variable.
Magnitude: Calculation of the three-dimensional figures into a single vector.

* `timeBodyAccelerometerMeanX` (column `1`)
* `timeBodyAccelerometerMeanY` (column `2`)
* `timeBodyAccelerometerMeanZ` (column `3`)
* `timeBodyAccelerometerStdX` (column `4`)
* `timeBodyAccelerometerStdY` (column `5`)
* `timeBodyAccelerometerStdZ` (column `6`)
* `timeGravityAccelerometerMeanX` (column `41`)
* `timeGravityAccelerometerMeanY` (column `42`)
* `timeGravityAccelerometerMeanZ` (column `43`)
* `timeGravityAccelerometerStdX` (column `44`)
* `timeGravityAccelerometerStdY` (column `45`)
* `timeGravityAccelerometerStdZ` (column `46`)
* `timeBodyAccelerometerJerkMeanX` (column `81`)
* `timeBodyAccelerometerJerkMeanY` (column `82`)
* `timeBodyAccelerometerJerkMeanZ` (column `83`)
* `timeBodyAccelerometerJerkStdX` (column `84`)
* `timeBodyAccelerometerJerkStdY` (column `85`)
* `timeBodyAccelerometerJerkStdZ` (column `86`)
* `timeBodyGyroscopeMeanX` (column `121`)
* `timeBodyGyroscopeMeanY` (column `122`)
* `timeBodyGyroscopeMeanZ` (column `123`)
* `timeBodyGyroscopeStdX` (column `124`)
* `timeBodyGyroscopeStdY` (column `125`)
* `timeBodyGyroscopeStdZ` (column `126`)
* `timeBodyGyroscopeJerkMeanX` (column `161`)
* `timeBodyGyroscopeJerkMeanY` (column `162`)
* `timeBodyGyroscopeJerkMeanZ` (column `163`)
* `timeBodyGyroscopeJerkStdX` (column `164`)
* `timeBodyGyroscopeJerkStdY` (column `165`)
* `timeBodyGyroscopeJerkStdZ` (column `166`)
* `timeBodyAccelerometerMagnitudeMean` (column `201`)
* `timeBodyAccelerometerMagnitudeStd` (column `202`)
* `timeGravityAccelerometerMagnitudeMean` (column `214`)
* `timeGravityAccelerometerMagnitudeStd` (column `215`)
* `timeBodyAccelerometerJerkMagnitudeMean` (column `227`)
* `timeBodyAccelerometerJerkMagnitudeStd` (column `228`)
* `timeBodyGyroscopeMagnitudeMean` (column `240`)
* `timeBodyGyroscopeMagnitudeStd` (column `241`)
* `timeBodyGyroscopeJerkMagnitudeMean` (column `253`)
* `timeBodyGyroscopeJerkMagnitudeStd` (column `254`)
* `frequencyBodyAccelerometerMeanX` (column `266`)
* `frequencyBodyAccelerometerMeanY` (column `267`)
* `frequencyBodyAccelerometerMeanZ` (column `268`)
* `frequencyBodyAccelerometerStdX` (column `269`)
* `frequencyBodyAccelerometerStdY` (column `270`)
* `frequencyBodyAccelerometerStdZ` (column `271`)
* `frequencyBodyAccelerometerJerkMeanX` (column `345`)
* `frequencyBodyAccelerometerJerkMeanY` (column `346`)
* `frequencyBodyAccelerometerJerkMeanZ` (column `347`)
* `frequencyBodyAccelerometerJerkStdX` (column `348`)
* `frequencyBodyAccelerometerJerkStdY` (column `349`)
* `frequencyBodyAccelerometerJerkStdZ` (column `350`)
* `frequencyBodyGyroscopeMeanX` (column `424`)
* `frequencyBodyGyroscopeMeanY` (column `425`)
* `frequencyBodyGyroscopeMeanZ` (column `426`)
* `frequencyBodyGyroscopeStdX` (column `427`)
* `frequencyBodyGyroscopeStdY` (column `428`)
* `frequencyBodyGyroscopeStdZ` (column `429`)
* `frequencyBodyAccelerometerMagnitudeMean` (column `503`)
* `frequencyBodyAccelerometerMagnitudeStd` (column `504`)
* `frequencyBodyAccelerometerJerkMagnitudeMean` (column `516`)
* `frequencyBodyAccelerometerJerkMagnitudeStd` (column `517`)
* `frequencyBodyGyroscopeMagnitudeMean` (column `529`)
* `frequencyBodyGyroscopeMagnitudeStd` (column `530`)
* `frequencyBodyGyroscopeJerkMagnitudeMean` (column `542`)
* `frequencyBodyGyroscopeJerkMagnitudeStd` (column `543`)

## Activity Labels

* `WALKING` (value `1`)
* `WALKING_UPSTAIRS` (value `2`)
* `WALKING_DOWNSTAIRS` (value `3`)
* `SITTING` (value `4`)
* `STANDING` (value `5`)
* `LAYING` (value `6`)

## Extracted Features Vector

```R
c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)
```

## Extracted Feature Names Vector

```R
c("tBodyAccelerometerMeanX", "tBodyAccelerometerMeanY", "tBodyAccelerometerMeanZ", "tBodyAccelerometerStdX", "tBodyAccelerometerStdY", "tBodyAccelerometerStdZ", "tGravityAccelerometerMeanX", "tGravityAccelerometerMeanY", "tGravityAccelerometerMeanZ", "tGravityAccelerometerStdX", "tGravityAccelerometerStdY", "tGravityAccelerometerStdZ", "tBodyAccelerometerJerkMeanX", "tBodyAccelerometerJerkMeanY", "tBodyAccelerometerJerkMeanZ", "tBodyAccelerometerJerkStdX", "tBodyAccelerometerJerkStdY", "tBodyAccelerometerJerkStdZ", "tBodyGyroscopeMeanX", "tBodyGyroscopeMeanY", "tBodyGyroscopeMeanZ", "tBodyGyroscopeStdX", "tBodyGyroscopeStdY", "tBodyGyroscopeStdZ", "tBodyGyroscopeJerkMeanX", "tBodyGyroscopeJerkMeanY", "tBodyGyroscopeJerkMeanZ", "tBodyGyroscopeJerkStdX", "tBodyGyroscopeJerkStdY", "tBodyGyroscopeJerkStdZ", "tBodyAccelerometerMagnitudeMean", "tBodyAccelerometerMagnitudeStd", "tGravityAccelerometerMagnitudeMean", "tGravityAccelerometerMagnitudeStd", "tBodyAccelerometerJerkMagnitudeMean", "tBodyAccelerometerJerkMagnitudeStd", "tBodyGyroscopeMagnitudeMean", "tBodyGyroscopeMagnitudeStd", "tBodyGyroscopeJerkMagnitudeMean", "tBodyGyroscopeJerkMagnitudeStd", "fBodyAccelerometerMeanX", "fBodyAccelerometerMeanY", "fBodyAccelerometerMeanZ", "fBodyAccelerometerStdX", "fBodyAccelerometerStdY", "fBodyAccelerometerStdZ", "fBodyAccelerometerJerkMeanX", "fBodyAccelerometerJerkMeanY", "fBodyAccelerometerJerkMeanZ", "fBodyAccelerometerJerkStdX", "fBodyAccelerometerJerkStdY", "fBodyAccelerometerJerkStdZ", "fBodyGyroscopeMeanX", "fBodyGyroscopeMeanY", "fBodyGyroscopeMeanZ", "fBodyGyroscopeStdX", "fBodyGyroscopeStdY", "fBodyGyroscopeStdZ", "fBodyAccelerometerMagnitudeMean", "fBodyAccelerometerMagnitudeStd", "fBodyAccelerometerJerkMagnitudeMean", "fBodyAccelerometerJerkMagnitudeStd", "fBodyGyroscopeMagnitudeMean", "fBodyGyroscopeMagnitudeStd", "fBodyGyroscopeJerkMagnitudeMean", "fBodyGyroscopeJerkMagnitudeStd")
```

## Activities Vector

```R
c(1, 2, 3, 4, 5, 6)
```

## Activity Names Vector

```R
c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
```
Will Hannon
