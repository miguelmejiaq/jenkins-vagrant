## Jenkins environment using vagrant

### Configure SSH folder

```bash
mkdir ssh && ssh-keygen -t rsa -b 2048 -f "$(pwd)/ssh/vagrant_key"
```

### Configure virtual environment

##### using Python

```bash
python -m venv .venv
```

##### using Python3

```bash
python3 -m venv .venv
```

##### Activate virtual environment and configure ansible

```bash
source .venv/bin/activate
pip install ansible
```