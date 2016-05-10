/*******************************************************************************
 *
 * @file .c
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
#include <stdio.h>
/***************************** MACRO DEFINITIONS ******************************/

/***************************** TYPE DEFINITIONS *******************************/

/**************************** FUNCTION PROTOTYPES *****************************/

/******************************** VARIABLES ***********************************/

/**************************** PRIVATE FUNCTIONS *******************************/

/***************************** PUBLIC FUNCTIONS *******************************/
extern int system_init(void);
extern int startup(void);

int main(void)
{
	printf(" KERNEL Started! \n");
	system_init();
	startup();
}
