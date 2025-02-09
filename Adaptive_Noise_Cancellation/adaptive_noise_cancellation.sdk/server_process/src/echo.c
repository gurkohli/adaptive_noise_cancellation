/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#include "lwip/udp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

volatile u32* AUDIOCHIP = ((volatile u32*)0x43C00000);


struct udp_pcb *udp_connected;


struct pbuf *p;

int is_connected_to_server = 0;
int buflen = 500;
int i = 0;
const int SAMPLES = 10;
int transfer_data() {
	p = pbuf_alloc(PBUF_TRANSPORT, buflen, PBUF_POOL);
	if (!p)
	{
		xil_printf("error allocating pbuf \r\n");
		return ERR_MEM;
	}
	int arr[SAMPLES];
	i++;
	int samples = 0;
	while (1) {
		// WAIT FOR DAC FIFO TO BE EMPTY.
		if ((AUDIOCHIP[0] & 1<<3)!=0) {
			u32 temp = AUDIOCHIP[2];
			AUDIOCHIP[1] = temp;
			arr[samples] = temp;
			samples++;
			if (samples >= SAMPLES) {
				break;
			}
		}
	}

	memcpy(p->payload, arr, samples*4);
	udp_send(udp_connected, p);
	pbuf_free(p);
	return 0;
}

void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP TCP Client ------\n\r");
}

int start_application()
{
		struct udp_pcb *pcb;
		err_t err;
		unsigned port = 7;

		/* create new TCP PCB structure */
		pcb = udp_new();
		if (!pcb) {
			xil_printf("Error creating PCB. Out of Memory\n\r");
			return -1;
		}

		/* bind to specified @port */
		err = udp_bind(pcb, IP_ADDR_ANY, port);
		if (err != ERR_OK) {
			xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
			return -2;
		}

		struct ip_addr server_ip_addr;
		IP4_ADDR(&server_ip_addr,  192, 168,   1, 10);

		xil_printf("Sending connection request to server ...\n\r");

		err = udp_connect(pcb, &server_ip_addr, 7);
		if (err != ERR_OK) {
			xil_printf("Cannot connect to server\n\r", port, err);
			return -3;
		}
		udp_connected = pcb;
		AUDIOCHIP[0] = 3; // Reset FIFOs.

	return 0;
}

