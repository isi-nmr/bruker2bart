# experiment folder 28 contains data obtained by 3D UTE sequence
export BRUKER_FID=$PATH_DATA/20200612_094625_lego_phantom_3_1_2/28/fid
export BART_CFL=$PATH_RESULTS/data
export BART_TRAJ=$PATH_RESULTS/traj
export BART_RECO=$PATH_RESULTS/reco
export BART_RECO_PNG=$PATH_RESULTS/reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL -t $BART_TRAJ
bart nufft -a -d 64:64:64 $BART_TRAJ $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
