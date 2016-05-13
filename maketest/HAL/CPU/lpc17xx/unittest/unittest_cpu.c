/*******************************************************************************
 *
 * @file startup.c
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

#include "../cpu.c"

#include "unity.h"
/***************************** MACRO DEFINITIONS ******************************/

/***************************** TYPE DEFINITIONS *******************************/

/**************************** FUNCTION PROTOTYPES *****************************/

/******************************** VARIABLES ***********************************/

/**************************** INTERNAL FUNCTIONS ******************************/
/**
 * @brief Constructor Method for each test case
 *
 */
void setUp(void)
{
}

/**
 * @brief Constructor Method for each test case
 *
 */
void tearDown(void)
{

}

/***************************** TEST FUNCTIONS *******************************/
void test_Startup(void)
{
	//All of these should pass
	TEST_ASSERT_EQUAL(0, cpu_module_inited);
}


void test_Startup2(void)
{
	cpu_init();

	//All of these should pass
	TEST_ASSERT_EQUAL(1, cpu_module_inited);
}
