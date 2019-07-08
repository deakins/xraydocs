Installation
============

OSX
---

virtualenv
..........

A virtual environment is very useful for managing different Python/module versions, and thereby avoid conflict between the host system, environment variables, etc. To install `virtualenv`, issue the following command (you may need to install pip if not already present):

.. code-block:: console

   $ pip3 install virtualenv, virtualenvwrapper

Add the following lines to your ``.bash_profile``:

.. code-block:: console

   export VIRTUALENVWRAPPER_PYTHON = /installation/location/bin/python3
   source /installation/location/bin/virtualenvwrapper.sh

where ``/installation/location/bin/`` is where the bash script ``virtualenvwrapper.sh`` was installed. This is usually where
your python3 binary is found.
For me, it was ``/Library/Frameworks/Python.framework/Versions/3.6/bin/``

Once installed, issue the following to setup your virtual environment with Python3:

.. code-block:: console

   $ mkvirtualenv -p python3 venv
   
where ``venv`` is the name of the virtual environment.

Enabling the virtual environment is as simple as issuing the following:

.. code-block:: console

   $ workon venv

and exiting the environment with ``deactivate``.

Once in the virtual environment, install the various Python dependencies:

.. code-block:: console

   $ pip3 install pyabel
   $ pip3 install numpy
   $ pip3 install scipy
   $ pip3 install matplotlib
   

xraylibs
........

Download the latest `xraylib` project (https://github.com/tschoonj/xraylib) into a working directory. Navigate to the directory and issue the following command:

.. code-block:: console

   $ ./configure --prefix=/user/home/directory/.virtualenvs/xrenv/ --enable-python-integration

where ``/user/home/directory/`` should be replaced with the correct value for your profile, e.g. ``/Users/deakins/``.

Source Python code
------------------

Main `xray` module:
:download:`xray.py <../../../../XPCI/xrays.py>`

Object creation module:
:download:`objects.py <../../../../XPCI/objects.py>`

Example `run` file:
:download:`run.py <../../../../XPCI/run_example.py>`

.. literalinclude:: ../../../../XPCI/run_example.py