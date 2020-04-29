import numpy as np
import pandas as pd
import os
import matplotlib.pyplot as plt

LST =['A1','A10','A11','A2','A4','A5','A6','A8','B1','B10','B11','B2','B3','B4','B5','B7','B8']  ## Without A2 & A10 because of wierd timestamps

#CDA.SCR  CDA.Tonic

Stress = np.zeros((len(LST),1))

for i in np.arange(len(LST)):
    os.chdir('C:/Users/akone/OneDrive/Desktop/S_New/'+str(LST[i]))
    file = r'Stress'+str(LST[i])+'_scrlist.xls'
    data0 = pd.read_excel(file,sheetname='TTP')
    A = data0['TTP.SCR-Amplitude'].values
    
    
    Stress[i,0] =len(A)

    
UnStress = np.zeros((len(LST),1))    
for i in np.arange(len(LST)):
    os.chdir('C:/Users/akone/OneDrive/Desktop/Unstress_New/'+str(LST[i]))
    file = r'UnStress'+str(LST[i])+'_scrlist.xls'
    data0 = pd.read_excel(file,sheetname='TTP')
    A = data0['TTP.SCR-Amplitude'].values
    
    
    UnStress[i,0] =len(A)
    
    
e_dataframe=pd.DataFrame( {'Stress Peaks':Stress[:,0],'UnStress Peaks':UnStress[:,0]}) 

e_dataframe.index = LST

e_dataframe.to_csv (r'C:/Users/akone/OneDrive/Desktop/Analysis_Tonic/Peaks_0.01.csv', index = True, header=True)
