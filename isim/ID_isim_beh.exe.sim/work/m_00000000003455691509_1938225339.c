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
static const char *ng0 = "C:/Users/Elvin/Desktop/cpu_pipeline/ControlUnit.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {32U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {34U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {36U, 0U};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {37U, 0U};
static unsigned int ng10[] = {4U, 0U};
static unsigned int ng11[] = {38U, 0U};
static unsigned int ng12[] = {5U, 0U};
static unsigned int ng13[] = {33U, 0U};
static unsigned int ng14[] = {35U, 0U};
static unsigned int ng15[] = {39U, 0U};
static unsigned int ng16[] = {6U, 0U};
static unsigned int ng17[] = {42U, 0U};
static unsigned int ng18[] = {7U, 0U};
static unsigned int ng19[] = {43U, 0U};
static unsigned int ng20[] = {8U, 0U};
static unsigned int ng21[] = {10U, 0U};
static unsigned int ng22[] = {11U, 0U};
static unsigned int ng23[] = {12U, 0U};
static int ng24[] = {1, 0};
static unsigned int ng25[] = {13U, 0U};
static unsigned int ng26[] = {14U, 0U};
static unsigned int ng27[] = {15U, 0U};
static unsigned int ng28[] = {9U, 0U};



static void Always_36_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 2180U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2376);
    *((int *)t2) = 1;
    t3 = (t0 + 2208);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t6 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);

LAB38:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);

LAB39:    t4 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t7 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB60;

LAB61:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB64;

LAB65:
LAB66:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1564);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB37;

LAB9:    xsi_set_current_line(69, ng0);

LAB67:    xsi_set_current_line(70, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB11:    xsi_set_current_line(75, ng0);

LAB68:    xsi_set_current_line(76, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1472);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1196);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB13:    xsi_set_current_line(80, ng0);

LAB69:    xsi_set_current_line(81, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB15:    xsi_set_current_line(85, ng0);

LAB70:    xsi_set_current_line(86, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng8)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB17:    xsi_set_current_line(90, ng0);

LAB71:    xsi_set_current_line(91, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB19:    xsi_set_current_line(95, ng0);

LAB72:    xsi_set_current_line(96, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng12)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB21:    xsi_set_current_line(100, ng0);

LAB73:    xsi_set_current_line(101, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng18)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB23:    xsi_set_current_line(105, ng0);

LAB74:    xsi_set_current_line(106, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng20)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB25:    xsi_set_current_line(110, ng0);

LAB75:    xsi_set_current_line(111, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng24)));
    t4 = (t0 + 1472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng28)));
    t4 = (t0 + 1380);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB37;

LAB27:    xsi_set_current_line(115, ng0);

LAB76:    xsi_set_current_line(116, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1288);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1656);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 3);
    goto LAB37;

LAB29:    xsi_set_current_line(119, ng0);

LAB77:    xsi_set_current_line(120, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1288);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1656);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 3);
    goto LAB37;

LAB31:    xsi_set_current_line(123, ng0);

LAB78:    xsi_set_current_line(124, ng0);
    t4 = ((char*)((ng24)));
    t8 = (t0 + 1288);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);

LAB79:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB80;

LAB81:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB82;

LAB83:
LAB84:    goto LAB37;

LAB33:    xsi_set_current_line(130, ng0);

LAB85:    xsi_set_current_line(131, ng0);
    t8 = ((char*)((ng24)));
    t9 = (t0 + 1288);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng10)));
    t8 = (t0 + 1656);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 3);
    goto LAB37;

LAB35:    xsi_set_current_line(134, ng0);

LAB86:    xsi_set_current_line(135, ng0);
    t8 = ((char*)((ng24)));
    t9 = (t0 + 1288);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng12)));
    t8 = (t0 + 1656);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 3);
    goto LAB37;

LAB40:    xsi_set_current_line(51, ng0);
    t8 = ((char*)((ng4)));
    t9 = (t0 + 1380);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);
    goto LAB66;

LAB42:    xsi_set_current_line(52, ng0);
    t4 = ((char*)((ng6)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB44:    xsi_set_current_line(53, ng0);
    t4 = ((char*)((ng8)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB46:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng10)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB48:    xsi_set_current_line(55, ng0);
    t4 = ((char*)((ng12)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB50:    xsi_set_current_line(56, ng0);
    t4 = ((char*)((ng4)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB52:    xsi_set_current_line(57, ng0);
    t4 = ((char*)((ng6)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB54:    xsi_set_current_line(58, ng0);
    t4 = ((char*)((ng16)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB56:    xsi_set_current_line(59, ng0);
    t4 = ((char*)((ng18)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB58:    xsi_set_current_line(60, ng0);
    t4 = ((char*)((ng20)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB60:    xsi_set_current_line(61, ng0);
    t4 = ((char*)((ng21)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB62:    xsi_set_current_line(62, ng0);
    t4 = ((char*)((ng22)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB64:    xsi_set_current_line(63, ng0);
    t4 = ((char*)((ng23)));
    t8 = (t0 + 1380);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    goto LAB66;

LAB80:    xsi_set_current_line(126, ng0);
    t8 = ((char*)((ng8)));
    t9 = (t0 + 1656);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 3);
    goto LAB84;

LAB82:    xsi_set_current_line(127, ng0);
    t8 = ((char*)((ng6)));
    t9 = (t0 + 1656);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 3);
    goto LAB84;

}


extern void work_m_00000000003455691509_1938225339_init()
{
	static char *pe[] = {(void *)Always_36_0};
	xsi_register_didat("work_m_00000000003455691509_1938225339", "isim/ID_isim_beh.exe.sim/work/m_00000000003455691509_1938225339.didat");
	xsi_register_executes(pe);
}
