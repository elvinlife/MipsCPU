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

/* This file is designed for use with ISim build 0x36e8438f */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Elvin/Desktop/cpu_pipeline/BrUnit.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};



static void Always_29_0(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1732);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);

LAB20:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_signed_equal(t8, 32, t5, 32, t7, 32);
    t4 = (t8 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB21;

LAB22:
LAB23:    goto LAB19;

LAB9:    xsi_set_current_line(36, ng0);

LAB24:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_greater(t8, 32, t5, 32, t4, 32);
    t7 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB25;

LAB26:
LAB27:    goto LAB19;

LAB11:    xsi_set_current_line(40, ng0);

LAB28:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t5, 32, t4, 32);
    t7 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB19;

LAB13:    xsi_set_current_line(44, ng0);

LAB32:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_greatereq(t8, 32, t5, 32, t4, 32);
    t7 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB33;

LAB34:
LAB35:    goto LAB19;

LAB15:    xsi_set_current_line(48, ng0);

LAB36:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_leq(t8, 32, t5, 32, t4, 32);
    t7 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB37;

LAB38:
LAB39:    goto LAB19;

LAB17:    xsi_set_current_line(52, ng0);

LAB40:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t5, 32, t7, 32);
    t4 = (t8 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB41;

LAB42:
LAB43:    goto LAB19;

LAB21:    xsi_set_current_line(34, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    goto LAB23;

LAB25:    xsi_set_current_line(38, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    goto LAB27;

LAB29:    xsi_set_current_line(42, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    goto LAB31;

LAB33:    xsi_set_current_line(46, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    goto LAB35;

LAB37:    xsi_set_current_line(50, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    goto LAB39;

LAB41:    xsi_set_current_line(54, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1012);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    goto LAB43;

}


extern void work_m_00000000002222635110_1242990500_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000002222635110_1242990500", "isim/ID_isim_beh.exe.sim/work/m_00000000002222635110_1242990500.didat");
	xsi_register_executes(pe);
}
