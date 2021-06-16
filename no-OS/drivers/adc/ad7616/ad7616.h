/***************************************************************************//**
 *   @file   ad7616.h
 *   @brief  Header file of AD7616 Driver.
 *   @author DBogdan (dragos.bogdan@analog.com)
 *   @author Antoniu Miclaus (antoniu.miclaus@analog.com)
********************************************************************************
 * Copyright 2016(c) Analog Devices, Inc.
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
#ifndef AD7616_H_
#define AD7616_H_

#include "gpio.h"

/******************************************************************************/
/********************** Macros and Constants Definitions **********************/
/******************************************************************************/
/* AD7616 CORE */
#define AD7616_REG_PCORE_VERSION		0x400
#define AD7616_REG_ID					0x404
#define AD7616_REG_UP_SCRATCH			0x408
#define AD7616_REG_UP_IF_TYPE			0x40C
#define AD7616_REG_UP_CTRL				0x440
#define AD7616_REG_UP_CONV_RATE			0x444
#define AD7616_REG_UP_BURST_LENGTH		0x448
#define AD7616_REG_UP_READ_DATA			0x44C
#define AD7616_REG_UP_WRITE_DATA		0x450

/* AD7616_REG_UP_CTRL */
#define AD7616_CTRL_RESETN				(1 << 0)
#define AD7616_CTRL_CNVST_EN			(1 << 1)

#define AD7616_REG_CONFIG				0x02
#define AD7616_REG_CHANNEL				0x03
#define AD7616_REG_INPUT_RANGE_A1		0x04
#define AD7616_REG_INPUT_RANGE_A2		0x05
#define AD7616_REG_INPUT_RANGE_B1		0x06
#define AD7616_REG_INPUT_RANGE_B2		0x07
#define AD7616_REG_SEQUENCER_STACK(x)	(0x20 + (x))

/* AD7616_REG_CONFIG */
#define AD7616_SDEF						(1 << 7)
#define AD7616_BURSTEN					(1 << 6)
#define AD7616_SEQEN					(1 << 5)
#define AD7616_OS(x)					(((x) & 0x7) << 2)
#define AD7616_STATUSEN					(1 << 1)
#define AD7616_CRCEN					(1 << 0)

/* AD7616_REG_INPUT_RANGE */
#define AD7616_INPUT_RANGE(ch, x)		(((x) & 0x3) << (((ch) & 0x3) * 2))

/* AD7616_REG_SEQUENCER_STACK(x) */
#define AD7616_ADDR(x)					(((x) & 0x7F) << 9)
#define AD7616_SSREN					(1 << 8)
#define AD7616_BSEL(x)					(((x) & 0xF) << 4)
#define AD7616_ASEL(x)					(((x) & 0xF) << 0)

/* AD7616_REG_STATUS */
#define AD7616_STATUS_A(x)				(((x) & 0xF) << 12)
#define AD7616_STATUS_B(x)				(((x) & 0xF) << 8)
#define AD7616_STATUS_CRC(x)			(((x) & 0xFF) << 0)

/******************************************************************************/
/*************************** Types Declarations *******************************/
/******************************************************************************/
enum ad7616_mode {
	AD7616_SW,
	AD7616_HW,
};

enum ad7616_interface {
	AD7616_SERIAL,
	AD7616_PARALLEL,
};

enum ad7616_ch {
	AD7616_VA0,
	AD7616_VA1,
	AD7616_VA2,
	AD7616_VA3,
	AD7616_VA4,
	AD7616_VA5,
	AD7616_VA6,
	AD7616_VA7,
	AD7616_VB0,
	AD7616_VB1,
	AD7616_VB2,
	AD7616_VB3,
	AD7616_VB4,
	AD7616_VB5,
	AD7616_VB6,
	AD7616_VB7,
};

enum ad7616_range {
	AD7616_2V5 = 1,
	AD7616_5V  = 2,
	AD7616_10V = 3,
};

enum ad7616_osr {
	AD7616_OSR_0,
	AD7616_OSR_2,
	AD7616_OSR_4,
	AD7616_OSR_8,
	AD7616_OSR_16,
	AD7616_OSR_32,
	AD7616_OSR_64,
	AD7616_OSR_128,
};

struct ad7616_dev {
	/* SPI */
	struct spi_desc		*spi_desc;
	struct spi_engine_offload_init_param *offload_init_param;
	uint32_t reg_access_speed;
	/* GPIO */
	struct gpio_desc	*gpio_hw_rngsel0;
	struct gpio_desc	*gpio_hw_rngsel1;
	struct gpio_desc	*gpio_reset;
	struct gpio_desc	*gpio_os0;
	struct gpio_desc	*gpio_os1;
	struct gpio_desc	*gpio_os2;
	/* AXI Core */
	uint32_t core_baseaddr;
	/* Device Settings */
	enum ad7616_interface	interface;
	enum ad7616_mode			mode;
	enum ad7616_range		va[8];
	enum ad7616_range		vb[8];
	enum ad7616_osr			osr;
	void (*dcache_invalidate_range)(uint32_t address, uint32_t bytes_count);
};

struct ad7616_init_param {
	/* SPI */
	struct spi_init_param		*spi_param;
	struct spi_engine_offload_init_param *offload_init_param;
	uint32_t reg_access_speed;
	/* GPIO */
	gpio_init_param		*gpio_hw_rngsel0_param;
	gpio_init_param		*gpio_hw_rngsel1_param;
	gpio_init_param		*gpio_reset_param;
	gpio_init_param		*gpio_os0_param;
	gpio_init_param		*gpio_os1_param;
	gpio_init_param		*gpio_os2_param;
	/* Core */
	uint32_t			core_baseaddr;
	/* Device Settings */
	enum ad7616_mode			mode;
	enum ad7616_range		va[8];
	enum ad7616_range		vb[8];
	enum ad7616_osr			osr;
	void (*dcache_invalidate_range)(uint32_t address, uint32_t bytes_count);
};

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/
/* SPI read from device. */
int32_t ad7616_read(struct ad7616_dev *dev,
		    uint8_t reg_addr,
		    uint16_t *reg_data);
/* SPI write to device. */
int32_t ad7616_write(struct ad7616_dev *dev,
		     uint8_t reg_addr,
		     uint16_t reg_data);
/* SPI read from device using a mask. */
int32_t ad7616_read_mask(struct ad7616_dev *dev,
			 uint8_t reg_addr,
			 uint16_t mask,
			 uint16_t *data);
/* SPI write to device using a mask. */
int32_t ad7616_write_mask(struct ad7616_dev *dev,
			  uint8_t reg_addr,
			  uint16_t mask,
			  uint16_t data);
/* SPI read from device. */
int32_t ad7616_spi_read(struct ad7616_dev *dev,
			uint8_t reg_addr,
			uint16_t *reg_data);
/* SPI write to device. */
int32_t ad7616_spi_write(struct ad7616_dev *dev,
			 uint8_t reg_addr,
			 uint16_t reg_data);
/* PAR read from device. */
int32_t ad7616_par_read(struct ad7616_dev *dev,
			uint8_t reg_addr,
			uint16_t *reg_data);
/* PAR write to device. */
int32_t ad7616_par_write(struct ad7616_dev *dev,
			 uint8_t reg_addr,
			 uint16_t reg_data);
/* Perform a full reset of the device. */
int32_t ad7616_reset(struct ad7616_dev *dev);
/* Set the analog input range for the selected analog input channel. */
int32_t ad7616_set_range(struct ad7616_dev *dev,
			 enum ad7616_ch ch,
			 enum ad7616_range range);
/* Set the operation mode (software or hardware). */
int32_t ad7616_set_mode(struct ad7616_dev *dev,
			enum ad7616_mode mode);
/* Set the oversampling ratio. */
int32_t ad7616_set_oversampling_ratio(struct ad7616_dev *dev,
				      enum ad7616_osr osr);
/* Read data in serial mode. */
int32_t ad7616_read_data_serial(struct ad7616_dev *dev,
				uint32_t *buf,
				uint32_t samples);
/* Read data in parallel mode. */
int32_t ad7616_read_data_parallel(struct ad7616_dev *dev,
				  uint32_t *buf,
				  uint32_t samples);
/* Initialize the core. */
int32_t ad7616_core_setup(struct ad7616_dev *dev);
/* Initialize the device. */
int32_t ad7616_setup(struct ad7616_dev **device,
		     struct ad7616_init_param *init_param);
#endif
