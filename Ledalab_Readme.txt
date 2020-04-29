

The code starting with "Creating" will create txt file including three columns. First column is a relative time, Second
column is the EDA values, and the last one is the event indicator (in our case is a binary columns where 1 indicates the satrt of event).

The code starting with "Export" will use the "Batch Mode" option from Ledalab to export the number of peaks, Phasic and Tonic values.
The result will be saved as xlsx file in the same directory.  

*Note that the EDA signal must be low-pass filter by 6 order & 1HZ butterworth. 

The two python codes will extract the number of peaks and Tonic and Phasic values from the saved xlsx saved files. 

