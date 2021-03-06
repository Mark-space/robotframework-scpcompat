SCPLibrary for Robot Framework
==============================

Introduction
------------

SCPLibrary is a `Robot Framework <http://robotframework.org>`__ test
library for performing Secure Copy (SCP) operations over SSH. Unlike
the other SCPLibrary ('robotframework-scplibrary'), this one works
hand in hand with the Robot SSHLibrary (hence
'robotframework-scpcompat').

I wrote this because I was frustrated that the non-compatible
SCPLibrary overwrote some SSHLibrary keywords and managed connections
itself. I did consider changing the existing library, but that would
break it for existing users.

To recap, the main differences are:

- Relies on the standard SSHLibrary to manage connections
- ``Download File`` and ``Upload File`` keywords use the currently
  active SSH connection to transfer files to the remote host
- Does not conflict with any SSHLibrary keywords
- Can even use an existing connection used for other SSH commands

It is operating system independent, but has only been tested with
Python. Strictly speaking, the underlying 'scp' module is also pure
Python, so let me know if you have any luck with Jython or
IronPython.

SCPLibrary is open source software licensed under `GNU General Public
License v3 <https://www.gnu.org/licenses/gpl-3.0.en.html>`__.

Installation
------------

When installing SCPLibrary on UNIX-like machines with Python, the
easiest approach is using `pip <http://pip-installer.org>`__::

    pip install robotframework-scpcompat

Note while this library supports both Python 2 and 3, SSHLibrary does
not. So until SSHLibrary fixes `issue #144
<https://github.com/robotframework/SSHLibrary/issues/144>`__ it
doesn't make sense to use Python 3. Hopefully though, once it's
resolved this library should also work with Python 3.

Documentation
-------------

The library is self-documenting via docstrings; additionally you can
find an example robot script in this repository. You can run it
against any host with SSH password authentication::

    robot -v host:xxx -v user:xxx -v pass:xxx example.robot

The `scp module documentation <https://pypi.python.org/pypi/scp>`__
is also helpful, as this library is basically a wrapper around it.

For general information about using test libraries with Robot
Framework, see `Robot Framework User Guide`__.

__ http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#using-test-libraries
