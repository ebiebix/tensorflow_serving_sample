# tensorflow_serving_sample

### useage
1. save sample_model
execute `sample_model.ipynb`. the sample_model is saved to `src/sample_model/000123'

2. build a local server
`sh build_local_server.sh`

3. send a sample request
    a. open new terminal
    b. `curl -X POST -d @body.json http://localhost:8501/v1/models/sample_model:predict`