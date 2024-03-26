from setuptools import setup, find_packages
import os

lib_folder = os.path.dirname(os.path.realpath(__file__))
requirement_path = f"{lib_folder}/requirements.txt"
install_requires = []
if os.path.isfile(requirement_path):
    with open(requirement_path) as f:
        install_requires = f.read().splitlines()

VERSION = '0.0.1' 
DESCRIPTION = 'CRSMEX Python package'
LONG_DESCRIPTION = 'Characteristic repeating earthquake package.'

# Setting up
setup(
       # the name must match the folder name 'verysimplemodule'
        name="crsmex", 
        version=VERSION,
        author="Luis A. Dominguez",
        author_email="<ladominguez12@gmail.com>",
        description=DESCRIPTION,
        long_description=LONG_DESCRIPTION,
        packages=find_packages(),
        install_requires=install_requires, # add any additional packages that 
        # needs to be installed along with your package. Eg: 'caer'
        
        keywords=['python', 'earthquake'],
        classifiers= [
            "Development Status :: 3 - Alpha",
            "Intended Audience :: Education",
            "Programming Language :: Python :: 2",
            "Programming Language :: Python :: 3",
            "Operating System :: MacOS :: MacOS X",
            "Operating System :: Microsoft :: Windows",
        ]
)
