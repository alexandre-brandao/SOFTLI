/***************************************************************************//**
 *   @file   wifi.h
 *   @brief  Wifi interface for ESP8266
 *   @author Mihail Chindris (mihail.chindris@analog.com)
********************************************************************************
 *   @copyright
 * Copyright 2020(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

#ifndef WIFI_DRIVER_H
#define WIFI_DRIVER_H

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/

#include <stdint.h>
#include "network_interface.h"
#include "uart.h"
#include "irq.h"

/******************************************************************************/
/*************************** Types Declarations *******************************/
/******************************************************************************/

/**
 * @struct wifi_desc
 * @brief Wifi descriptor
 */
struct wifi_desc;

/**
 * @struct wifi_init_param
 * @brief Parameter to initialize Wifi
 */
struct wifi_init_param {
	/** Uart descriptor where ESP8266 is connected */
	struct uart_desc	*uart_desc;
	/** Irq controler descriptor */
	struct irq_ctrl_desc	*irq_desc;
	/** Id of the UART interrupt */
	uint32_t		uart_irq_id;
	/** Configuration param for registering uart callback */
	void			*uart_irq_conf;
};

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/

/* Wifi init */
int32_t wifi_init(struct wifi_desc **desc, struct wifi_init_param *param);
/* Wifi remove */
int32_t wifi_remove(struct wifi_desc *desc);
/* Wifi connect */
int32_t wifi_connect(struct wifi_desc *desc, const char *ssid,
		     const char *pass);
/* Wifi disconnect */
int32_t wifi_disconnect(struct wifi_desc *desc);
/* Wifi get network interface */
int32_t wifi_get_network_interface(struct wifi_desc *desc,
				   struct network_interface **net);
/* Wifi get ip interface */
int32_t wifi_get_ip(struct wifi_desc *desc, char *ip_buff, uint32_t buff_size);

#endif
