clc;clear all;close all
LST ={'A1','A10','A11','A2','A4','A5','A6','A8','B1','B10','B11','B2','B3','B4','B5','B7','B8'};
Time = load('Stress_Time.txt'); % Use this when you need to extract Phasic and Tonic values (Indicates the Window of anlysis length (s))

for i=1:length(LST)
    if i==1
        Ledalab('Your Path\Stress_res\A1\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==2
        Ledalab('Your Path\Stress_res\A10\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==3
        Ledalab('Your Path\Stress_res\A11\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==4
        Ledalab('Your Path\Stress_res\A2\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==5
        Ledalab('Your Path\Stress_res\A4\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==6
        Ledalab('Your Path\Stress_res\A5\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==7
        Ledalab('Your Path\Stress_res\A6\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==8
        Ledalab('Your Path\Stress_res\A8\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==9
        Ledalab('Your Path\Stress_res\B1\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==10
        Ledalab('Your Path\Stress_res\B10\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==11
        Ledalab('Your Path\Stress_res\B11\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==12
        Ledalab('Your Path\Stress_res\B2\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==13
        Ledalab('Your Path\Stress_res\B3\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==14
        Ledalab('Your Path\Stress_res\B4\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==15
        Ledalab('Your Path\Stress_res\B5\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==16
        Ledalab('Your Path\Stress_res\B7\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
    if i==17
        Ledalab('Your Path\Stress_res\B8\', 'open', 'text', 'filter',[6,1], 'analyze','CDA', 'export_scrlist', [ 0.01 3])
    end
end


