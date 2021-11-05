
# Setup anaconda environment for python project

A anaconda environment(env) is a virtual env that can be used for datascience projects. You install the specific versions of python and packages that you want to use for your project.
If the env is activated, you have all package versions at your disposal. This provides a stable env to run your analysis and allows you to use different package versions for different projects.

This is a step-by-step tutorial. If you want to install all at once, run the code in [this](setup_anaconda_code.sh) file in your console with conda already installed.

## Create environment

After you installed [conda](https://anaconda.org), use it to create a new environment. In this case the env is called "test_env", with python 3.9 installed. It also installs pip (a program used to install specific python packages) and some other stuff.
Open a terminal and run the following command:
```console
conda create --name test_env python=3.9
```

List all envs to check if it is actually created

```console
conda info --envs   
```
Activate the newly created environment:

```console
conda activate test_env 
```

## install jupyter-lab
If you now list the envs again (using info --envs) you should see an * after your env. Within the env, use pip to install jupyter-lab

```console
pip install jupyterlab 
```

Check if you're able to run jupyter-lab within your env. If all is good, a browser should open showing jupyter lab.

```console
jupyter-lab 
```

## install packages in virtual env

To leave jupyter-lab, go back to your terminal and press control+c. Now to install the packages that you need, we first need to be able to connect to conda-forge (i.e., a channel with allmost all packages).
```console
conda config --append channels conda-forge
```
Now you will be able to install packages (in this case pypdf2) in your virtual invironment using:
```console
conda install -n test_env pandas
```

Check if your package can be imported in python using jupyter-lab. Open jupyter-lab in the terminal:
```console
jupyter-lab
```
Within jupyter-lab run:
```python
import pandas

help(pandas)
```

You should now see the help instructions for your package. (loading packages is case-sensitive, so make shure to spell it right!)

## Deactivate/reactivate

If you're done working in your virtual env: save your work, close jupyter-lab (control+c) in terminal, and deactivate your virtual env:

```console
conda deactivate
```
To start working again in the env:

If you're done working in your virtual env: save your work, close jupyter-lab (control+c) in terminal, and deactivate your virtual env:

```console
conda activate test_env
```


## List of handy jupyter extensions and python packages

Make sure you are in the environment in which you want to install, then run following code blocks

Jupyter extensions:
```console
# Handy helper functions (hover-over instructions etc), but nog sure how to configure:
conda install -y -c conda-forge jupyterlab-lsp
pip install 'python-lsp-server[all]'

# see which variables are used by your code:
pip install lckr-jupyterlab-variableinspector 

# formats code automatically + formatter-plugins:
conda install -y -c conda-forge jupyterlab_code_formatter  
conda install -y black isort

# enables collapsible headings in python:
pip install aquirdturtle_collapsible_headings
```

Python packages:
```console
# for array manipulation:
conda install -y numpy

# for data-frame manipulation:
conda install -y pandas

# for plotting:
conda install -y matplotlib

# for interactive-plotting:
conda install -y plotly

# many machine-learning tools:
conda install -y scikit-learn

# popular gradient-boosting algorithm:
conda install -y xgboost

# package for explainable machine learning:
conda install dalex
```


To configure jupyterlab-lsp, in jupyter-lab go to _Settings -> Advanced Settings Editor_ and under _language servers_ past the following under _User preferences_ (and click save button):

```json
{
  "language_servers": {
    "pylsp": {
      "serverSettings": {
        "pylsp.plugins.pydocstyle.enabled": true,
        "pylsp.plugins.pyflakes.enabled": false,
        "pylsp.plugins.flake8.enabled": true
      }
    },
    "r-languageserver": {
      "serverSettings": {
        "r.lsp.debug": false,
        "r.lsp.diagnostics": false
      }
    }
  }
}
```
