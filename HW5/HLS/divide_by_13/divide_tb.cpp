/*
 * Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
 * Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "divide_by_13.h"

#define SIZE 15
using namespace std;
typedef ap_axis<32, 2, 5, 6> packet;
int main()
{

    hls::stream<packet> A, B;
    packet tmp1, tmp2;

    for (int j = 0; j < SIZE; j++)
    {

        tmp1.data = j;
        tmp1.keep = -1;
        tmp1.strb = 1;
        tmp1.user = 1;
        if (j == SIZE - 1)
        {
            tmp1.last = 1;
        }
        else
        {
            tmp1.last = 0;
        }
        A.write(tmp1);
    }
    divide_by_13(A, B);
    for (int j = 0; j < SIZE; j++)
    {
        B.read(tmp2);

        if (!(j % 13) != tmp2.data.to_int())
        {
            cout << "ERROR: results mismatch" << endl;
            cout << "tmp1.data=" << tmp1.data;
            cout << " != ";
            cout << "tmp2.data=" << tmp2.data << endl;
            return 1;
        }
    }

    cout << "Success: Max's results match" << endl;
    return 0;
}