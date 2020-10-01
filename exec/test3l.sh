#TRExFitter parallelization 
#Author: Harish Potti
date
#sh config/split/combine.sh

CONFIG=configs/test3l.config # specify config

logs=logs_test3l/   # Folder name for log files

mkdir -p $logs

declare -a regions=( #"Inclusive"
#"l20tau_test"
#"pt_score_2l"
#"bin_score_2l"
"nJets"
"nbJets"
"lead_jetPt"
"sublead_jetPt"
"lep_Pt_0"
"lep_Pt_1"
"lep_Pt_2"
"MET"
"HT"
"Mll01"
"Mll02"
"Mll12"
"CERN_2l_MVA_ttV"
"CERN_2l_MVA_ttbar"
"jet_pt"
"jet_eta"
)

pids=""
# Read Ntuples
for region in ${regions[@]}

do
    trex-fitter n $CONFIG "Regions=$region" >& $logs/$region.log & 
    pids="$pids $!"
done

echo $pids
wait $pids

trex-fitter d $CONFIG  # Draw prefit plots
'''
trex-fitter w $CONFIG  # Create Workspace
trex-fitter f $CONFIG  # Fit the workspace

pids=""
for i in {0..235};
do
    if (( $i % 40 == 0 ))
    then
	trex-fitter r $CONFIG Ranking=$i >& $logs/log_$i.log         # limit parallel ranking jobs to 11
#pids="$pids $!"
    else
	trex-fitter r $CONFIG Ranking=$i >& $logs/log_$i.log &
	pids="$pids $!"
    fi
done

echo $pids
wait $pids 
'''

#trex-fitter r $CONFIG Ranking=plot       # Make Ranking plot

#trex-fitter pl $CONFIG    # create post-fit plots, limits and significance

date



