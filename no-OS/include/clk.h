/***************************************************************************//**
 *   @file   clk.h
 *   @brief  Header file of Clock Driver.
 *   @author DBogdan (dragos.bogdan@analog.com)
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
#ifndef CLK_H_
#define CLK_H_

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <stdint.h>

/******************************************************************************/
/************************* Structure Declarations *****************************/
/******************************************************************************/
struct clk_hw {
	void	*dev;
	int32_t (*dev_clk_enable)();
	int32_t (*dev_clk_disable)();
	int32_t (*dev_clk_recalc_rate)();
	int32_t (*dev_clk_set_rate)();
	int32_t (*dev_clk_round_rate)();
};

struct clk {
	struct clk_hw	*hw;
	uint32_t	hw_ch_num;
	const char	*name;
};

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/

/* Start the clock. */
int32_t clk_enable(struct clk * clk);

/* Stop the clock. */
int32_t clk_disable(struct clk * clk);

/* Get the current frequency of the clock. */
int32_t clk_recalc_rate(struct clk *clk,
			uint64_t *rate);

/* Round the desired frequency to a rate that the clock can actually output. */
int32_t clk_round_rate(struct clk *clk,
		       uint64_t rate,
		       uint64_t *rounded_rate);

/* Change the frequency of the clock. */
int32_t clk_set_rate(struct clk *clk,
		     uint64_t rate);

#endif // CLK_H_
