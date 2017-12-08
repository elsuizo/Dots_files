#= -------------------------------------------------------------------------
# @file keys.py
#
# @date 12/08/17 13:49:57
# @author Martin Noblia
# @email mnoblia@disroot.org
#
# @brief
#
# @detail
#
#  Licence:
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License

#---------------------------------------------------------------------------=#
#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Customized key bindings.

from ranger.api.keys import *

map = keymanager.get_context('browser')
@map("ef")
def edit_file_in_new_tmux_pane(arg):
    command = "shell tmux new-window 'vim " + arg.fm.env.cf.basename + "'"
    if 'TMUX' in os.environ.keys(): arg.fm.execute_console(command)


