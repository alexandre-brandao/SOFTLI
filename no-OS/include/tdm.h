/***************************************************************************//**
 *   @file   tdm.h
 *   @brief  Header file of TDM Interface
 *   @author Darius Berghe (darius.berghe@analog.com)
********************************************************************************
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
#ifndef TDM_H_
#define TDM_H_

#include <stdint.h>
#include <stdbool.h>

/**
 * @struct tdm_platform_ops
 * @brief Structure holding TDM function pointers that point to the platform
 * specific function
 */
struct tdm_platform_ops;

enum tdm_mode {
	TDM_MASTER_TX,
	TDM_MASTER_RX,
	TDM_SLAVE_TX,
	TDM_SLAVE_RX
};

/**
 * @struct tdm_init_param
 * @brief Structure holding the parameters for TDM initialization
 */
struct tdm_init_param {
	/** TDM operating mode: master/slave, tx/rx */
	enum tdm_mode mode;
	/** Useful data size in a slot, specified in number of bits */
	uint8_t data_size;
	/** Data offset in a slot, specified in number of bits as offset from MSbit */
	uint8_t data_offset;
	/** Data ordering (default: msb first) */
	bool data_lsb_first;
	/** Number of slots in a frame */
	uint8_t slots_per_frame;
	/** Frame sync polarity specifier (default: FS active high) */
	bool fs_active_low;
	/** Frame sync active length specified in number of bits */
	uint8_t fs_active_length;
	/** Frame sync is normally asserted on first bit of slot 0 of a frame, this specifier allows assertion on last bit of the previous frame */
	bool fs_lastbit;
	/** Specify whether data sampling occurs on SCK rising edge (default: on SCK falling edge) */
	bool rising_edge_sampling;
	/** Platform operation function pointers */
	const struct tdm_platform_ops *platform_ops;
	/**  TDM extra parameters (platform specific) */
	void *extra;
};

/**
 * @struct tdm_desc
 * @brief Structure holding TDM descriptor.
 */
struct tdm_desc {
	/** Platform operation function pointers */
	const struct tdm_platform_ops *platform_ops;
	/**  TDM extra parameters (device specific) */
	void *extra;
};

/**
 * @struct tdm_platform_ops
 * @brief Structure holding TDM function pointers that point to the platform
 * specific function
 */
struct tdm_platform_ops {
	/** TDM initialization operation function pointer */
	int32_t (*tdm_ops_init)(struct tdm_desc **, const struct tdm_init_param *);
	/** TDM read operation function pointer */
	int32_t (*tdm_ops_read)(struct tdm_desc *, void *, uint16_t);
	/** TDM write operation function pointer */
	int32_t (*tdm_ops_write)(struct tdm_desc *, void *, uint16_t);
	/** TDM remove operation function pointer */
	int32_t (*tdm_ops_remove)(struct tdm_desc *);
};

/* Initialize the TDM communication peripheral. */
int32_t tdm_init(struct tdm_desc **desc,
		 const struct tdm_init_param *param);

/* Free the resources allocated by tdm_init(). */
int32_t tdm_remove(struct tdm_desc *desc);

/* Read data. */
int32_t tdm_read(struct tdm_desc *desc,
		 void *data,
		 uint16_t bytes_number);

/* Write data. */
int32_t tdm_write(struct tdm_desc *desc,
		  void *data,
		  uint16_t bytes_number);

#endif // TDM_H_
