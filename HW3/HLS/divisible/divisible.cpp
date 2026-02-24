
int counter = 0;
void divisible(int a, int& c) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE s_axilite port=a
#pragma HLS INTERFACE s_axilite port=c

   c = !(a % 13);
   counter = c;
}