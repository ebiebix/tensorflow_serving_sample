export TESTDATA="$(pwd)/src"

docker run -it --rm -p 8501:8501 -v "$TESTDATA:/models/" tensorflow/serving --model_config_file=/models/models.config --batching_parameters_file=/models/batch.config --enable_batching=true