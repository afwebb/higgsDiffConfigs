cd /data_ceph/afwebb/updated_trex/TRExFitter/higgsDiffConfigs/
cat job.config regions_2l.config regions_3l.config samples.config > xgb_higgsDiff.config
cat job_blind.config regions_2l.config regions_3l.config samples_fullR2.config > blind_higgsDiff.config
cat job_3l.config regions_3l.config samples_v9_3l.config > cern_3l.config
cat job_2l.config regions_2l.config samples_v9_2l.config > cern_2l.config
cat job_plots2l.config regions_plots2l.config samples.config > plots2l.config
cat job_plots3l.config regions_plots3l.config samples.config > plots3l.config