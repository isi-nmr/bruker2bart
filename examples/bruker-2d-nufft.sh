# experiment folder 25 contains data obtained by UTE sequence
export BRUKER_FID=$PATH_DATA/20200612_094625_lego_phantom_3_1_2/25/fid
export BART_CFL=$PATH_RESULTS/data
export BART_TRAJ=$PATH_RESULTS/traj
export BART_RECO=$PATH_RESULTS/reco
export BART_RECO_PNG=$PATH_RESULTS/reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL -t $BART_TRAJ
bart nufft -i -d 128:128:1 $BART_TRAJ $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
