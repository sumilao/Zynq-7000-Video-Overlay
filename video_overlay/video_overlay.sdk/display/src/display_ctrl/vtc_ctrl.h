/*
 * vtc_ctrl.h
 *
 *  Created on: 2019Äê6ÔÂ24ÈÕ
 *      Author: yongw
 */

#ifndef SRC_DISPLAY_CTRL_VTC_CTRL_H_
#define SRC_DISPLAY_CTRL_VTC_CTRL_H_

//#define DEBUG

#include "xil_types.h"
#include "xvtc.h"
#include "vga_modes.h"

typedef enum {
	VTC_STOPPED = 0,
	VTC_RUNNING = 1
} VtcState;

typedef struct {
		VideoMode vMode; /*Current Video mode*/
		XVtc vtc; /*VTC driver struct*/
		VtcState state; /* Indicates if the Display is currently running */
} VtcCtrl;

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

int VtcStop(VtcCtrl *vtcPtr);
int VtcStart(VtcCtrl *vtcPtr);
int VtcInitialize(VtcCtrl *vtcPtr, u16 vtcId);
int VtcSetMode(VtcCtrl *vtcPtr, const VideoMode *newMode);

#endif /* SRC_DISPLAY_CTRL_VTC_CTRL_H_ */
