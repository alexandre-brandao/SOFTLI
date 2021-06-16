/***************************************************************************//**
 *   @file   hmc7044.h
 *   @brief  Header file of HMC7044, HMC7043 Driver.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2018-2020(c) Analog Devices, Inc.
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
#ifndef HMC7044_H_
#define HMC7044_H_

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <stdbool.h>
#include <stdint.h>
#include "delay.h"
#include "spi.h"

/******************************************************************************/
/*************************** Types Declarations *******************************/
/******************************************************************************/
struct hmc7044_chan_spec {
	unsigned int	num;
	bool		disable;
	bool		high_performance_mode_dis;
	bool		start_up_mode_dynamic_enable;
	bool		dynamic_driver_enable;
	bool		output_control0_rb4_enable;
	bool		force_mute_enable;
	unsigned int	divider;
	unsigned int	driver_mode;
	unsigned int	driver_impedance;
	unsigned int	coarse_delay;
	unsigned int	fine_delay;
	unsigned int	out_mux_mode;
};

struct hmc7044_dev {
	spi_desc	*spi_desc;
	bool		is_hmc7043;
	uint32_t	clkin_freq[4];
	uint32_t	clkin_freq_ccf[4];
	uint32_t	vcxo_freq;
	uint32_t	pll1_pfd;
	uint32_t	pll2_freq;
	uint32_t	pll1_loop_bw;
	uint32_t	sysref_timer_div;
	unsigned int	pll1_ref_prio_ctrl;
	bool		clkin0_rfsync_en;
	bool		clkin1_vcoin_en;
	bool		high_performance_mode_clock_dist_en;
	bool		high_performance_mode_pll_vco_en;
	bool		rf_reseeder_en;
	unsigned int	sync_pin_mode;
	uint32_t	pulse_gen_mode;
	uint32_t	in_buf_mode[5];
	uint32_t	gpi_ctrl[4];
	uint32_t	gpo_ctrl[4];
	uint32_t	num_channels;
	struct hmc7044_chan_spec	*channels;
};

struct hmc7044_init_param {
	spi_init_param	*spi_init;
	bool		is_hmc7043;
	uint32_t	clkin_freq[4];
	uint32_t	clkin_freq_ccf[4];
	uint32_t	vcxo_freq;
	uint32_t	pll1_pfd;
	uint32_t	pll2_freq;
	uint32_t	pll1_loop_bw;
	uint32_t	sysref_timer_div;
	unsigned int	pll1_ref_prio_ctrl;
	bool		clkin0_rfsync_en;
	bool		clkin1_vcoin_en;
	bool		high_performance_mode_clock_dist_en;
	bool		high_performance_mode_pll_vco_en;
	bool		rf_reseeder_disable;
	unsigned int	sync_pin_mode;
	uint32_t	pulse_gen_mode;
	uint32_t	in_buf_mode[5];
	uint32_t	gpi_ctrl[4];
	uint32_t	gpo_ctrl[4];
	uint32_t	num_channels;
	struct hmc7044_chan_spec	*channels;
};

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/
/* Initialize the device. */
int32_t hmc7044_init(struct hmc7044_dev **device,
		     const struct hmc7044_init_param *init_param);
/* Remove the device. */
int32_t hmc7044_remove(struct hmc7044_dev *device);
int32_t hmc7044_read(struct hmc7044_dev *dev, uint16_t reg, uint8_t *val);
int32_t hmc7044_clk_recalc_rate(struct hmc7044_dev *dev, uint32_t chan,
				uint64_t *rate);
int32_t hmc7044_clk_round_rate(struct hmc7044_dev *dev, uint32_t rate,
			       uint64_t *rounded_rate);
int32_t hmc7044_clk_set_rate(struct hmc7044_dev *dev, uint32_t chan,
			     uint64_t rate);

#endif // HMC7044_H_
