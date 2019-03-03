# docker run --name vwalpinecontainer vwalpine:8.6
# docker exec vwalpinecontainer ./vw_train_test.sh

# ## Helpful vw commands
# #docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $(pwd):/code vwalpine:8.6 ./vw_train_test.sh
# #docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $(pwd):/code --entrypoint "/bin/bash vw_train_test.sh" vwalpine:8.6 
# #override entry point

# docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $(pwd):/code vwalpine:8.6 /code/vw_train_test.sh
# docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $(pwd):/code --entrypoint /bin/bash -c "$(cat ./vw_train_test.sh)" vwalpine:8.6
# docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $(pwd):/code vwalpine:8.6 /bin/bash -c "$(cat ./vw_train_test.sh)"


code_dir=`pwd`
data_dir=""

docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $code_dir:/code -v $data_dir:/data vwalpine:8.6 bash
