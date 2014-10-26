Tidy Data Set 1
----------------

The features extracted from the original data set include the mean and standard deviation of the signals recorded for each activity performed by each particpant. For descriptions of these features, see the features_info.txt file in the original data set.

```
Label                          Type        Description
------------------------------------------------------------------------------------------------
subject                        integer     Number representing the subject participant in the experiment.
activity.label                 factor      Factor representing the activity performed by the subject. participant.
tbodyacc.mean.x                numeric     Rest of the columns are self explanatory.
tbodyacc.mean.y                numeric     
tbodyacc.mean.z                numeric     
tbodyacc.std.x                 numeric     
tbodyacc.std.y                 numeric     
tbodyacc.std.z                 numeric     
tgravityacc.mean.x             numeric     
tgravityacc.mean.y             numeric     
tgravityacc.mean.z             numeric     
tgravityacc.std.x              numeric     
tgravityacc.std.y              numeric     
tgravityacc.std.z              numeric     
tbodyaccjerk.mean.x            numeric     
tbodyaccjerk.mean.y            numeric     
tbodyaccjerk.mean.z            numeric     
tbodyaccjerk.std.x             numeric     
tbodyaccjerk.std.y             numeric     
tbodyaccjerk.std.z             numeric     
tbodygyro.mean.x               numeric     
tbodygyro.mean.y               numeric     
tbodygyro.mean.z               numeric     
tbodygyro.std.x                numeric     
tbodygyro.std.y                numeric     
tbodygyro.std.z                numeric     
tbodygyrojerk.mean.x           numeric     
tbodygyrojerk.mean.y           numeric     
tbodygyrojerk.mean.z           numeric     
tbodygyrojerk.std.x            numeric     
tbodygyrojerk.std.y            numeric     
tbodygyrojerk.std.z            numeric     
tbodyaccmag.mean               numeric     
tbodyaccmag.std                numeric     
tgravityaccmag.mean            numeric     
tgravityaccmag.std             numeric     
tbodyaccjerkmag.mean           numeric     
tbodyaccjerkmag.std            numeric     
tbodygyromag.mean              numeric     
tbodygyromag.std               numeric     
tbodygyrojerkmag.mean          numeric     
tbodygyrojerkmag.std           numeric     
fbodyacc.mean.x                numeric     
fbodyacc.mean.y                numeric     
fbodyacc.mean.z                numeric     
fbodyacc.std.x                 numeric     
fbodyacc.std.y                 numeric     
fbodyacc.std.z                 numeric     
fbodyaccjerk.mean.x            numeric     
fbodyaccjerk.mean.y            numeric     
fbodyaccjerk.mean.z            numeric     
fbodyaccjerk.std.x             numeric     
fbodyaccjerk.std.y             numeric     
fbodyaccjerk.std.z             numeric     
fbodygyro.mean.x               numeric     
fbodygyro.mean.y               numeric     
fbodygyro.mean.z               numeric     
fbodygyro.std.x                numeric     
fbodygyro.std.y                numeric     
fbodygyro.std.z                numeric     
fbodyaccmag.mean               numeric     
fbodyaccmag.std                numeric     
fbodybodyaccjerkmag.mean       numeric     
fbodybodyaccjerkmag.std        numeric     
fbodybodygyromag.mean          numeric     
fbodybodygyromag.std           numeric     
fbodybodygyrojerkmag.mean      numeric     
fbodybodygyrojerkmag.std       numeric     
```


Tidy Data Set 2
----------------

The second data set consists of the average of each mean and standard deviation feature for each activity and each subject. The feature names are the same as the first data set with 'avg' prepended to the name to differentiate it as the calculated average. The final output consists of six rows for each participant, one for each activity.


```
Label                          Type      Description
------------------------------------------------------------------------------------------------
subject                        integer     Number representing the subject participant in the experiment.
activity.label                 factor      Factor representing the activity performed by the subject.
avg.tbodyacc.mean.x            numeric     Rest of the columns are self explanatory.
avg.tbodyacc.mean.y            numeric     
avg.tbodyacc.mean.z            numeric     
avg.tbodyacc.std.x             numeric     
avg.tbodyacc.std.y             numeric     
avg.tbodyacc.std.z             numeric     
avg.tgravityacc.mean.x         numeric     
avg.tgravityacc.mean.y         numeric     
avg.tgravityacc.mean.z         numeric     
avg.tgravityacc.std.x          numeric     
avg.tgravityacc.std.y          numeric     
avg.tgravityacc.std.z          numeric     
avg.tbodyaccjerk.mean.x        numeric     
avg.tbodyaccjerk.mean.y        numeric     
avg.tbodyaccjerk.mean.z        numeric     
avg.tbodyaccjerk.std.x         numeric     
avg.tbodyaccjerk.std.y         numeric     
avg.tbodyaccjerk.std.z         numeric     
avg.tbodygyro.mean.x           numeric     
avg.tbodygyro.mean.y           numeric     
avg.tbodygyro.mean.z           numeric     
avg.tbodygyro.std.x            numeric     
avg.tbodygyro.std.y            numeric     
avg.tbodygyro.std.z            numeric     
avg.tbodygyrojerk.mean.x       numeric     
avg.tbodygyrojerk.mean.y       numeric     
avg.tbodygyrojerk.mean.z       numeric     
avg.tbodygyrojerk.std.x        numeric     
avg.tbodygyrojerk.std.y        numeric     
avg.tbodygyrojerk.std.z        numeric     
avg.tbodyaccmag.mean           numeric     
avg.tbodyaccmag.std            numeric     
avg.tgravityaccmag.mean        numeric     
avg.tgravityaccmag.std         numeric     
avg.tbodyaccjerkmag.mean       numeric     
avg.tbodyaccjerkmag.std        numeric     
avg.tbodygyromag.mean          numeric     
avg.tbodygyromag.std           numeric     
avg.tbodygyrojerkmag.mean      numeric     
avg.tbodygyrojerkmag.std       numeric     
avg.fbodyacc.mean.x            numeric     
avg.fbodyacc.mean.y            numeric     
avg.fbodyacc.mean.z            numeric     
avg.fbodyacc.std.x             numeric     
avg.fbodyacc.std.y             numeric     
avg.fbodyacc.std.z             numeric     
avg.fbodyaccjerk.mean.x        numeric     
avg.fbodyaccjerk.mean.y        numeric     
avg.fbodyaccjerk.mean.z        numeric     
avg.fbodyaccjerk.std.x         numeric     
avg.fbodyaccjerk.std.y         numeric     
avg.fbodyaccjerk.std.z         numeric     
avg.fbodygyro.mean.x           numeric     
avg.fbodygyro.mean.y           numeric     
avg.fbodygyro.mean.z           numeric     
avg.fbodygyro.std.x            numeric     
avg.fbodygyro.std.y            numeric     
avg.fbodygyro.std.z            numeric     
avg.fbodyaccmag.mean           numeric     
avg.fbodyaccmag.std            numeric     
avg.fbodybodyaccjerkmag.mean   numeric     
avg.fbodybodyaccjerkmag.std    numeric     
avg.fbodybodygyromag.mean      numeric     
avg.fbodybodygyromag.std       numeric     
avg.fbodybodygyrojerkmag.mean  numeric     
avg.fbodybodygyrojerkmag.std   numeric     
```
