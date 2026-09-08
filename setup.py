from setuptools import setup, find_packages

VERSION = "0.1.1"
DESCRIPTION = "CRSMEX Python package"
LONG_DESCRIPTION = "Characteristic repeating earthquake package."

setup(
    name="crsmex",
    version=VERSION,
    author="Luis A. Dominguez",
    author_email="ladominguez12@gmail.com",
    description=DESCRIPTION,
    long_description=LONG_DESCRIPTION,
    packages=find_packages(),
    install_requires=[
        "numpy>=1.26",
        "scipy>=1.11",
        "matplotlib>=3.8",
        "obspy>=1.4",
        "pandas>=2.2",
    ],
    python_requires=">=3.9",
    keywords=[
        "python",
        "earthquake",
        "seismology",
    ],
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Science/Research",
        "Programming Language :: Python :: 3",
    ],
)
