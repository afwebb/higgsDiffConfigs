cd /data_ceph/afwebb/updated_trex/TRExFitter/higgsDiffConfigs/configs/

#top features
cat jobTop2lSSfeatures.config regions_top2lSS.config samples_features.config > top2lSSfeatures.config
cat jobSmallTop2lSS.config regions_top2lSS.config samples_features.config > smallTop2lSS.config
cat jobTop3lfeatures.config regions_top3l.config samples_features.config > top3lfeatures.config
cat jobSmallTop3l.config regions_top3l.config samples_features.config > smallTop3lfeatures.config

#higgs features
cat jobHiggs2lSSfeatures.config regions_higgsTop2lSS.config samples_features.config > higgs2lSSfeatures.config
cat jobHiggs3lSfeatures.config regions_higgsTop3lS.config samples_features.config > higgs3lSfeatures.config
cat jobHiggs3lFfeatures.config regions_higgsTop3lF.config samples_features.config > higgs3lFfeatures.config

#80 configs
cat name_stat_80.config job_80.config normFactors.config regions_signal.config samples_80.config > stat_80.config
cat name_stat2l_80.config job_80.config normFactors.config regions_plots2lSS.config samples_80.config > stat2l_80.config
cat name_stat3l_80.config job_80.config normFactors.config regions_plots3l.config samples_80.config > stat3l_80.config

cat name_stat_140.config job_140.config normFactors.config regions_blinded.config samples_fullR2.config > stat_140.config
