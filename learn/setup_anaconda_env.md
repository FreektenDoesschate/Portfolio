
# Setup anaconda environment for python project

A anaconda environment(env) is a virtual env that can be used for datascience projects. You install the specific versions of python and packages that you want to use for your project.
If the env is activated, you have all package versions at your disposal. This provides a stable env to run your analysis and allows you to use different package versions for different projects.

## Create environment

After you installed [conda](https://anaconda.org), use it to create a new environment. In this case the env is calles "politiekeindex", with python 3.9 installed. It also installs pip (a program used to install specific python packages) and some other stuff.
Open a terminal and run the following command:
```console
conda create --name politiekeindex python=3.9
```

List all envs to check if it is actually created

```console
conda info --envs   
```
Activate the newly created environment:

```console
conda activate politiekeindex   
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
conda install -n politiekeindex pypdf2
```

Check if your package can be imported in python using jupyter-lab. Open jupyter-lab in the terminal:
```console
jupyter-lab
```
Within jupyter-lab run:
```python
import PyPDF2

help(PyPDF2)
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
conda activate politiekeindex
```
