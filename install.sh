echo "-------------------------------------------------------------------------------"
echo "Installing Miniconda3"
echo "-------------------------------------------------------------------------------"
echo "Troubleshoot:"
echo "1. In case the miniconda download fails, just re-run the script"
echo "2. In case the environment setup fails due to HTTP ERROR, try using the manual command to resume:"
echo "conda create -n tensor python=3.6 numpy scipy matplotlib ipython jupyter pandas sympy nose seaborn scikit-learn tensorflow -y"
echo

# Download the setup and run it.
# WARNING: Despite the -b switch for silent install, environment variables
# have to be set manually.
wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b

# Get the user name and set environment variable for this session. 
name=$(whoami)
export PATH="/home/$name/miniconda3/bin:$PATH"

# Creating an entry for the same in our .bashrc file if it doesn't exist.
found=$(grep -e "miniconda3" ~/.bashrc)
if [ -z "$found" ]
then
  echo >> ~/.bashrc
  echo '#Miniconda3 PATH' >> ~/.bashrc
  echo 'export PATH="/home/'$name'/miniconda3/bin:$PATH"' >> ~/.bashrc
  echo 'Environment variables successfully set for conda.'
fi

# Remove the setup files.
rm -f Miniconda3-latest-Linux-x86_64.sh

echo "--------------------------------------------------------------------------------"
echo "Configuring the virtual environment"
echo "--------------------------------------------------------------------------------"

# Update the conda package manager.
conda update -n base conda -y

# Create a virtual environment tensor with all the relevant packages.
conda create -n tensor python=3.6 numpy scipy matplotlib ipython jupyter pandas sympy nose seaborn scikit-learn tensorflow -y

echo "---------------------------------------------------------------------------------"
echo "Installation successfull"
echo "---------------------------------------------------------------------------------"
echo "For infromation about conda visit https://conda.io/docs/user-guide/getting-started.html"
echo "For information on running Jupyter Notebooks visit http://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/execute.html"
