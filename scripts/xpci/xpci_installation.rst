Installation
============

OSX
---

pip
...

Pip is a package manager for Python that is needed to install the ``virtualenv`` and ``virtualenvwrapper`` dependencies. Pip can be installed by issuing the following command within a terminal:

.. code-block:: console

   $ sudo apt-get install python3-pip

virtualenv
..........

A virtual environment is very useful for managing different Python/module versions, and thereby avoid conflict between the host system, environment variables, etc. To install `virtualenv`, issue the following command:

.. code-block:: console

   $ pip3 install virtualenv
   $ pip3 install virtualenvwrapper

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

   $ pip3 install numpy
   $ pip3 install scipy
   $ pip3 install pyabel
   $ pip3 install matplotlib
   $ pip3 install numba
   $ pip3 install scikit-image
   $ pip3 install pyfftw
   $ pip3 install cython

xraylibs
........

Download the latest `xraylib` project (https://github.com/tschoonj/xraylib) into a working directory. Navigate to the directory and issue the following command:

.. code-block:: console

   $ ./configure --prefix=/user/home/directory/.virtualenvs/venv/ --enable-python-integration

where ``/user/home/directory/`` should be replaced with the correct value for your profile, e.g. ``/Users/deakins/``, and ``venv`` with the name of the virtual environment chosen previously. It is important that the configure script completes with the following confirmation that Python bindings (not Python-NumPy) will be built.

.. code-block:: console

   configure: Building xraylib with bindings for:
   configure: Python

Once this command completes successfully, run the following command to build and install the library:

.. code-block:: console

   $ make install

**Issues**

Errors encountered during ``configure`` may indicate a lack of certain compilers. Depending upon the version of Mac OS, different remedies may be needed:

1. Pre-Mojave, install Command-line Tools

   Note, on a Mac you may need to install command-line tools within the virtualenvironment. Type ``xcode-select --install`` to initiate the installer.

2. Mojave, run command-line tools package

   <Add instructions>

3. Catalina, add environment variable

   For Catalina, you need to add the following to your ``.bash_profile``:

   .. code-block:: console

      export CPATH=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/