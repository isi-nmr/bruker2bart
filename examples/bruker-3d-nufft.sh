# experiment folder 28 contains data obtained by 3D UTE sequence
export BRUKER_FID=$PATH_DATA/20200418_124909_lego_phantom_3_1_2/28/fid
export BART_CFL=$PATH_RESULT/data
export BART_TRAJ=$PATH_RESULT/traj
export BART_RECO=$PATH_RESULT/reco
export BART_RECO_PNG=$PATH_RESULT/reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL -t $BART_TRAJ
bart nufft -i -d 128:128:128 $BART_TRAJ $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
