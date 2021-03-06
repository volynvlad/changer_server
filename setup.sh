#!/bin/bash
python3 -m venv venv
pip install Flask

mkdir pictures && cd pictures
mkdir send
mkdir received
cd ..

touch __init__.py
mkdir background_remover
mv remove.py background_remover
cd background_remover
touch __init__.py
wget http://download.tensorflow.org/models/deeplabv3_mnv2_pascal_train_aug_2018_01_29.tar.gz
wget http://download.tensorflow.org/models/deeplabv3_pascal_train_aug_2018_01_04.tar.gz

mkdir mobile_net_model
mkdir xception_model
tar xvzf deeplabv3_mnv2_pascal_train_aug_2018_01_29.tar.gz -C mobile_net_model --strip=1
tar xvzf deeplabv3_pascal_train_aug_2018_01_04.tar.gz -C xception_model --strip=1

rm deeplabv3_mnv2_pascal_train_aug_2018_01_29.tar.gz
rm deeplabv3_pascal_train_aug_2018_01_04.tar.gz
