
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>

void divide_by_13(hls::stream< ap_axis<32,2,5,6> > &A,hls::stream< ap_axis<32,2,5,6> > &B);