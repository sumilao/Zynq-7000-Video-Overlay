/*
 * dynclk_ctrl.c
 *
 *  Created on: 2019Äê6ÔÂ24ÈÕ
 *      Author: yongw
 */

#include "dynclk_ctrl.h"
#include "xdebug.h"
#include "xstatus.h"

int DynclkStop(DynclkCtrl *dynclkPtr)
{
	if (dynclkPtr->state == DYNCLK_STOPPED)
	{
		return XST_SUCCESS;
	}

	ClkStop(dynclkPtr->dynClkAddr);
	dynclkPtr->state = DYNCLK_STOPPED;

	return XST_SUCCESS;
}

int DynclkStart(DynclkCtrl *dynclkPtr, const double freq)
{
	ClkConfig clkReg;
	ClkMode clkMode;

	xdbg_printf(XDBG_DEBUG_GENERAL, "dynclk start entered\n\r");

	if (dynclkPtr->state == DYNCLK_RUNNING)
	{
		return XST_SUCCESS;
	}
	ClkFindParams(freq, &clkMode);

	dynclkPtr->pxlFreq = clkMode.freq;

	if (!ClkFindReg(&clkReg, &clkMode))
	{
		xdbg_printf(XDBG_DEBUG_GENERAL, "Error calculating CLK register values\n\r");
		return XST_FAILURE;
	}
	ClkWriteReg(&clkReg, dynclkPtr->dynClkAddr);
	ClkStop(dynclkPtr->dynClkAddr);
	ClkStart(dynclkPtr->dynClkAddr);

	dynclkPtr->state = DYNCLK_RUNNING;

	return XST_SUCCESS;
}

int DynclkInitialize(DynclkCtrl *dynclkPtr, u32 dynClkAddr, const double freq)
{
	ClkConfig clkReg;
	ClkMode clkMode;

	dynclkPtr->dynClkAddr = dynClkAddr;
	ClkFindParams(freq, &clkMode);
	dynclkPtr->pxlFreq = clkMode.freq;
	if (!ClkFindReg(&clkReg, &clkMode))
	{
		xdbg_printf(XDBG_DEBUG_GENERAL, "Error calculating CLK register values\n\r");
		return XST_FAILURE;
	}
	ClkWriteReg(&clkReg, dynclkPtr->dynClkAddr);
	ClkStart(dynclkPtr->dynClkAddr);

	return XST_SUCCESS;
}
