/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Sanuj Kulshrestha/Documents/Xilinx-Workspace/Single-Dice-Game/comaparor3bit.vhd";



static void work_a_2641725536_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 1032U);
    t11 = *((char **)t9);
    t12 = 1;
    if (3U == 3U)
        goto LAB7;

LAB8:    t12 = 0;

LAB9:    if (t12 != 0)
        goto LAB5;

LAB6:    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 1032U);
    t22 = *((char **)t20);
    t23 = 1;
    if (3U == 3U)
        goto LAB15;

LAB16:    t23 = 0;

LAB17:    if ((!(t23)) != 0)
        goto LAB13;

LAB14:
LAB2:    t31 = (t0 + 2992);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 3072);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB7:    t13 = 0;

LAB10:    if (t13 < 3U)
        goto LAB11;
    else
        goto LAB9;

LAB11:    t9 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t9) != *((unsigned char *)t14))
        goto LAB8;

LAB12:    t13 = (t13 + 1);
    goto LAB10;

LAB13:    t26 = (t0 + 3072);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB2;

LAB15:    t24 = 0;

LAB18:    if (t24 < 3U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t20 = (t21 + t24);
    t25 = (t22 + t24);
    if (*((unsigned char *)t20) != *((unsigned char *)t25))
        goto LAB16;

LAB20:    t24 = (t24 + 1);
    goto LAB18;

}


extern void work_a_2641725536_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2641725536_3212880686_p_0};
	xsi_register_didat("work_a_2641725536_3212880686", "isim/FSM_isim_beh.exe.sim/work/a_2641725536_3212880686.didat");
	xsi_register_executes(pe);
}
