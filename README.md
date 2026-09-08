# CRSMEX

CRSMEX is a Python package for characteristic repeating earthquake analysis.

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/ladominguez/crsmex_package.git
cd crsmex_package
```

### 2. Create and activate a Python environment

For example, using Conda:

```bash
conda create -n crsmex python=3.12
conda activate crsmex
```

### 3. Install CRSMEX

For development, install the package in editable mode:

```bash
python -m pip install -e .
```

The editable installation means that changes made to the source code are immediately available without reinstalling the package.

For a regular installation, use:

```bash
python -m pip install .
```

The package automatically installs its required dependencies:

* NumPy
* SciPy
* Matplotlib
* ObsPy
* Pandas

### 4. Verify the installation

Run:

```bash
python -c "import crsmex; print(crsmex.__file__)"
```

The output should point to the `crsmex` directory inside the cloned repository.

## Development

If you are modifying CRSMEX, use the editable installation:

```bash
python -m pip install -e .
```

After modifying the source code, there is no need to reinstall the package.

## Requirements

The file `requirements.txt` contains the versions of the packages used for the development environment and can be used when reproducing that environment.

## Notes

The package should be installed with `pip`. The older command:

```bash
python setup.py install
```

is deprecated and should not be used.

It is also no longer necessary to manually add the CRSMEX directory to `PYTHONPATH` when the package is installed with pip.
