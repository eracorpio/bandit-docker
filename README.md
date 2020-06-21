# bandit-docker
Bandit Dockerfile for pipeline jobs.

## Running Bandit Scan
'''sh
docker run --rm -v $(pwd):/bandit eracorp/bandit:v1.0 -r . -f json -o result.json
'''