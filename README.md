# pp-fastsim-sbi

End-to-end **fast simulation** and **simulation-based inference (SBI)** for a particle-detector response (Geant4 ground truth → ML/param surrogate → SBI).

## Goals (high level)
- Build a minimal Geant4 truth pipeline and store event data in HDF5.
- Train a fast surrogate to mimic detector observables (much faster than Geant4).
- Use simulation-based inference (SBI) to recover latent parameters (e.g., calibration, material).
- Package everything so a small end-to-end run is reproducible on a fresh machine.

## Getting started
1) Create the environment:
   ```bash

   conda env create -f environment.yml
   conda activate pp-fastsim-sbi
