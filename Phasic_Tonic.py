import numpy as np
import pandas as pd
import os


########## Note that to use this code you must use export_era option in ladalab to save Phasic and Tonic values################


LST =['A1','A10','A11','A2','A4','A5','A6','A8','B1','B10','B11','B2','B3','B4','B5','B7','B8']  

Stress = np.zeros((len(LST),2))

for i in np.arange(len(LST)):
    os.chdir('Your Path/Stress_res/'+str(LST[i]))
    file = r'Stress'+str(LST[i])+'_era.xls'
    data0 = pd.read_excel(file,sheetname='CDA')
    A = data0['CDA.SCR [muS]'].values  ## Phasic value
    B = data0['CDA.Tonic [muS]'].values ## Tonic value
    
    Stress[i,0] = A
    Stress[i,1] = B
    
    
UnStress = np.zeros((len(LST),2))

for i in np.arange(len(LST)):
    os.chdir('Your Path/UnStress_res/'+str(LST[i]))
    file = r'UnStress'+str(LST[i])+'_era.xls'
    data0 = pd.read_excel(file,sheetname='CDA')
    A = data0['CDA.SCR [muS]'].values  ## Phasic value
    B = data0['CDA.Tonic [muS]'].values ## Tonic value
    
    UnStress[i,0] = A
    UnStress[i,1] = B
# =============================================================================
#       Total Phasic and Tonic Values 
# =============================================================================

tot_phasic = np.hstack((Stress[:,0],UnStress[:,0]))  
tot_tonic = np.hstack((Stress[:,1],UnStress[:,1]))

