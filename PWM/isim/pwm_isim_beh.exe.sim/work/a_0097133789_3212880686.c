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
static const char *ng0 = "C:/Users/Sanuj Kulshrestha/Documents/Xilinx-Workspace/PWM/pwm.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0097133789_3212880686_p_0(char *t0)
{
    char t11[16];
    char t20[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2992);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t4 = (t0 + 4964U);
    t9 = (t0 + 5005);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t4, t9, t11);
    if (t16 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4964U);
    t5 = (t0 + 1032U);
    t8 = *((char **)t5);
    t5 = (t0 + 4948U);
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t2, t8, t5);
    if (t1 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4964U);
    t5 = (t0 + 5021);
    t9 = (t11 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 7;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t2, t5, t11);
    if (t1 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 4964U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t4, t2, 1);
    t8 = (t11 + 12U);
    t15 = *((unsigned int *)t8);
    t29 = (1U * t15);
    t1 = (8U != t29);
    if (t1 == 1)
        goto LAB20;

LAB21:    t9 = (t0 + 3136);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast(t9);

LAB18:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(47, ng0);
    t13 = (t0 + 1032U);
    t17 = *((char **)t13);
    t13 = (t0 + 4948U);
    t18 = (t0 + 5013);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 7;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (7 - 0);
    t15 = (t23 * 1);
    t15 = (t15 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t15;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t13, t18, t20);
    if (t24 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3072);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(48, ng0);
    t22 = (t0 + 3072);
    t25 = (t22 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t22);
    goto LAB12;

LAB14:    xsi_set_current_line(55, ng0);
    t9 = (t0 + 3072);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB15;

LAB17:    xsi_set_current_line(61, ng0);
    t10 = xsi_get_transient_memory(8U);
    memset(t10, 0, 8U);
    t12 = t10;
    memset(t12, (unsigned char)2, 8U);
    t13 = (t0 + 3136);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB18;

LAB20:    xsi_size_not_matching(8U, t29, 0);
    goto LAB21;

}


extern void work_a_0097133789_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0097133789_3212880686_p_0};
	xsi_register_didat("work_a_0097133789_3212880686", "isim/pwm_isim_beh.exe.sim/work/a_0097133789_3212880686.didat");
	xsi_register_executes(pe);
}
