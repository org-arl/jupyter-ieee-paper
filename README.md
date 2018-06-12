# Jupyter notebook to generate IEEE papers

This is a simple Jupyter notebook to demonstrate how fully formatted IEEE papers can directly be generated from Jupyter notebooks. The template is not very sophisticated, but shows how most common requirements (e.g. title block, abstract, citations, section numbering & referencing, equations, equation numbering & referencing, figure numbering & referencing, etc) can be easily met.

## Quick start

To use this for your own papers, simply fork or clone this repository and edit the Jupyter notebook `paper.ipynb` and references `references.bib`. To generate the pdf version, simply open a terminal in the folder and type `make`.

If you need a single-column version for review, simply edit the metadata in the notebook and add `"options": "journal,onecolumn"` entry to the `latex_metadata` section.

## Dependencies

You will certainly need the following installed:

- python 3
- jupyter notebook
- latex

The example template has the following additional dependencies:

- arlpy
- selenium
- pillow
- phantomjs

These allow high quality `bokeh` plots to be included in your paper. However, feel free to use `matplotlib` instead, if you prefer.
