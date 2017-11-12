
# Make cfg file that runs over all most recent timing validation samples
# PU 58-60
# Following most recent Timing recommendations here:
# https://twiki.cern.ch/twiki/bin/viewauth/CMS/HLTCpuTimingReports2017#Report_HLT_Menu_v4_2_5_November
# Path of interest: HLT_DoubleTightChargedIsoPFTau35_Trk1_TightID_eta2p1_Reg_v10

export FILES="file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636000.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636001.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636002.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU56-58_305636003.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636000.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636001.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636002.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636003.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU58-59_305636004.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636000.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636001.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636002.root,file:/data/user/ecarrera/timing_data/skim_Ephemeral_305636/Ephemeral_PU59-60_305636003.root"

hltGetConfiguration /dev/CMSSW_9_2_0/GRun \
 --globaltag 92X_dataRun2_HLT_v7 \
 --path HLTriggerFirstPath,HLT_DoubleTightChargedIsoPFTau35_Trk1_TightID_eta2p1_Reg_v10,HLTriggerFinalPath,HLTAnalyzerEndpath \
 --input ${FILES} \
 --process TauHLT --full --offline \
 --prescale 1.5e34 --max-events -1 --timing --output none > hltDiTauTight35Data.py


