# Minimal Sphinx configuration for pp-fastsim-sbi

import os
import sys

# If you later want autodoc, uncomment this to add your src path:
# sys.path.insert(0, os.path.abspath('../src'))

project = 'pp-fastsim-sbi'
author = 'Connor Luttrell'
release = '0.1.0'

# Keep this minimal so we don't need extra extensions yet
extensions = []

templates_path = ['_templates']  # ok if this directory doesn't exist
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# Built-in theme (no extra installs needed)
html_theme = 'alabaster'
