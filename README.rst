bruker2bart
===========

.. image:: https://zenodo.org/badge/DOI/10.5281/zenodo.3900113.svg
   :target: https://doi.org/10.5281/zenodo.3900113

A Python package providing data format conversion between Bruker and `The Berkeley Advanced Reconstruction Toolbox <https://mrirecon.github.io/bart/>`_ (BART) data formats.
It also provides several examples preforming reconstruction of Bruker data using BART.

Install
=======

.. code-block:: shell

    git clone https://github.com/isi-nmr/bruker2bart.git
    cd bruker2bart
    python setup.py build
    python setup.py install

Examples
========
We provide a set of examples to demonstrate the functionality of bruker2bart. To run these examples, please download our testing data set:

.. code-block:: shell

    pip install zenodo_get
    zenodo_get 10.5281/zenodo.3894651
    unzip 20200612_094625_lego_phantom_3_1_2.zip.zip

Now it is necessary to set two environment variables.
The `PATH_DATA` variable should be set to the parent directory of the downloaded data.
The `PATH_RESULTS` variable should be set to the directory where you wish to store store results of the reconstructions.

.. code-block:: shell

    export PATH_DATA=/home/user/data
    export PATH_RESULTS=/home/user/tmp

Then you can run any of the scripts located in the `examples` folder such as the 2D NUFFT.

.. code-block:: shell

    ./bruker-2d-nufft.sh

The following reconstruction examples are currently avaliable:

* 2D FFT (bruker-2d-fft.sh)
* 3D FFT (bruker-3d-fft.sh)
* 2D NUFFT (bruker-2d-nufft.sh)
* 3D NUFFT (bruker-3d-nufft.sh)

Acknowledgement
================

Part of this software is the clf.py file from BART official repository created by:

* Martin Uecker <uecker@eecs.berkeley.edu>
* Jonathan Tamir <jtamir@eecs.berkeley.edu>
