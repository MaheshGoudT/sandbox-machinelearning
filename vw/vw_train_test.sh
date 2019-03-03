data_dir="/data/tmp_vw/"
train_file=$data_dir"train.vw"
test_file=$data_dir"test.vw"

num_passes=1
full_model_file=$data_dir"np.$num_passes.model.vw"
full_raw_predictions=$data_dir"np.$num_passes.raw_predictions.txt"
full_feat_imp_file="$full_model_file.fr"

# -c -k --quiet
vw -d $train_file --loss_function=logistic -f $full_model_file --passes $num_passes -P 3.0 --holdout_off 
## Below feature ranking utility also trains vw model
# vw-varinfo --loss_function=logistic -f $full_model_file -c -k --passes $num_passes -d $train_file > $full_feat_imp_file 

# vw -d $test_file -t -i $full_model_file --loss_function=logistic -r $full_raw_predictions
