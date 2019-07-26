/*
 * vtc_ctrl.c
 *
 *  Created on: 2019Äê6ÔÂ24ÈÕ
 *      Author: yongw
 */

#include "vtc_ctrl.h"
#include "xdebug.h"
#include "xstatus.h"

int VtcStop(VtcCtrl *vtcPtr)
{
	if (vtcPtr->state == VTC_STOPPED)
	{
		return XST_SUCCESS;
	}

	XVtc_DisableGenerator(&vtcPtr->vtc);

	vtcPtr->state = VTC_STOPPED;
	return XST_SUCCESS;
}

int VtcStart(VtcCtrl *vtcPtr)
{
	XVtc_Timing vtcTiming;
	XVtc_SourceSelect SourceSelect;

	xdbg_printf(XDBG_DEBUG_GENERAL, "vtc start entered\n\r");
	/*
	 * If already started, do nothing
	 */
	if (vtcPtr->state == VTC_RUNNING)
	{
		return XST_SUCCESS;
	}

	vtcTiming.HActiveVideo = vtcPtr->vMode.width;	/**< Horizontal Active Video Size */
	vtcTiming.HFrontPorch = vtcPtr->vMode.hps - vtcPtr->vMode.width;	/**< Horizontal Front Porch Size */
	vtcTiming.HSyncWidth = vtcPtr->vMode.hpe - vtcPtr->vMode.hps;		/**< Horizontal Sync Width */
	vtcTiming.HBackPorch = vtcPtr->vMode.hmax - vtcPtr->vMode.hpe + 1;		/**< Horizontal Back Porch Size */
	vtcTiming.HSyncPolarity = vtcPtr->vMode.hpol;	/**< Horizontal Sync Polarity */
	vtcTiming.VActiveVideo = vtcPtr->vMode.height;	/**< Vertical Active Video Size */
	vtcTiming.V0FrontPorch = vtcPtr->vMode.vps - vtcPtr->vMode.height;	/**< Vertical Front Porch Size */
	vtcTiming.V0SyncWidth = vtcPtr->vMode.vpe - vtcPtr->vMode.vps;	/**< Vertical Sync Width */
	vtcTiming.V0BackPorch = vtcPtr->vMode.vmax - vtcPtr->vMode.vpe + 1;;	/**< Horizontal Back Porch Size */
	vtcTiming.V1FrontPorch = vtcPtr->vMode.vps - vtcPtr->vMode.height;	/**< Vertical Front Porch Size */
	vtcTiming.V1SyncWidth = vtcPtr->vMode.vpe - vtcPtr->vMode.vps;	/**< Vertical Sync Width */
	vtcTiming.V1BackPorch = vtcPtr->vMode.vmax - vtcPtr->vMode.vpe + 1;;	/**< Horizontal Back Porch Size */
	vtcTiming.VSyncPolarity = vtcPtr->vMode.vpol;	/**< Vertical Sync Polarity */
	vtcTiming.Interlaced = 0;		/**< Interlaced / Progressive video */


	/* Setup the VTC Source Select config structure. */
	/* 1=Generator registers are source */
	/* 0=Detector registers are source */
	memset((void *)&SourceSelect, 0, sizeof(SourceSelect));
	SourceSelect.VBlankPolSrc = 1;
	SourceSelect.VSyncPolSrc = 1;
	SourceSelect.HBlankPolSrc = 1;
	SourceSelect.HSyncPolSrc = 1;
	SourceSelect.ActiveVideoPolSrc = 1;
	SourceSelect.ActiveChromaPolSrc= 1;
	SourceSelect.VChromaSrc = 1;
	SourceSelect.VActiveSrc = 1;
	SourceSelect.VBackPorchSrc = 1;
	SourceSelect.VSyncSrc = 1;
	SourceSelect.VFrontPorchSrc = 1;
	SourceSelect.VTotalSrc = 1;
	SourceSelect.HActiveSrc = 1;
	SourceSelect.HBackPorchSrc = 1;
	SourceSelect.HSyncSrc = 1;
	SourceSelect.HFrontPorchSrc = 1;
	SourceSelect.HTotalSrc = 1;
	XVtc_SelfTest(&(vtcPtr->vtc));
	XVtc_RegUpdateEnable(&(vtcPtr->vtc));
	XVtc_SetGeneratorTiming(&(vtcPtr->vtc), &vtcTiming);
	XVtc_SetSource(&(vtcPtr->vtc), &SourceSelect);
    /*
	 * Enable VTC core, releasing backpressure on VDMA
	 */
	XVtc_EnableGenerator(&vtcPtr->vtc);

	vtcPtr->state = VTC_RUNNING;

	return XST_SUCCESS;
}

int VtcInitialize(VtcCtrl *vtcPtr, u16 vtcId)
{
	int Status;
	XVtc_Config *vtcConfig;

	vtcPtr->state = VTC_STOPPED;
	vtcPtr->vMode = VMODE_1280x720;

	vtcConfig = XVtc_LookupConfig(vtcId);
	/* Checking Config variable */
	if (NULL == vtcConfig) {
		return (XST_FAILURE);
	}
	Status = XVtc_CfgInitialize(&(vtcPtr->vtc), vtcConfig, vtcConfig->BaseAddress);
	/* Checking status */
	if (Status != (XST_SUCCESS)) {
		return (XST_FAILURE);
	}

	return XST_SUCCESS;
}

int VtcSetMode(VtcCtrl *vtcPtr, const VideoMode *newMode)
{
	int Status;

	/*
	 * If currently running, stop
	 */
	if (vtcPtr->state == VTC_RUNNING)
	{
		Status = VtcStop(vtcPtr);
		if (Status != XST_SUCCESS)
		{
			xdbg_printf(XDBG_DEBUG_GENERAL, "Cannot change mode, unable to stop display %d\r\n", Status);
			return XST_FAILURE;
		}
	}

	vtcPtr->vMode = *newMode;

	return XST_SUCCESS;
}
