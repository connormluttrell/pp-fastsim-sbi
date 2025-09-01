Bootstrap: docker
From: condaforge/miniforge3:24.3.0-0

%files
    environment.yml /tmp/environment.yml

%post
    conda env create -f /tmp/environment.yml
    conda clean -afy

%environment
    export PATH=/opt/conda/envs/pp-fastsim-sbi/bin:$PATH
    export CONDA_DEFAULT_ENV=pp-fastsim-sbi

%runscript
    exec conda run -n pp-fastsim-sbi "$@"
