Running the code
================

Compiling pcifuncs
------------------
Several functions have been written as C extensions in order to improve speed. These need to be precompiled before they may be imported. Compiling is handled by running the ``setup.py`` script with the following options from the working directory:

.. code-block:: console

   $ python3 setup.py build_ext --inplace

where the contents of ``setup.py`` are as follows:

.. literalinclude:: ../../../../XPCI/setup.py

The run file
------------
A run script is recommended (an example is provided in ``run_example.py``). The following will detail the main elements of a simulation.

**Import modules**

.. literalinclude:: ../../../../XPCI/run_example.py
   :lines: 1-2

**Define source**

.. literalinclude:: ../../../../XPCI/run_example.py
   :lines: 4-8

**Define object**

.. literalinclude:: ../../../../XPCI/run_example.py
   :lines: 10-17

**Define detector**

.. literalinclude:: ../../../../XPCI/run_example.py
   :lines: 19-27

**Calculate PCI image**

.. literalinclude:: ../../../../XPCI/run_example.py
   :lines: 29-45