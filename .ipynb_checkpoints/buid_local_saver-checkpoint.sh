export TESTDATA="$(pwd)/src"

docker run -it --rm -p 8501:8501 -v "$TESTDATA:/models/" tensorflow/serving --model_config_file=/models/models.config --model_config_file_poll_wait_seconds=60 --batching_parameters_file=/models/batch.config --enable_batching=true