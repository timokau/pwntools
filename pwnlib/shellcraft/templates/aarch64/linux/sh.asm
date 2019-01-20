<% from pwnlib import shellcraft as SC %>
<%docstring>
Execute a different process.

.. doctest::
   :skipif: not binutils_aarch64 or not qemu_aarch64

    >>> p = run_assembly(shellcraft.aarch64.linux.sh())
    >>> p.sendline('echo Hello')
    >>> p.recv()
    'Hello\n'

</%docstring>
    ${SC.pushstr('/bin///sh')}
    ${SC.execve('sp', 0, 0)}
