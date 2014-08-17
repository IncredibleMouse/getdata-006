Codebook
==================

## Description
The MEAN of all the mean or standard deviation columns from the raw test and train data files, for each subject and activity performed.

## Columns
The first two columns are:
* "Subject" : Integer, from 1-30. This is the Subject ID.
* "Activity": Character. Length:180 This is the activity done by the subject while recording the measurements.

The remainder of the columns are all numeric values representing the **MEAN** of the measurement for the Subject and the Activity. 
The last character 'x,y, or z' is used to denote 3-axial signals in the X, Y and Z directions.

Col Number	|	Col Name	|	Description
---	|	---	|	---
1	|	subject_number	|	Integer, from 1-30. This is the Subject ID.
2	|	activity_name	|	Character. Length:180 This is the activity done by the subject while recording the measurements.
3	|	avg_tbodyaccmeanx	|	Average of the mean Body acceleration signal, X
4	|	avg_tbodyaccmeany	|	Average of the mean Body acceleration signal, Y
5	|	avg_tbodyaccmeanz	|	Average of the mean Body acceleration signal, Z
6	|	avg_tbodyaccstdx	|	Average of the Std.Dev Body acceleration signal, X
7	|	avg_tbodyaccstdy	|	Average of the Std.Dev Body acceleration signal, Y
8	|	avg_tbodyaccstdz	|	Average of the Std.Dev Body acceleration signal, Z
9	|	avg_tgravityaccmeanx	|	Average of the mean Gravity acceleration signal, X
10	|	avg_tgravityaccmeany	|	Average of the mean Gravity acceleration signal, Y
11	|	avg_tgravityaccmeanz	|	Average of the mean Gravity acceleration signal, Z
12	|	avg_tgravityaccstdx	|	Average of the Std.Dev Gravity acceleration signal, X
13	|	avg_tgravityaccstdy	|	Average of the Std.Dev Gravity acceleration signal, Y
14	|	avg_tgravityaccstdz	|	Average of the Std.Dev Gravity acceleration signal, Z
15	|	avg_tbodyaccjerkmeanx	|	Average of the mean Body Jerk acceleration signal, X
16	|	avg_tbodyaccjerkmeany	|	Average of the mean Body Jerk acceleration signal, Y
17	|	avg_tbodyaccjerkmeanz	|	Average of the mean Body Jerk acceleration signal, Z
18	|	avg_tbodyaccjerkstdx	|	Average of the Std.Dev Body Jerk acceleration signal, X
19	|	avg_tbodyaccjerkstdy	|	Average of the Std.Dev Body Jerk acceleration signal, Y
20	|	avg_tbodyaccjerkstdz	|	Average of the Std.Dev Body Jerk acceleration signal, Z
21	|	avg_tbodygyromeanx	|	Average of the mean Body Gyro acceleration signal, X
22	|	avg_tbodygyromeany	|	Average of the mean Body Gyro acceleration signal, Y
23	|	avg_tbodygyromeanz	|	Average of the mean Body Gyro acceleration signal, Z
24	|	avg_tbodygyrostdx	|	Average of the Std.Dev Body Gyro acceleration signal, X
25	|	avg_tbodygyrostdy	|	Average of the Std.Dev Body Gyro acceleration signal, Y
26	|	avg_tbodygyrostdz	|	Average of the Std.Dev Body Gyro acceleration signal, Z
27	|	avg_tbodygyrojerkmeanx	|	Average of the mean Body Gyro Jerk acceleration signal, X
28	|	avg_tbodygyrojerkmeany	|	Average of the mean Body Gyro Jerk acceleration signal, Y
29	|	avg_tbodygyrojerkmeanz	|	Average of the mean Body Gyro Jerk acceleration signal, Z
30	|	avg_tbodygyrojerkstdx	|	Average of the Std.Dev Body Gyro Jerk acceleration signal, X
31	|	avg_tbodygyrojerkstdy	|	Average of the Std.Dev Body Gyro Jerk acceleration signal, Y
32	|	avg_tbodygyrojerkstdz	|	Average of the Std.Dev Body Gyro Jerk acceleration signal, Z
33	|	avg_tbodyaccmagmean	|	Average of the mean Body Acceleration Magnitude
34	|	avg_tbodyaccmagstd	|	Average of the Std.Dev Body Acceleration Magnitude
35	|	avg_tgravityaccmagmean	|	Average of the mean Gravity Acceleration Magnitude
36	|	avg_tgravityaccmagstd	|	Average of the Std.Dev GravityAcceleration Magnitude
37	|	avg_tbodyaccjerkmagmean	|	Average of the mean Body Acceleration Jerk Magnitude
38	|	avg_tbodyaccjerkmagstd	|	Average of the Std.Dev BodyAcceleration Jerk Magnitude
39	|	avg_tbodygyromagmean	|	Average of the mean Body Gyro Magnitude
40	|	avg_tbodygyromagstd	|	Average of the Std.Dev Body Gyro Magnitude
41	|	avg_tbodygyrojerkmagmean	|	Average of the mean Body Gyro Jerk Magnitude
42	|	avg_tbodygyrojerkmagstd	|	Average of the Std.Dev Body Gyro Jerk Magnitude
43	|	avg_fbodyaccmeanx	|	Average Fast Fourier Transform of mean Body Acceleration X
44	|	avg_fbodyaccmeany	|	Average Fast Fourier Transform of mean Body Acceleration Y
45	|	avg_fbodyaccmeanz	|	Average Fast Fourier Transform of mean Body Acceleration Z
46	|	avg_fbodyaccstdx	|	Average Fast Fourier Transform of Std.Dev Body Acceleration X
47	|	avg_fbodyaccstdy	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Y
48	|	avg_fbodyaccstdz	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Z
49	|	avg_fbodyaccmeanfreqx	|	Average Fast Fourier Transform of mean Body Acceleration Frequency X
50	|	avg_fbodyaccmeanfreqy	|	Average Fast Fourier Transform of mean Body Acceleration Frequency Y
51	|	avg_fbodyaccmeanfreqz	|	Average Fast Fourier Transform of mean Body Acceleration Frequency Z
52	|	avg_fbodyaccjerkmeanx	|	Average Fast Fourier Transform of mean Body Acceleration Jerk X
53	|	avg_fbodyaccjerkmeany	|	Average Fast Fourier Transform of mean Body Acceleration Jerk Y
54	|	avg_fbodyaccjerkmeanz	|	Average Fast Fourier Transform of mean Body Acceleration JerkZ
55	|	avg_fbodyaccjerkstdx	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Jerk X
56	|	avg_fbodyaccjerkstdy	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Jerk Y
57	|	avg_fbodyaccjerkstdz	|	Average Fast Fourier Transform of Std.Dev Body Acceleration JerkZ
58	|	avg_fbodyaccjerkmeanfreqx	|	Average Fast Fourier Transform of mean Body Acceleration Jerk Frequency X
59	|	avg_fbodyaccjerkmeanfreqy	|	Average Fast Fourier Transform of mean Body Acceleration Jerk Frequency Y
60	|	avg_fbodyaccjerkmeanfreqz	|	Average Fast Fourier Transform of mean Body Acceleration Jerk Frequency Z
61	|	avg_fbodygyromeanx	|	Average Fast Fourier Transform of mean Body Gyro X
62	|	avg_fbodygyromeany	|	Average Fast Fourier Transform of mean Body Gyro Y
63	|	avg_fbodygyromeanz	|	Average Fast Fourier Transform of mean Body GyroZ
64	|	avg_fbodygyrostdx	|	Average Fast Fourier Transform of Std.Dev Body Gyro X
65	|	avg_fbodygyrostdy	|	Average Fast Fourier Transform of Std.Dev Body Gyro Y
66	|	avg_fbodygyrostdz	|	Average Fast Fourier Transform of Std.Dev Body GyroZ
67	|	avg_fbodygyromeanfreqx	|	Average Fast Fourier Transform of mean Body Gyro Frequency X
68	|	avg_fbodygyromeanfreqy	|	Average Fast Fourier Transform of mean Body Gyro Frequency Y
69	|	avg_fbodygyromeanfreqz	|	Average Fast Fourier Transform of mean Body Gyro Frequency Z
70	|	avg_fbodyaccmagmean	|	Average Fast Fourier Transform of mean Body Acceleration Magnitude
71	|	avg_fbodyaccmagstd	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Magnitude
72	|	avg_fbodyaccmagmeanfreq	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Magnitude Frequency
73	|	avg_fbodybodyaccjerkmagmean	|	Average Fast Fourier Transform of mean Body Acceleration Jerk Magnitude
74	|	avg_fbodybodyaccjerkmagstd	|	Average Fast Fourier Transform of Std.Dev Body Acceleration Jerk Magnitude
75	|	avg_fbodybodyaccjerkmagmeanfreq	|	Average Fast Fourier Transform of mean Body Acceleration Jerk Magnitude Frequency
76	|	avg_fbodybodygyromagmean	|	Average Fast Fourier Transform of mean Body Gyro Magnitude
77	|	avg_fbodybodygyromagstd	|	Average Fast Fourier Transform of Std.Dev Body Gyro Magnitude
78	|	avg_fbodybodygyromagmeanfreq	|	Average Fast Fourier Transform of mean Body Gyro Magnitude Frequency
79	|	avg_fbodybodygyrojerkmagmean	|	Average Fast Fourier Transform of mean Body Gyro Jerk Magnitude
80	|	avg_fbodybodygyrojerkmagstd	|	Average Fast Fourier Transform of Std.Dev Body Gyro Jerk Magnitude
81	|	avg_fbodybodygyrojerkmagmeanfreq	|	Average Fast Fourier Transform of mean Body Gyro Jerk Magnitude Frequency
