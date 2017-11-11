# HLT_Studies

# Running trigger of interest
Studing trigger "HLT_DoubleTightChargedIsoPFTau35_Trk1_TightID_eta2p1_Reg"

Using TSG provided timing files corresponding to 50k events:
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567000.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567001.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567002.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567003.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567004.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567005.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567006.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567007.root
/data/user/ecarrera/timing_data/skim_HLTPhysics_301567/HLTPhysics_PU32-38_301567008.root


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
    source scripts/plot.sh

# Plotting
See centralized tools here: https://github.com/cms-steam/TimingScripts
the plot.sh script relies on this being available

see files: 

    source scripts/plot.sh



