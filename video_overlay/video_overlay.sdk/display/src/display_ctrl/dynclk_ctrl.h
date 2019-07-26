/*
 * dynclk_ctrl.h
 *
 *  Created on: 2019Äê6ÔÂ24ÈÕ
 *      Author: yongw
 */

#ifndef SRC_DISPLAY_CTRL_DYNCLK_CTRL_H_
#define SRC_DISPLAY_CTRL_DYNCLK_CTRL_H_

//#define DEBUG

#include "../dynclk/dynclk.h"

typedef enum {
	DYNCLK_STOPPED = 0,
	DYNCLK_RUNNING = 1
} DynclkState;

typedef struct {
	double pxlFreq; /* Frequency of clock currently being generated */
	u32 dynClkAddr; /*Physical Base address of the dynclk core*/
	DynclkState state;
} DynclkCtrl;

int DynclkStop(DynclkCtrl *dynclkPtr);
int DynclkStart(DynclkCtrl *dynclkPtr, const double freq);
int DynclkInitialize(DynclkCtrl *dynclkPtr, u32 dynClkAddr, const double freq);

#endif /* SRC_DISPLAY_CTRL_DYNCLK_CTRL_H_ */
