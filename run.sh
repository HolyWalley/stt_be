#! /bin/bash

curl -s -X POST \
	-H "Content-Type: application/json" \
	-d $'{
    "input": {
      "file": "https://replicate.delivery/pbxt/KVAyOIfjNxM9M6v3aXPGtRnvI6momTc7bZ6Q0BPsgNiELWpr/pahonia.wav"
    }
  }' \
	http://localhost:5002/predictions
