/*******************************************************************************
 *
 * @file HAL.c
 *
 * @author Murat Cakmak
 *
 * @brief
 * @see http://https://github.com/ir-os/IROS
 *
 ******************************************************************************
 *
 *  Copyright (2016), P-OS
 *
 *   This software may be modified and distributed under the terms of the
 *   'MIT License'.
 *
 *   See the LICENSE file for details.
 *
 ******************************************************************************/

/********************************* INCLUDES ***********************************/
#include "HAL.h"

#include "postypes.h"

/***************************** MACRO DEFINITIONS ******************************/

/***************************** TYPE DEFINITIONS *******************************/

/**************************** FUNCTION PROTOTYPES *****************************/

/******************************** VARIABLES ***********************************/

/**************************** PRIVATE FUNCTIONS *******************************/
INTERNAL INLINE int CPU_Init(void)
{
	printf("HAL Init \n");

	Core_Init();

	return RESULT_SUCCESS;
}

INTERNAL INLINE int Board_Init(void)
{
	printf("Board Init \n");

	return RESULT_SUCCESS;
}

/***************************** PUBLIC FUNCTIONS *******************************/
PUBLIC INLINE int HAL_Init(void)
{
	CPU_Init();

	Board_Init();

	return RESULT_SUCCESS;
}
