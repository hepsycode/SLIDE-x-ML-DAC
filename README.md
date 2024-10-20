# SLIDE-x-ML-ESL
**S**ystem-**L**evel **I**nfrastructure for HW/SW **D**ataset **E**-**x**traction and **M**achine **L**earning Model Building (Version for the 61st Design Automation Conference)

<p><img src="img/SLIDE-x-ML-logo-New.png" width="250" height="250"></p>

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Installation instructions

### OVERVIEW
SLIDE-x-ML is an open-source Python tool that facilitates the System-Level HW/SW Co-Design of embedded systems and Cyber-Physical Systems (CPSs) through the creation of HW/SW ML models using machine learning frameworks and tools, including MATLAB Statistics and Machine Learning Toolbox (for MATLAB) and TensorFlow/Keras/PyTorch/Scikit-Learn (for Python). These HW/SW ML models can be used to evaluate HW and SW performance, select the most suitable embedded platform, and perform HW and SW trade-off analysis.

### SLIDE-x Main Components
SLIDE-x consists of the following components:

1. **SLIDE-x-Ingestion**: Extensible Python Dataset Ingestion component for collecting datasets generated with the SLIDE-x Profiling/Simulation tool. <!-- It also offers functionalities for implementing unified HW metrics (e.g., CC4CS, CC4IR, CC4SSA, CC4OPT, Affinity), performing statistical analysis, and comparing different platforms. --> The SLIDE-x-Ingestion is composed of:
    - **Collect Raw Data & Clean**: Clean and store the dataset as a CSV file for interoperability between tools (from Python to Matlab or other tools). 
2. **SLIDE-x-Feature-Engineering**: Extensible Python component dedicated to feature creation, data analysis, and feature selection to create datasets useful for ML prediction. The SLIDE-x-Feature-Engineering is composed of:
    - **SILDE-x-Feature-Creation**: Input data are categorized into scalars, arrays, and matrices. All the preceding data are also characterized by their ranges.  While scalar input data, array input data, and range definitions are extracted as-is from the SLIDE-x-DXXX dataset repositories, input data matrices are treated similarly to images in a Convolutional Neural Network. Features are extracted using convolution and subsampling operations. SLIDE-x-DXXX dataset repositories are injected with data produced by the SLIDE-x framework: https://github.com/hepsycode/SLIDE-x. 
    - **SILDE-x-Data-Analysis**: Data Analysis (i.e., correlation and heatmaps) are applied to the SLIDE-x-DXXX dataset repositories (including features from arrays matrices reduced with CNN).
    - **SILDE-x-Feature-Selection**: Four regressor models are employed for feature analysis. The average value of regression model results, reduced by a confidence interval of 99%, is utilized as the lower bound to select the most important features.
3. **SLIDE-x-Model-Engineering**: HW ML-based component for creating System-Level HW Co-Design models using machine learning frameworks and tools. The SLIDE-x-Model-Engineering is composed of:
    - **SILDE-x-Data-Preparation**: Following the feature analysis process, the most significant features have been considered, and a dataset for each target and HW/SW processor is created.
    - **SILDE-x-Model-Training**: ML algorithms have been trained to predict HLS and ISS simulation reports.
    - **SILDE-x-Model-Validation**: ML validation metrics are used to identify the best algorithm and hyperparameter configuration.
    - **SILDE-x-Model-Export**: ML models are deployed for subsequent use in an HW/SW co-design simulation environment.

### WEBSITE
[www.HEPSYCODE.com](https://hepsycode.github.io/)

### DOWNLOAD
SLIDE-x-ML is open-source and freely available on GitHub: https://github.com/hepsycode/SLIDE-x-ML-ESL.

### GETTING STARTED GUIDELINES
The framework is implemented in Python3 and uses the csv, os, shutil, subprocess, tkinter libraries for internal operations. Thus, Python3 and the above-listed libraries should be installed for the framework to run properly. 

### RELEASE NOTES
Latest Release: 2.0.0
 
### LICENSE
GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 (see https://www.gnu.org/licenses/gpl-3.0.en.html)
 
### DEVELOPER RESOURCES
Source Repositories: [https://github.com/hepsycode/SLIDE-x-ML](https://github.com/hepsycode/SLIDE-x-ML-ESL)

- Clone: 
    - ssh: [git@github.com:hepsycode/SLIDE-x-ML.git](git@github.com:hepsycode/SLIDE-x-ML-ESL.git)
    - https: [https://github.com/hepsycode/SLIDE-x-ML.git](https://github.com/hepsycode/SLIDE-x-ML-ESL.git)
 
You can use the code from these repositories to experiment, test, build, and create patches, and issue pull requests (only by request).
For any bug or doubt, contact us or open an issue.

### SUPPORT
We currently support:

 1. Email: 
    - Vittoriano Muttillo:
       - vittoriano.muttillo@guest.univaq.it,
       - vmuttillo@unite.it
       - vittoriano.muttillo@gmail.com
    - Vincenzo Stoico:
    	- v.stoico@vu.nl
    - (please take care to use \[SLICE-x SUPPORT\] as object
 2. Issues on GitHub

## Additional information
Research publications are available at https://hepsycode.github.io/.

## How to Cite?
If you use SLIDE-x-ML in your research, please cite: **REMOVED FOR DOUBLE BLIND REVIEW**
