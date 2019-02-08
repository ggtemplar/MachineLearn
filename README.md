# MachineLearn
This repository consists of jupyter notebooks based on the book Hands-On Machine Learning with Scikit-Learn and Tensorflow.
The notebooks have my notes on machine learning as well as documented code that showcases application in real world. It's purpose is to serve as an introductory material for the subject while at the same time not being math heavy in any way.<br>

**Warning:** These notebooks are not compatible with `python2`.<br>
**Warning:** Git viewer might not render LaTeX code correctly, thus it is advised to download and view the notebook.

# Environment setup for beginners
**Note:** I will add the installation method for CUDA and Tensorflow GPU in the coming days.<br>

Most of the people figure out how to setup the environent for running these notebooks but incase you are having trouble, here is a way to get it up and running on linux (more specifically ubuntu and it's derivatives)<br>

**Recommended OS:** Linux Mint 18.3 "Sylvia" for mainly these reasons:<br>

-> Based on Ubuntu 16.04LTS and therefore, it supports a lot of software.<br>
-> Synaptic Package Manager makes it easier to install and manage repositories.<br>

## Install using the script provided
1. Download the repository and extract using archive manager.
2. `cd` into the directory and run the command `$ ./install.sh`<br>

**Note:** Script will name the environment 'tensor'.

## Manual Install
**Step 1:** Install miniconda3<br>

1. Download the setup from `https://conda.io/miniconda.html`.
2. Run the command `$ ./<file_name>.sh`
3. Let it install at `/home/<user_name>/miniconda3`
4. Let it add the environment variable to `~/.bashrc`. 

For more information on conda, visit https://conda.io/docs/user-guide/getting-started.html<br>

**Step 2:** Create a virtual environment and install the necessary libraries <br>

Run the following command <br>`$ conda create -n <environment_name> python=3.6
numpy scipy matplotlib ipython jupyter pandas sympy nose seaborn tensorflow`

**Step 3:** Running the notebooks
1. Run `$ source activate <environment_name>`
2. `cd` to where ever you extracted the repository.
3. Run the command `$ jupyter notebook`
4. To stop the notebook <kbd>ctrl</kbd> + <kbd>c</kbd> and then `[y]`.
5. To deactivate the environment `$ source deactivate`

For more information on jupyter notebooks, vist http://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/<br>

# Contents
**01. Basics of Machine Learning:** A high level overview of the terms associated with machine learning and an example to showcase the working of a machine learning model.

**02. End to End Project:** Insight into step by step creation of a machine learning model that helps estimate the housing price from real estate data. 

# References
1. Hands-On Machine Learning with Scikit-Learn and Tensorflow, Book by Aurélien Géron
2. Deep Learning, Book by Aaron Courville, Ian Goodfellow, and Yoshua Bengio
