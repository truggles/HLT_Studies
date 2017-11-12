# HLT_Studies

# Current scripts

In: diTauTight35_highPUdata/

Compare output plot to TSG estimated performance
https://twiki.cern.ch/twiki/bin/viewauth/CMS/HLTCpuTimingReports2017#Report_HLT_Menu_v4_2_5_November
HLT_DoubleMediumChargedIsoPFTau40_Trk1_TightID_eta2p1_Reg_v10   26.6965 ms

Good agreement overall.  Good shape agreement with Ram's studies as well.

# Running trigger of interest
Studing trigger "HLT_DoubleTightChargedIsoPFTau35_Trk1_TightID_eta2p1_Reg"

Using TSG provided timing files corresponding to 80k events from Nov, see:
https://twiki.cern.ch/twiki/bin/viewauth/CMS/HLTCpuTimingReports2017#Report_HLT_Menu_v4_2_5_November

    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636000.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636001.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636002.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636003.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636000.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636001.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636002.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636003.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636004.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636000.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636001.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636002.root
    /data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636003.root



Get recent CMSSW and menu from here (CMSSW_9_2_14 on 11 Nov 2017):
https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuideGlobalHLT#Preparing_a_92X_CMSSW_developer

    Add --timing into the "hltGetConfiguration" part of the script
    Add path of interest between first and last paths, for us "HLT_DoubleTightChargedIsoPFTau35_Trk1_TightID_eta2p1_Reg"

Edit input files to be same as above and edit maxEvents to -1


see files: 

    cmsRun scripts/hltDiTauTight35.py


# Harvesting output
Get timing harvesting cms job here: https://twiki.cern.ch/twiki/bin/viewauth/CMS/FastTimerService#How_to_use_the_FastTimerService

see files: 

    cmsRun scripts/harvest.py

# Plotting
See centralized tools here: https://github.com/cms-steam/TimingScripts
the plot.sh script relies on this being available

see files: 

    source scripts/plot.sh



