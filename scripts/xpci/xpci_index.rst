X-ray Diagnostic Simulator Documentation
========================================

Welcome to the X-ray docs documentation for the Dynamic Behaviour of Materials Group. The
following pages are here to provide an overview of the X-ray simulation software.

The latest version of the python code and associated files can be pulled from the following repositories:

.. code-block:: console

   $ git clone ssh://git@daneakins.com:55/volume1/git/python_xpci.git <dest-directory>

.. code-block:: console

   $ git clone ssh://gituser@163.1.15.221:55/git/python_xpci.git <dest-directory>

Alternatively, the key files can be directly downloaded from the following links (although may be out of date):

Main `xray` module:
:download:`xray.py <../../../../XPCI/xrays.py>`

Object creation module:
:download:`objects.py <../../../../XPCI/objects.py>`

Cython compiler script:
:download:`setup.py <../../../../XPCI/setup.py>`

pcifuncs C extension:
:download:`pcifuncs.pyx <../../../../XPCI/pcifuncs.pyx>`

Spectrum:
:download:`spectrum.txt <../../../../XPCI/spectrum.txt>`

Example `run` file:
:download:`run.py <../../../../XPCI/run_example.py>`

.. toctree::
   :hidden:
   :maxdepth: 2
   
   Dependencies <xpci_dependencies>
   
.. toctree::
   :hidden:
   :maxdepth: 2
   
   Installation <xpci_installation>

.. toctree::
   :hidden:
   :maxdepth: 2
   
   Running the code <xpci_running>

.. toctree::
   :hidden:
   :maxdepth: 2
   
   Python modules <xpci_codeindex>