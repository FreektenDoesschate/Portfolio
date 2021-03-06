#run code in terminal with anaconda already installed. Change 'myenv' instances with how you want to name your environment. See setup_anaconda_env.md to configure jupyterlab-lsp

conda config --append channels conda-forge
conda create -n myenv -y python=3.9 jupyterlab jupyterlab-lsp jupyterlab_code_formatter black isort numpy pandas matplotlib plotly scikit-learn xgboost dalex
conda activate myenv
pip install 'python-lsp-server[all]' lckr-jupyterlab-variableinspector aquirdturtle_collapsible_headings
pip install --upgrade bamboolib --user
python -m bamboolib install_labextensions 
pip install openpyxl

