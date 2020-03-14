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
static const char *ng0 = "C:/Users/Sanuj Kulshrestha/Documents/Xilinx-Workspace/UART/TX.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1372580397_3212880686_p_0(char *t0)
{
    char t19[16];
    char t20[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    int t27;
    unsigned int t28;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3792);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 2312U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 3872);
    t15 = (t4 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3936);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 6532U);
    t2 = xsi_base_array_concat(t2, t19, t5, (char)99, (unsigned char)3, (char)97, t4, t9, (char)101);
    t15 = ((IEEE_P_2592010699) + 4024);
    t12 = xsi_base_array_concat(t12, t20, t15, (char)97, t2, t19, (char)99, (unsigned char)2, (char)101);
    t21 = (1U + 8U);
    t22 = (t21 + 1U);
    t1 = (10U != t22);
    if (t1 == 1)
        goto LAB14;

LAB15:    t16 = (t0 + 4000);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t23 = (t18 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t12, 10U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB11:    t4 = (t0 + 1192U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t8 = t14;
    goto LAB13;

LAB14:    xsi_size_not_matching(10U, t22, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t25 = *((int *)t5);
    t6 = (t25 < 1250);
    if (t6 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4064);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t2);

LAB20:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t25 = *((int *)t4);
    t1 = (t25 == 625);
    if (t1 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB17;

LAB19:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1832U);
    t9 = *((char **)t2);
    t26 = *((int *)t9);
    t27 = (t26 + 1);
    t2 = (t0 + 4064);
    t12 = (t2 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t27;
    xsi_driver_first_trans_fast(t2);
    goto LAB20;

LAB22:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 1992U);
    t9 = *((char **)t2);
    t26 = *((int *)t9);
    t27 = (t26 - 9);
    t21 = (t27 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, t26);
    t22 = (1U * t21);
    t28 = (0 + t22);
    t2 = (t5 + t28);
    t3 = *((unsigned char *)t2);
    t12 = (t0 + 4128);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t3;
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t25 = *((int *)t4);
    t1 = (t25 < 9);
    if (t1 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3872);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3936);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4192);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t2);

LAB26:    goto LAB23;

LAB25:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t26 = *((int *)t5);
    t27 = (t26 + 1);
    t2 = (t0 + 4192);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    *((int *)t16) = t27;
    xsi_driver_first_trans_fast(t2);
    goto LAB26;

}


extern void work_a_1372580397_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1372580397_3212880686_p_0};
	xsi_register_didat("work_a_1372580397_3212880686", "isim/UART_isim_beh.exe.sim/work/a_1372580397_3212880686.didat");
	xsi_register_executes(pe);
}
