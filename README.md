# Python CI/CD Docker Image

A Docker image designed for CI/CD pipelines with Python, AWS tools, and Node.js/Bun runtime environments.

## Contents

This image includes:
- Python 3.12 (slim base)
- AWS CLI v2
- AWS SAM CLI
- Node.js 20.x
- Bun 1.2.2

## Usage

Pull and run the image:
```bash
docker pull <registry>/<image-name>
docker run -it <registry>/<image-name>
```

## Installed Tools & Versions

The image comes with the following tools pre-installed:
- Python 3.12
- AWS CLI v2
- AWS SAM CLI
- Node.js 20.x
- Bun 1.2.2
- Additional utilities: curl, unzip, jq

## Environment

- Working directory is set to `/app`
- Bun is added to PATH at `/root/.bun/bin`

## Development

### Building the Image

```bash
docker build -t <image-name> .
```

### Testing the Image

The image verifies installations by running version checks for:
- Node.js
- Bun
- AWS CLI
- SAM CLI