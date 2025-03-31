OUTPUT_PATH="/home/bachir/Youtube/SGD/blender"
HOST="MS-CAFFE"
SCENES=(
    $OUTPUT_PATH/scripts/outputs/GraphFunction/images/GraphFunction-marked/mp4s/*
    $OUTPUT_PATH/scripts/outputs/GDVsMomentum/images/*
    $OUTPUT_PATH/scripts/outputs/GraphFunction/images/*
    $OUTPUT_PATH/scripts/outputs/IntroScene/images/*
	# $OUTPUT_PATH/../scripts/outputs/DefPCA/images
	# $OUTPUT_PATH/WorldMapWithNamesAndColors
	# $OUTPUT_PATH/Viz3Factors
	# $OUTPUT_PATH/ProjectPointOnDirection 
	# $OUTPUT_PATH/CountryBalls
)

NAMES=(
	GraphFunction
    GDVsMomentum
	GraphFunctionManual
    IntroScene
	# DefPCA 
	#WorldMapWithNamesAndColors
	#Viz3Factors
	#ProjectPointOnDirection 
	#CountryBalls
)

for (( i=0; i<${#SCENES[*]}; ++i)); do
    CMD="rsync  -av $HOST:${SCENES[$i]} blender/${NAMES[$i]} --delete"
    echo "Copying $i"
    echo $CMD
    $CMD  | tqdm --unit_scale | wc -l
done



