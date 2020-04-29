EDA Explorer:

* EDA explorer can be used as a mean to evaluate the level of noise in the EDA signal.

* Note the in EDA explorer, the entire EDA is divided into equally length epochs (5 (s)), by default, 
then is determined whether a given epoch is noisy or not. 

* Use the multiclass classification module in which each epoch of 5 (s) can be classified as clean(+1) or unsure(0) or noisy (-1).

* Also, to use the EDA explorer for noise detection, you must use E4 format. You also need to provide Acceleration and Temperature data 
alongside the EDA signal. 

Ledalab:

* Ledalab is used to obtain mean of phasic and tonic, and also counting the number peaks.

* The code starting with "Creating" will create txt file including three columns. First column is a relative time, Second
column is the EDA values, and the last one is the event indicator (in our case is a binary columns where 1 indicates the satrt of event).

* The code starting with "Export" will use the "Batch Mode" option from Ledalab to export the number of peaks, Phasic and Tonic values.
The result will be saved as xlsx file in the same directory.  

* Note that the EDA signal must be low-pass filter by 6 order & 1HZ butterworth. 

* The two python codes will extract the number of peaks and Tonic and Phasic values from the saved xlsx saved files. 
