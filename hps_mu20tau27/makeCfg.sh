
# Make cfg file that runs over all most recent timing validation samples
# PU 58-60
# Following most recent Timing recommendations here:
# https://twiki.cern.ch/twiki/bin/viewauth/CMS/HLTCpuTimingReports2017#Report_HLT_Menu_v4_2_5_November
# Paths of interest:
#    - default HLT_IsoMu20_eta2p1_LooseChargedIsoPFTau27_eta2p1_CrossL1_v10
#    - hps     HLT_IsoMu20_eta2p1_LooseChargedIsoPFTauHPS27_eta2p1_CrossL1_v10


export FILES="file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636000.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636001.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636002.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636003.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636000.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636001.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636002.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636003.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636004.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636000.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636001.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636002.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636003.root"

# v34 is the first version with both paths working
# HPS path still needs lots of work, I just tried to copy Jan's cfg file thus far
# I need to go understand it now

hltGetConfiguration /users/truggles/HPS_at_HLT/HLT_with_HPS_PFTau20/V34 \
 --setup /dev/CMSSW_9_2_0/GRun \
 --globaltag 92X_dataRun2_HLT_v7 \
 --path HLTriggerFirstPath,HLT_IsoMu20_eta2p1_LooseChargedIsoPFTau27_eta2p1_CrossL1_v10,HLT_IsoMu20_eta2p1_LooseChargedIsoPFTauHPS27_eta2p1_CrossL1_v10,HLTriggerFinalPath,HLTAnalyzerEndpath \
 --input ${FILES} \
 --process TauHLT --full --offline \
 --prescale 1.5e34 --max-events -1 --timing --output none > hltMu20TauLoose27Data.py


