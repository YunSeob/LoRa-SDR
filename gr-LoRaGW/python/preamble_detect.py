#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2022 preamble_detect.
#
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
#


import numpy as np
from gnuradio import gr
import time

class preamble_detect(gr.basic_block):
    """
    docstring for block preamble_detect
    """
    def __init__(self, sf, threshold, preamble_length):
        gr.basic_block.__init__(self,
            name="preamble_detect",
            in_sig=[np.complex64],
            out_sig=[np.complex64])
        self.M = 2**sf
        self.threshold = threshold
        self.preamble_length = preamble_length
        # self.set_output_multiple(self.M)

    def forecast(self, noutput_items, ninput_items_required):
        #setup size of input_items[i] for work call
        print('--------- Forecast Function ----------')
        print('len(ninput_items_required) : ', len(ninput_items_required))
        for i in range(len(ninput_items_required)):
            ninput_items_required[i] = noutput_items

    def general_work(self, input_items, output_items):
        print('### length : ', len(input_items[0]))
        print('### length output : ', len(output_items[0]))
        time.sleep(5)
        # output_items[0][:] = input_items[0]
        # self.consume(0, self.M)
        # consume(0, self.M)        #self.consume_each(len(input_items[0]))
        # return len(output_items[0])

        in0 = input_items[0][:len(output_items[0])]
        out = output_items[0]

        out[:] = in0

        self.consume(0, len(in0))
        return len(out)
        
