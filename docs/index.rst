pp-fastsim-sbi documentation
============================

Welcome to the pp-fastsim-sbi docs. This project explores end-to-end **fast simulation**
and **simulation-based inference (SBI)** for detector response.

What’s here now
---------------
- Minimal Sphinx setup so docs can build.
- We’ll add API and usage pages as code lands.

Build instructions
------------------
From the repo root:

1. Make sure Sphinx is installed in your environment::

   conda install -n pp-fastsim-sbi -c conda-forge sphinx

2. Build the HTML docs::

   sphinx-build -b html docs docs/_build/html

3. Open the docs home page (macOS)::

   open docs/_build/html/index.html

Next steps
----------
- Add a ``docs`` target to the top-level Makefile so you can run ``make docs``.
- Add API/autodoc pages after we add code under ``src/``.
