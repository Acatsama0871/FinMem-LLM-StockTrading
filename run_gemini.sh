#!/bin/bash

# tgi
# train
export OPENAI_API_KEY="Enter your OpenAI API Key here"

python run.py sim \
-mdp data/03_model_input/tsla.pkl \
-st 2022-07-21 \
-et 2022-10-07 \
-rm train \
-cp config/tsla_gemini_config.toml \
-ckp /workspace/ofcourseistillloveyou-exp/data/06_train_checkpoint \
-rp data/05_train_model_output
# # train-checkpoint
# python run.py sim-checkpoint \
# -ckp /workspace/ofcourseistillloveyou-exp/data/06_train_checkpoint \
# -rp data/05_train_model_output \
# -cp config/tsla_gemini_config.toml \
# -rm train


# # test
# python run.py sim \
# -mdp data/03_model_input/tsla.pkl \
# -st 2022-10-07 \
# -et 2023-04-10 \
# -rm test \
# -cp config/tsla_gemini_config.toml \
# -tap  ./data/06_train_checkpoint  \
# -ckp ./data/08_test_checkpoint \
# -rp ./data/09_results
# # test-checkpoint
# python run.py sim-checkpoint \
# -ckp /workspace/ofcourseistillloveyou-exp/data/06_train_checkpoint \
# -rp data/05_train_model_output \
# -cp config/tsla_gemini_config.toml \
# -rm test
# save file
# python save_file.py
