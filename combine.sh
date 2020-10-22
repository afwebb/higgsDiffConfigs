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
