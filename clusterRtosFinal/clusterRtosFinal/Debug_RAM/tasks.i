# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
# 1 "C:\\NXP\\Workspace\\CLUSTER\\clusterRtosFinal\\clusterRtosFinal\\Debug_RAM//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 199901L
#define __STDC_HOSTED__ 1
#define __GNUC__ 4
#define __GNUC_MINOR__ 9
#define __GNUC_PATCHLEVEL__ 3
#define __VERSION__ "4.9.3 20150529 (release) [ARM/embedded-4_9-branch revision 227977]"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __OPTIMIZE__ 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 8
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 8
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ unsigned int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ long unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ long int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ long unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ long int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ long unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ int
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned int
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __has_include(STR) __has_include__(STR)
#define __has_include_next(STR) __has_include_next__(STR)
#define __GXX_ABI_VERSION 1002
#define __SCHAR_MAX__ 127
#define __SHRT_MAX__ 32767
#define __INT_MAX__ 2147483647
#define __LONG_MAX__ 2147483647L
#define __LONG_LONG_MAX__ 9223372036854775807LL
#define __WCHAR_MAX__ 4294967295U
#define __WCHAR_MIN__ 0U
#define __WINT_MAX__ 4294967295U
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 2147483647
#define __SIZE_MAX__ 4294967295U
#define __INTMAX_MAX__ 9223372036854775807LL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 18446744073709551615ULL
#define __UINTMAX_C(c) c ## ULL
#define __SIG_ATOMIC_MAX__ 2147483647
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __INT8_MAX__ 127
#define __INT16_MAX__ 32767
#define __INT32_MAX__ 2147483647L
#define __INT64_MAX__ 9223372036854775807LL
#define __UINT8_MAX__ 255
#define __UINT16_MAX__ 65535
#define __UINT32_MAX__ 4294967295UL
#define __UINT64_MAX__ 18446744073709551615ULL
#define __INT_LEAST8_MAX__ 127
#define __INT8_C(c) c
#define __INT_LEAST16_MAX__ 32767
#define __INT16_C(c) c
#define __INT_LEAST32_MAX__ 2147483647L
#define __INT32_C(c) c ## L
#define __INT_LEAST64_MAX__ 9223372036854775807LL
#define __INT64_C(c) c ## LL
#define __UINT_LEAST8_MAX__ 255
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 65535
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 4294967295UL
#define __UINT32_C(c) c ## UL
#define __UINT_LEAST64_MAX__ 18446744073709551615ULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 2147483647
#define __INT_FAST16_MAX__ 2147483647
#define __INT_FAST32_MAX__ 2147483647
#define __INT_FAST64_MAX__ 9223372036854775807LL
#define __UINT_FAST8_MAX__ 4294967295U
#define __UINT_FAST16_MAX__ 4294967295U
#define __UINT_FAST32_MAX__ 4294967295U
#define __UINT_FAST64_MAX__ 18446744073709551615ULL
#define __INTPTR_MAX__ 2147483647
#define __UINTPTR_MAX__ 4294967295U
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.4028234663852886e+38F
#define __FLT_MIN__ 1.1754943508222875e-38F
#define __FLT_EPSILON__ 1.1920928955078125e-7F
#define __FLT_DENORM_MIN__ 1.4012984643248171e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __FP_FAST_FMAF 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_MIN__ ((double)2.2250738585072014e-308L)
#define __DBL_EPSILON__ ((double)2.2204460492503131e-16L)
#define __DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 53
#define __LDBL_DIG__ 15
#define __LDBL_MIN_EXP__ (-1021)
#define __LDBL_MIN_10_EXP__ (-307)
#define __LDBL_MAX_EXP__ 1024
#define __LDBL_MAX_10_EXP__ 308
#define __DECIMAL_DIG__ 17
#define __LDBL_MAX__ 1.7976931348623157e+308L
#define __LDBL_MIN__ 2.2250738585072014e-308L
#define __LDBL_EPSILON__ 2.2204460492503131e-16L
#define __LDBL_DENORM_MIN__ 4.9406564584124654e-324L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __DEC32_MANT_DIG__ 7
#define __DEC32_MIN_EXP__ (-94)
#define __DEC32_MAX_EXP__ 97
#define __DEC32_MIN__ 1E-95DF
#define __DEC32_MAX__ 9.999999E96DF
#define __DEC32_EPSILON__ 1E-6DF
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __DEC64_MANT_DIG__ 16
#define __DEC64_MIN_EXP__ (-382)
#define __DEC64_MAX_EXP__ 385
#define __DEC64_MIN__ 1E-383DD
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __DEC64_EPSILON__ 1E-15DD
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __DEC128_MANT_DIG__ 34
#define __DEC128_MIN_EXP__ (-6142)
#define __DEC128_MAX_EXP__ 6145
#define __DEC128_MIN__ 1E-6143DL
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __DEC128_EPSILON__ 1E-33DL
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __SFRACT_FBIT__ 7
#define __SFRACT_IBIT__ 0
#define __SFRACT_MIN__ (-0.5HR-0.5HR)
#define __SFRACT_MAX__ 0X7FP-7HR
#define __SFRACT_EPSILON__ 0x1P-7HR
#define __USFRACT_FBIT__ 8
#define __USFRACT_IBIT__ 0
#define __USFRACT_MIN__ 0.0UHR
#define __USFRACT_MAX__ 0XFFP-8UHR
#define __USFRACT_EPSILON__ 0x1P-8UHR
#define __FRACT_FBIT__ 15
#define __FRACT_IBIT__ 0
#define __FRACT_MIN__ (-0.5R-0.5R)
#define __FRACT_MAX__ 0X7FFFP-15R
#define __FRACT_EPSILON__ 0x1P-15R
#define __UFRACT_FBIT__ 16
#define __UFRACT_IBIT__ 0
#define __UFRACT_MIN__ 0.0UR
#define __UFRACT_MAX__ 0XFFFFP-16UR
#define __UFRACT_EPSILON__ 0x1P-16UR
#define __LFRACT_FBIT__ 31
#define __LFRACT_IBIT__ 0
#define __LFRACT_MIN__ (-0.5LR-0.5LR)
#define __LFRACT_MAX__ 0X7FFFFFFFP-31LR
#define __LFRACT_EPSILON__ 0x1P-31LR
#define __ULFRACT_FBIT__ 32
#define __ULFRACT_IBIT__ 0
#define __ULFRACT_MIN__ 0.0ULR
#define __ULFRACT_MAX__ 0XFFFFFFFFP-32ULR
#define __ULFRACT_EPSILON__ 0x1P-32ULR
#define __LLFRACT_FBIT__ 63
#define __LLFRACT_IBIT__ 0
#define __LLFRACT_MIN__ (-0.5LLR-0.5LLR)
#define __LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR
#define __LLFRACT_EPSILON__ 0x1P-63LLR
#define __ULLFRACT_FBIT__ 64
#define __ULLFRACT_IBIT__ 0
#define __ULLFRACT_MIN__ 0.0ULLR
#define __ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR
#define __ULLFRACT_EPSILON__ 0x1P-64ULLR
#define __SACCUM_FBIT__ 7
#define __SACCUM_IBIT__ 8
#define __SACCUM_MIN__ (-0X1P7HK-0X1P7HK)
#define __SACCUM_MAX__ 0X7FFFP-7HK
#define __SACCUM_EPSILON__ 0x1P-7HK
#define __USACCUM_FBIT__ 8
#define __USACCUM_IBIT__ 8
#define __USACCUM_MIN__ 0.0UHK
#define __USACCUM_MAX__ 0XFFFFP-8UHK
#define __USACCUM_EPSILON__ 0x1P-8UHK
#define __ACCUM_FBIT__ 15
#define __ACCUM_IBIT__ 16
#define __ACCUM_MIN__ (-0X1P15K-0X1P15K)
#define __ACCUM_MAX__ 0X7FFFFFFFP-15K
#define __ACCUM_EPSILON__ 0x1P-15K
#define __UACCUM_FBIT__ 16
#define __UACCUM_IBIT__ 16
#define __UACCUM_MIN__ 0.0UK
#define __UACCUM_MAX__ 0XFFFFFFFFP-16UK
#define __UACCUM_EPSILON__ 0x1P-16UK
#define __LACCUM_FBIT__ 31
#define __LACCUM_IBIT__ 32
#define __LACCUM_MIN__ (-0X1P31LK-0X1P31LK)
#define __LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK
#define __LACCUM_EPSILON__ 0x1P-31LK
#define __ULACCUM_FBIT__ 32
#define __ULACCUM_IBIT__ 32
#define __ULACCUM_MIN__ 0.0ULK
#define __ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK
#define __ULACCUM_EPSILON__ 0x1P-32ULK
#define __LLACCUM_FBIT__ 31
#define __LLACCUM_IBIT__ 32
#define __LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)
#define __LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK
#define __LLACCUM_EPSILON__ 0x1P-31LLK
#define __ULLACCUM_FBIT__ 32
#define __ULLACCUM_IBIT__ 32
#define __ULLACCUM_MIN__ 0.0ULLK
#define __ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK
#define __ULLACCUM_EPSILON__ 0x1P-32ULLK
#define __QQ_FBIT__ 7
#define __QQ_IBIT__ 0
#define __HQ_FBIT__ 15
#define __HQ_IBIT__ 0
#define __SQ_FBIT__ 31
#define __SQ_IBIT__ 0
#define __DQ_FBIT__ 63
#define __DQ_IBIT__ 0
#define __TQ_FBIT__ 127
#define __TQ_IBIT__ 0
#define __UQQ_FBIT__ 8
#define __UQQ_IBIT__ 0
#define __UHQ_FBIT__ 16
#define __UHQ_IBIT__ 0
#define __USQ_FBIT__ 32
#define __USQ_IBIT__ 0
#define __UDQ_FBIT__ 64
#define __UDQ_IBIT__ 0
#define __UTQ_FBIT__ 128
#define __UTQ_IBIT__ 0
#define __HA_FBIT__ 7
#define __HA_IBIT__ 8
#define __SA_FBIT__ 15
#define __SA_IBIT__ 16
#define __DA_FBIT__ 31
#define __DA_IBIT__ 32
#define __TA_FBIT__ 63
#define __TA_IBIT__ 64
#define __UHA_FBIT__ 8
#define __UHA_IBIT__ 8
#define __USA_FBIT__ 16
#define __USA_IBIT__ 16
#define __UDA_FBIT__ 32
#define __UDA_IBIT__ 32
#define __UTA_FBIT__ 64
#define __UTA_IBIT__ 64
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __STRICT_ANSI__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 2
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 1
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __ARM_FEATURE_DSP 1
#define __ARM_FEATURE_QBIT 1
#define __ARM_FEATURE_SAT 1
#define __ARM_FEATURE_UNALIGNED 1
#define __ARM_32BIT_STATE 1
#define __ARM_FEATURE_LDREX 7
#define __ARM_FEATURE_CLZ 1
#define __ARM_FEATURE_SIMD32 1
#define __ARM_SIZEOF_MINIMAL_ENUM 1
#define __ARM_SIZEOF_WCHAR_T 4
#define __ARM_ARCH_PROFILE 77
#define __arm__ 1
#define __ARM_ARCH 7
#define __APCS_32__ 1
#define __thumb__ 1
#define __thumb2__ 1
#define __ARM_ARCH_ISA_THUMB 2
#define __ARMEL__ 1
#define __THUMBEL__ 1
#define __VFP_FP__ 1
#define __ARM_FP 4
#define __ARM_FEATURE_FMA 1
#define __ARM_NEON_FP 4
#define __THUMB_INTERWORK__ 1
#define __ARM_ARCH_7EM__ 1
#define __ARM_PCS_VFP 1
#define __ARM_EABI__ 1
#define __ARM_ARCH_EXT_IDIV__ 1
#define __GXX_TYPEINFO_EQUALITY_INLINE 0
#define __ELF__ 1
# 1 "<command-line>"
#define __USES_INITFINI__ 1
#define CPU_S32K144HFT0VLLT 1
#define S32K 1
#define DEV_ERROR_DETECT 1
# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
# 71 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 1 3







#define _STDLIB_H_ 

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 60 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\ieeefp.h" 3
#define __IEEE_LITTLE_ENDIAN 
# 11 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 1 3
# 13 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 3
#define _ANSIDECL_H_ 

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\newlib.h" 1 3







#define __NEWLIB_H__ 1





#define _NEWLIB_VERSION "2.2.0"






#define _WANT_IO_LONG_LONG 1


#define _WANT_REGISTER_FINI 1
# 40 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\newlib.h" 3
#define _MB_LEN_MAX 1
# 50 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\newlib.h" 3
#define HAVE_INITFINI_ARRAY 1



#define _ATEXIT_DYNAMIC_ALLOC 1


#define _HAVE_LONG_DOUBLE 1


#define _HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1


#define _LDBL_EQ_DBL 1


#define _FVWRITE_IN_STREAMIO 1


#define _FSEEK_OPTIMIZATION 1


#define _WIDE_ORIENT 1


#define _UNBUF_STREAM_OPT 1
# 16 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\config.h" 1 3

#define __SYS_CONFIG_H__ 

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\features.h" 1 3
# 22 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\features.h" 3
#define _SYS_FEATURES_H 
# 31 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\features.h" 3
#define __NEWLIB__ 2
#define __NEWLIB_MINOR__ 2




#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))






#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 6 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 220 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\config.h" 3
#define _POINTER_INT long





#undef __RAND_MAX



#define __RAND_MAX 0x7fffffff
# 248 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\config.h" 3
#define __EXPORT 



#define __IMPORT 






#define _READ_WRITE_RETURN_TYPE int





#define _READ_WRITE_BUFSIZE_TYPE int
# 17 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 2 3






#define _HAVE_STDC 
# 44 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 3
#define _BEGIN_STD_C 
#define _END_STD_C 
#define _NOTHROW 



#define _PTR void *
#define _AND ,
#define _NOARGS void
#define _CONST const
#define _VOLATILE volatile
#define _SIGNED signed
#define _DOTS , ...
#define _VOID void






#define _EXFUN_NOTHROW(name,proto) name proto _NOTHROW
#define _EXFUN(name,proto) name proto
#define _EXPARM(name,proto) (* name) proto
#define _EXFNPTR(name,proto) (* name) proto

#define _DEFUN(name,arglist,args) name(args)
#define _DEFUN_VOID(name) name(_NOARGS)
#define _CAST_VOID (void)

#define _LONG_DOUBLE long double


#define _PARAMS(paramlist) paramlist
# 101 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 3
#define _ATTRIBUTE(attrs) __attribute__ (attrs)
# 127 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 3
#define _ELIDABLE_INLINE static __inline__



#define _NOINLINE __attribute__ ((__noinline__))
#define _NOINLINE_STATIC _NOINLINE static
# 12 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 2 3

#define __need_size_t 
#define __need_wchar_t 
#define __need_NULL 
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 184 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#define __size_t__ 
#define __SIZE_T__ 
#define _SIZE_T 
#define _SYS_SIZE_T_H 
#define _T_SIZE_ 
#define _T_SIZE 
#define __SIZE_T 
#define _SIZE_T_ 
#define _BSD_SIZE_T_ 
#define _SIZE_T_DEFINED_ 
#define _SIZE_T_DEFINED 
#define _BSD_SIZE_T_DEFINED_ 
#define _SIZE_T_DECLARED 
#define ___int_size_t_h 
#define _GCC_SIZE_T 
#define _SIZET_ 






#define __size_t 





typedef unsigned int size_t;
# 234 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_size_t
# 263 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#define __wchar_t__ 
#define __WCHAR_T__ 
#define _WCHAR_T 
#define _T_WCHAR_ 
#define _T_WCHAR 
#define __WCHAR_T 
#define _WCHAR_T_ 
#define _BSD_WCHAR_T_ 
#define _WCHAR_T_DEFINED_ 
#define _WCHAR_T_DEFINED 
#define _WCHAR_T_H 
#define ___int_wchar_t_h 
#define __INT_WCHAR_T_H 
#define _GCC_WCHAR_T 
#define _WCHAR_T_DECLARED 
# 290 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef _BSD_WCHAR_T_
# 324 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 343 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 397 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL
# 17 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 2 3

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 1 3
# 11 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _SYS_REENT_H_ 

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\_ansi.h" 1 3
# 14 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 39 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#define _STDDEF_H 
#define _STDDEF_H_ 

#define _ANSI_STDDEF_H 
# 136 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#define _PTRDIFF_T 
#define _T_PTRDIFF_ 
#define _T_PTRDIFF 
#define __PTRDIFF_T 
#define _PTRDIFF_T_ 
#define _BSD_PTRDIFF_T_ 
#define ___int_ptrdiff_t_h 
#define _GCC_PTRDIFF_T 



typedef int ptrdiff_t;
# 158 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 234 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_size_t
# 343 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 397 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 15 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 1 3
# 10 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 3
#define _SYS__TYPES_H 

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_types.h" 1 3





#define _MACHINE__TYPES_H 
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 1 3





#define _MACHINE__DEFAULT_TYPES_H 
# 15 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
#define __EXP(x) __ ##x ##__
# 27 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;



#define ___int8_t_defined 1







typedef short int __int16_t;

typedef short unsigned int __uint16_t;



#define ___int16_t_defined 1
# 63 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;



#define ___int32_t_defined 1
# 89 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;



#define ___int64_t_defined 1
# 120 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;



#define ___int_least8_t_defined 1
# 146 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;



#define ___int_least16_t_defined 1
# 168 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;



#define ___int_least32_t_defined 1
# 186 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;



#define ___int_least64_t_defined 1







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 214 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_default_types.h" 3
#undef __EXP
# 8 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\_types.h" 2 3
# 13 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\lock.h" 1 3

#define __SYS_LOCK_H__ 



typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;



#define __LOCK_INIT(class,lock) static int lock = 0;
#define __LOCK_INIT_RECURSIVE(class,lock) static int lock = 0;
#define __lock_init(lock) (_CAST_VOID 0)
#define __lock_init_recursive(lock) (_CAST_VOID 0)
#define __lock_close(lock) (_CAST_VOID 0)
#define __lock_close_recursive(lock) (_CAST_VOID 0)
#define __lock_acquire(lock) (_CAST_VOID 0)
#define __lock_acquire_recursive(lock) (_CAST_VOID 0)
#define __lock_try_acquire(lock) (_CAST_VOID 0)
#define __lock_try_acquire_recursive(lock) (_CAST_VOID 0)
#define __lock_release(lock) (_CAST_VOID 0)
#define __lock_release_recursive(lock) (_CAST_VOID 0)
# 14 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 2 3


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 54 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 3
#define unsigned signed
typedef signed int _ssize_t;
#undef unsigned
# 66 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 3
#define __need_wint_t 
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 158 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 234 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_size_t
# 343 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_wchar_t




#define _WINT_T 




typedef unsigned int wint_t;

#undef __need_wint_t
# 397 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 68 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 2 3

#define _NULL 0



#define __Long long
typedef unsigned long __ULong;
# 38 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};





#define _ATEXIT_SIZE 32

struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 91 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
#define _ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}





#define _REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,
# 115 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 176 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_SMALL_CHECK_INIT(ptr) 


struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 310 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _RAND48_SEED_0 (0x330e)
#define _RAND48_SEED_1 (0xabcd)
#define _RAND48_SEED_2 (0x1234)
#define _RAND48_MULT_0 (0xe66d)
#define _RAND48_MULT_1 (0xdeec)
#define _RAND48_MULT_2 (0x0005)
#define _RAND48_ADD (0x000b)
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};


#define _REENT_EMERGENCY_SIZE 25
#define _REENT_ASCTIME_SIZE 26
#define _REENT_SIGNAL_SIZE 24
# 569 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {
#define _N_LISTS 30
          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};

#define _REENT_INIT(var) { 0, &(var).__sf[0], &(var).__sf[1], &(var).__sf[2], 0, "", 0, "C", 0, _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL, { { 0, _NULL, "", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, "", "", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_ATEXIT _NULL, {_NULL, 0, _NULL} }
# 697 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); (var)->_stdin = &(var)->__sf[0]; (var)->_stdout = &(var)->__sf[1]; (var)->_stderr = &(var)->__sf[2]; (var)->_current_locale = "C"; (var)->_new._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_SEED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }
# 713 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT_CHECK_RAND48(ptr) 
#define _REENT_CHECK_MP(ptr) 
#define _REENT_CHECK_TM(ptr) 
#define _REENT_CHECK_ASCTIME_BUF(ptr) 
#define _REENT_CHECK_EMERGENCY(ptr) 
#define _REENT_CHECK_MISC(ptr) 
#define _REENT_CHECK_SIGNAL_BUF(ptr) 

#define _REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)
#define _REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)
#define _REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)
#define _REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)
#define _REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)
#define _REENT_MP_RESULT(ptr) ((ptr)->_result)
#define _REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)
#define _REENT_MP_P5S(ptr) ((ptr)->_p5s)
#define _REENT_MP_FREELIST(ptr) ((ptr)->_freelist)
#define _REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)
#define _REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)
#define _REENT_EMERGENCY(ptr) ((ptr)->_emergency)
#define _REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)
#define _REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)
#define _REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)
#define _REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)
#define _REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)
#define _REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)
#define _REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)
#define _REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)
#define _REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)
#define _REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)
#define _REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)
#define _REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))






#define _Kmax (sizeof (size_t) << 3)







#define __ATTRIBUTE_IMPURE_PTR__ 


extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 775 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\reent.h" 3
#define _REENT _impure_ptr


#define _GLOBAL_REENT _global_impure_ptr





#define _GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)
# 19 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 1 3
# 41 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define _SYS_CDEFS_H_ 



# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 46 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 2 3

#define __PMT(args) args
#define __DOTS , ...
#define __THROW 


#define __ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname


#define __ptr_t void *
#define __long_double_t long double

#define __attribute_malloc__ 
#define __attribute_pure__ 
#define __attribute_format_strfmon__(a,b) 
#define __flexarr [0]


#define __bounded 
#define __unbounded 
#define __ptrvalue 







#define __has_extension __has_feature


#define __has_feature(x) 0





#define __has_builtin(x) 0






#define __BEGIN_DECLS 
#define __END_DECLS 
# 103 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __GNUCLIKE_ASM 3
#define __GNUCLIKE_MATH_BUILTIN_CONSTANTS 



#define __GNUCLIKE___TYPEOF 1
#define __GNUCLIKE___OFFSETOF 1
#define __GNUCLIKE___SECTION 1


#define __GNUCLIKE_CTOR_SECTION_HANDLING 1


#define __GNUCLIKE_BUILTIN_CONSTANT_P 1






#define __GNUCLIKE_BUILTIN_VARARGS 1
#define __GNUCLIKE_BUILTIN_STDARG 1
#define __GNUCLIKE_BUILTIN_VAALIST 1



#define __GNUC_VA_LIST_COMPATIBILITY 1






#define __compiler_membar() __asm __volatile(" " : : : "memory")



#define __GNUCLIKE_BUILTIN_NEXT_ARG 1
#define __GNUCLIKE_MATH_BUILTIN_RELOPS 


#define __GNUCLIKE_BUILTIN_MEMCPY 1


#define __CC_SUPPORTS_INLINE 1
#define __CC_SUPPORTS___INLINE 1
#define __CC_SUPPORTS___INLINE__ 1

#define __CC_SUPPORTS___FUNC__ 1
#define __CC_SUPPORTS_WARNING 1

#define __CC_SUPPORTS_VARADIC_XXX 1

#define __CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
# 173 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __P(protos) protos
#define __CONCAT1(x,y) x ## y
#define __CONCAT(x,y) __CONCAT1(x,y)
#define __STRING(x) #x
#define __XSTRING(x) __STRING(x)

#define __const const
#define __signed signed
#define __volatile volatile
# 246 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __dead2 __attribute__((__noreturn__))
#define __pure2 __attribute__((__const__))
#define __unused __attribute__((__unused__))
#define __used __attribute__((__used__))
#define __packed __attribute__((__packed__))
#define __aligned(x) __attribute__((__aligned__(x)))
#define __section(x) __attribute__((__section__(x)))
# 281 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define _Alignas(x) __aligned(x)






#define _Alignof(x) __alignof(x)







#define _Atomic(T) struct { T volatile __val; }





#define _Noreturn __dead2
# 326 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define _Thread_local __thread
# 345 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __generic(expr,t,yes,no) __builtin_choose_expr( __builtin_types_compatible_p(__typeof(expr), t), yes, no)





#define __malloc_like __attribute__((__malloc__))
#define __pure __attribute__((__pure__))






#define __always_inline __attribute__((__always_inline__))





#define __noinline __attribute__ ((__noinline__))





#define __nonnull(x) __attribute__((__nonnull__(x)))





#define __fastcall __attribute__((__fastcall__))





#define __returns_twice __attribute__((__returns_twice__))
# 403 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __restrict restrict
# 436 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __predict_true(exp) __builtin_expect((exp), 1)
#define __predict_false(exp) __builtin_expect((exp), 0)






#define __hidden __attribute__((__visibility__("hidden")))
#define __exported __attribute__((__visibility__("default")))





#define __offsetof(type,field) offsetof(type, field)
#define __rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))
# 462 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __containerof(x,s,m) ({ const volatile __typeof__(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})
# 484 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))

#define __scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))

#define __format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))
#define __strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))

#define __strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
# 501 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __printf0like(fmtarg,firstvararg) 




#define __strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))




#define __weak_reference(sym,alias) __asm__(".weak " #alias); __asm__(".equ " #alias ", " #sym)


#define __warn_references(sym,msg) __asm__(".section .gnu.warning." #sym); __asm__(".asciz \"" msg "\""); __asm__(".previous")



#define __sym_compat(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@" #verid)

#define __sym_default(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@@" #verid)
# 555 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __FBSDID(s) struct __hack



#define __RCSID(s) struct __hack



#define __RCSID_SOURCE(s) struct __hack



#define __SCCSID(s) struct __hack



#define __COPYRIGHT(s) struct __hack



#define __DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))



#define __DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))



#define __DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))
# 705 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\cdefs.h" 3
#define __POSIX_VISIBLE 200809
#define __XSI_VISIBLE 700
#define __BSD_VISIBLE 1
#define __ISO_C_VISIBLE 2011
# 20 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\stdlib.h" 1 3

#define _MACHSTDLIB_H_ 
# 21 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 2 3
# 29 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;




typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;



#define __compar_fn_t_defined 
typedef int (*__compar_fn_t) (const void *, const void *);


#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

#define RAND_MAX __RAND_MAX

int __locale_mb_cur_max (void);

#define MB_CUR_MAX __locale_mb_cur_max()

void abort (void) __attribute__ ((__noreturn__));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 124 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);



float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);
# 161 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));
# 180 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 211 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3
long long atoll (const char *__nptr);







long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);







unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);
# 246 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 279 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdlib.h" 3
extern long double strtold (const char *restrict, char **restrict);




# 72 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\string.h" 1 3







#define _STRING_H_ 






#define __need_size_t 
#define __need_NULL 
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 158 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 234 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_size_t
# 343 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 397 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 18 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\string.h" 2 3



void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);





void * memrchr (const void *, int, size_t);




char *rindex (const char *, int);

char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);

int strcasecmp (const char *, const char *);






char *strdup (const char *);





char *strndup (const char *, size_t);
# 106 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);



size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);
# 145 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\string.h" 3
char *strsignal (int __signo);
# 182 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\string.h" 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\string.h" 1 3
# 183 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\string.h" 2 3


# 73 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2




#define MPU_WRAPPERS_INCLUDED_FROM_API_FILE 


# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h" 1
# 71 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define INC_FREERTOS_H 




# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 77 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h" 2
# 91 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stdint.h" 1 3 4
# 9 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stdint.h" 3 4
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 1 3 4
# 10 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define _STDINT_H 


# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 1 3 4
# 10 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define _SYS__INTSUP_H 





#define __STDINT_EXP(x) __ ##x ##__
# 26 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __have_longlong64 1






#define __have_long32 1
# 49 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef long
#define signed +0
#define unsigned +0
#define char +0
#define short +1
#define int +2
#define long +4
# 77 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define _INT32_EQ_LONG 







#define __INT8 "hh"
# 96 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __INT16 "h"
# 107 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __INT32 "l"
# 116 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __INT64 "ll"






#define __FAST8 
# 132 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __FAST16 






#define __FAST32 
# 150 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __FAST64 "ll"



#define __LEAST8 "hh"
# 165 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __LEAST16 "h"
# 176 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __LEAST32 "l"
# 185 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
#define __LEAST64 "ll"

#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef long
       
       
       
       
       
       
# 14 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 2 3 4
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_stdint.h" 1 3 4
# 10 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
#define _SYS__STDINT_H 
# 19 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;
#define __int8_t_defined 1



typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;
#define __int16_t_defined 1



typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;
#define __int32_t_defined 1



typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;
#define __int64_t_defined 1


typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 15 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
#define __int_least8_t_defined 1



typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
#define __int_least16_t_defined 1



typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
#define __int_least32_t_defined 1



typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
#define __int_least64_t_defined 1
# 51 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
#define __int_fast8_t_defined 1







  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
#define __int_fast16_t_defined 1







  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
#define __int_fast32_t_defined 1







  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
#define __int_fast64_t_defined 1
# 130 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef long long int intmax_t;
# 139 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef long long unsigned int uintmax_t;







#define INTPTR_MIN (-__INTPTR_MAX__ - 1)
#define INTPTR_MAX (__INTPTR_MAX__)
#define UINTPTR_MAX (__UINTPTR_MAX__)
# 171 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT8_MIN (-__INT8_MAX__ - 1)
#define INT8_MAX (__INT8_MAX__)
#define UINT8_MAX (__UINT8_MAX__)







#define INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)
#define INT_LEAST8_MAX (__INT_LEAST8_MAX__)
#define UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)
# 193 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT16_MIN (-__INT16_MAX__ - 1)
#define INT16_MAX (__INT16_MAX__)
#define UINT16_MAX (__UINT16_MAX__)







#define INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)
#define INT_LEAST16_MAX (__INT_LEAST16_MAX__)
#define UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)
# 215 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT32_MIN (-__INT32_MAX__ - 1)
#define INT32_MAX (__INT32_MAX__)
#define UINT32_MAX (__UINT32_MAX__)
# 231 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)
#define INT_LEAST32_MAX (__INT_LEAST32_MAX__)
#define UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)
# 249 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT64_MIN (-__INT64_MAX__ - 1)
#define INT64_MAX (__INT64_MAX__)
#define UINT64_MAX (__UINT64_MAX__)
# 265 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)
#define INT_LEAST64_MAX (__INT_LEAST64_MAX__)
#define UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)
# 281 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)
#define INT_FAST8_MAX (__INT_FAST8_MAX__)
#define UINT_FAST8_MAX (__UINT_FAST8_MAX__)
# 297 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)
#define INT_FAST16_MAX (__INT_FAST16_MAX__)
#define UINT_FAST16_MAX (__UINT_FAST16_MAX__)
# 313 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)
#define INT_FAST32_MAX (__INT_FAST32_MAX__)
#define UINT_FAST32_MAX (__UINT_FAST32_MAX__)
# 329 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)
#define INT_FAST64_MAX (__INT_FAST64_MAX__)
#define UINT_FAST64_MAX (__UINT_FAST64_MAX__)
# 345 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INTMAX_MAX (__INTMAX_MAX__)
#define INTMAX_MIN (-INTMAX_MAX - 1)







#define UINTMAX_MAX (__UINTMAX_MAX__)







#define SIZE_MAX (__SIZE_MAX__)





#define SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)
#define SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))



#define PTRDIFF_MAX (__PTRDIFF_MAX__)



#define PTRDIFF_MIN (-PTRDIFF_MAX - 1)




#define WCHAR_MIN (__WCHAR_MIN__)
# 393 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define WCHAR_MAX (__WCHAR_MAX__)
# 403 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define WINT_MAX (__WINT_MAX__)




#define WINT_MIN (__WINT_MIN__)






#define INT8_C(x) __INT8_C(x)
#define UINT8_C(x) __UINT8_C(x)
# 427 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT16_C(x) __INT16_C(x)
#define UINT16_C(x) __UINT16_C(x)
# 439 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT32_C(x) __INT32_C(x)
#define UINT32_C(x) __UINT32_C(x)
# 452 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INT64_C(x) __INT64_C(x)
#define UINT64_C(x) __UINT64_C(x)
# 468 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdint.h" 3 4
#define INTMAX_C(x) __INTMAX_C(x)
#define UINTMAX_C(x) __UINTMAX_C(x)
# 10 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stdint.h" 2 3 4



#define _GCC_WRAP_STDINT_H 
# 92 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h" 2






# 1 "C:/NXP/Workspace/CLUSTER/clusterRtosFinal/clusterRtosFinal/Generated_Code/FreeRTOSConfig.h" 1
# 72 "C:/NXP/Workspace/CLUSTER/clusterRtosFinal/clusterRtosFinal/Generated_Code/FreeRTOSConfig.h"
#define FREERTOS_CONFIG_H 
# 86 "C:/NXP/Workspace/CLUSTER/clusterRtosFinal/clusterRtosFinal/Generated_Code/FreeRTOSConfig.h"
#define configUSE_PREEMPTION 1
#define configUSE_IDLE_HOOK 1
#define configUSE_TICK_HOOK 1
#define configCPU_CLOCK_HZ ( 48000000UL )
#define configTICK_RATE_HZ ( ( TickType_t ) 1000 )
#define configMAX_PRIORITIES ( 5 )
#define configMINIMAL_STACK_SIZE ( ( unsigned short ) 90 )
#define configTOTAL_HEAP_SIZE ( ( size_t ) 8192 )
#define configMAX_TASK_NAME_LEN ( 10 )
#define configUSE_TRACE_FACILITY 0
#define configUSE_16_BIT_TICKS 0
#define configIDLE_SHOULD_YIELD 1
#define configUSE_MUTEXES 1
#define configQUEUE_REGISTRY_SIZE 8
#define configCHECK_FOR_STACK_OVERFLOW 2
#define configUSE_RECURSIVE_MUTEXES 1
#define configUSE_MALLOC_FAILED_HOOK 1
#define configUSE_APPLICATION_TASK_TAG 0
#define configUSE_COUNTING_SEMAPHORES 1


#define configUSE_CO_ROUTINES 0
#define configMAX_CO_ROUTINE_PRIORITIES ( 2 )


#define configUSE_TIMERS 1
#define configTIMER_TASK_PRIORITY ( 2 )
#define configTIMER_QUEUE_LENGTH 10
#define configTIMER_TASK_STACK_DEPTH 180


#define INCLUDE_vTaskPrioritySet 1
#define INCLUDE_uxTaskPriorityGet 1
#define INCLUDE_vTaskDelete 1
#define INCLUDE_vTaskSuspend 1
#define INCLUDE_vTaskDelayUntil 1
#define INCLUDE_vTaskDelay 1
#define INCLUDE_eTaskGetState 1
#define INCLUDE_uxTaskGetStackHighWaterMark 1
#define INCLUDE_xTaskGetSchedulerState 1
#define INCLUDE_xQueueGetMutexHolder 1
#define INCLUDE_xTaskGetCurrentTaskHandle 1
#define INCLUDE_xTaskGetIdleTaskHandle 0
#define INCLUDE_pcTaskGetTaskName 0
#define INCLUDE_xEventGroupSetBitFromISR 1
#define INCLUDE_xTimerPendFunctionCall 1







#define configUSE_STATS_FORMATTING_FUNCTIONS 1
# 151 "C:/NXP/Workspace/CLUSTER/clusterRtosFinal/clusterRtosFinal/Generated_Code/FreeRTOSConfig.h"
 void vMainConfigureTimerForRunTimeStats( void );
 unsigned long ulMainGetRunTimeCounterValue( void );


#define configGENERATE_RUN_TIME_STATS 0





#define configPRIO_BITS 4




#define configLIBRARY_LOWEST_INTERRUPT_PRIORITY (0x0F)





#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY (0x01)




#define configKERNEL_INTERRUPT_PRIORITY (configLIBRARY_LOWEST_INTERRUPT_PRIORITY << (8-configPRIO_BITS))





#define configMAX_SYSCALL_INTERRUPT_PRIORITY (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY << (8-configPRIO_BITS))



#define configASSERT(x) if((x)==0) { taskDISABLE_INTERRUPTS(); for( ;; ); }


#define configUSE_TICKLESS_IDLE 0
#define configEXPECTED_IDLE_TIME_BEFORE_SLEEP 2
#define configUSE_TICKLESS_IDLE_DECISION_HOOK 0



#define vPortSVCHandler SVC_Handler
#define xPortPendSVHandler PendSV_Handler
#define xPortSysTickHandler SysTick_Handler
# 99 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h" 2


# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/projdefs.h" 1
# 71 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/projdefs.h"
#define PROJDEFS_H 





typedef void (*TaskFunction_t)( void * );


#define pdMS_TO_TICKS(xTimeInMs) ( ( TickType_t ) ( ( ( TickType_t ) ( xTimeInMs ) * ( TickType_t ) configTICK_RATE_HZ ) / ( TickType_t ) 1000 ) )

#define pdFALSE ( ( BaseType_t ) 0 )
#define pdTRUE ( ( BaseType_t ) 1 )

#define pdPASS ( pdTRUE )
#define pdFAIL ( pdFALSE )
#define errQUEUE_EMPTY ( ( BaseType_t ) 0 )
#define errQUEUE_FULL ( ( BaseType_t ) 0 )


#define errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ( -1 )
#define errQUEUE_BLOCKED ( -4 )
#define errQUEUE_YIELD ( -5 )



#define configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES 0





#define pdINTEGRITY_CHECK_VALUE 0x5a5a5a5aUL




#define pdFREERTOS_ERRNO_NONE 0
#define pdFREERTOS_ERRNO_ENOENT 2
#define pdFREERTOS_ERRNO_EIO 5
#define pdFREERTOS_ERRNO_ENXIO 6
#define pdFREERTOS_ERRNO_EBADF 9
#define pdFREERTOS_ERRNO_EAGAIN 11
#define pdFREERTOS_ERRNO_EWOULDBLOCK 11
#define pdFREERTOS_ERRNO_ENOMEM 12
#define pdFREERTOS_ERRNO_EACCES 13
#define pdFREERTOS_ERRNO_EFAULT 14
#define pdFREERTOS_ERRNO_EBUSY 16
#define pdFREERTOS_ERRNO_EEXIST 17
#define pdFREERTOS_ERRNO_EXDEV 18
#define pdFREERTOS_ERRNO_ENODEV 19
#define pdFREERTOS_ERRNO_ENOTDIR 20
#define pdFREERTOS_ERRNO_EISDIR 21
#define pdFREERTOS_ERRNO_EINVAL 22
#define pdFREERTOS_ERRNO_ENOSPC 28
#define pdFREERTOS_ERRNO_ESPIPE 29
#define pdFREERTOS_ERRNO_EROFS 30
#define pdFREERTOS_ERRNO_EUNATCH 42
#define pdFREERTOS_ERRNO_EBADE 50
#define pdFREERTOS_ERRNO_EFTYPE 79
#define pdFREERTOS_ERRNO_ENMFILE 89
#define pdFREERTOS_ERRNO_ENOTEMPTY 90
#define pdFREERTOS_ERRNO_ENAMETOOLONG 91
#define pdFREERTOS_ERRNO_EOPNOTSUPP 95
#define pdFREERTOS_ERRNO_ENOBUFS 105
#define pdFREERTOS_ERRNO_ENOPROTOOPT 109
#define pdFREERTOS_ERRNO_EADDRINUSE 112
#define pdFREERTOS_ERRNO_ETIMEDOUT 116
#define pdFREERTOS_ERRNO_EINPROGRESS 119
#define pdFREERTOS_ERRNO_EALREADY 120
#define pdFREERTOS_ERRNO_EADDRNOTAVAIL 125
#define pdFREERTOS_ERRNO_EISCONN 127
#define pdFREERTOS_ERRNO_ENOTCONN 128
#define pdFREERTOS_ERRNO_ENOMEDIUM 135
#define pdFREERTOS_ERRNO_EILSEQ 138
#define pdFREERTOS_ERRNO_ECANCELED 140



#define pdFREERTOS_LITTLE_ENDIAN 0
#define pdFREERTOS_BIG_ENDIAN 1
# 102 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h" 2


# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h" 1
# 75 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h"
#define PORTABLE_H 
# 87 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h"
# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/deprecated_definitions.h" 1
# 71 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/deprecated_definitions.h"
#define DEPRECATED_DEFINITIONS_H 
# 88 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h" 2






# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
# 72 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/portable/GCC/ARM_CM4F/portmacro.h"
#define PORTMACRO_H 
# 89 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/portable/GCC/ARM_CM4F/portmacro.h"
#define portCHAR char
#define portFLOAT float
#define portDOUBLE double
#define portLONG long
#define portSHORT short
#define portSTACK_TYPE uint32_t
#define portBASE_TYPE long

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





 typedef uint32_t TickType_t;
#define portMAX_DELAY ( TickType_t ) 0xffffffffUL



#define portTICK_TYPE_IS_ATOMIC 1




#define portSTACK_GROWTH ( -1 )
#define portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTICK_RATE_HZ )
#define portBYTE_ALIGNMENT 8



#define portYIELD() { portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT; __asm volatile( "dsb" ); __asm volatile( "isb" ); }
# 132 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/portable/GCC/ARM_CM4F/portmacro.h"
#define portNVIC_INT_CTRL_REG ( * ( ( volatile uint32_t * ) 0xe000ed04 ) )
#define portNVIC_PENDSVSET_BIT ( 1UL << 28UL )
#define portEND_SWITCHING_ISR(xSwitchRequired) if( xSwitchRequired != pdFALSE ) portYIELD()
#define portYIELD_FROM_ISR(x) portEND_SWITCHING_ISR( x )



extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
#define portSET_INTERRUPT_MASK_FROM_ISR() ulPortRaiseBASEPRI()
#define portCLEAR_INTERRUPT_MASK_FROM_ISR(x) vPortSetBASEPRI(x)
#define portDISABLE_INTERRUPTS() vPortRaiseBASEPRI()
#define portENABLE_INTERRUPTS() vPortSetBASEPRI(0)
#define portENTER_CRITICAL() vPortEnterCritical()
#define portEXIT_CRITICAL() vPortExitCritical()






#define portTASK_FUNCTION_PROTO(vFunction,pvParameters) void vFunction( void *pvParameters )
#define portTASK_FUNCTION(vFunction,pvParameters) void vFunction( void *pvParameters )




 extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );
#define portSUPPRESS_TICKS_AND_SLEEP(xExpectedIdleTime) vPortSuppressTicksAndSleep( xExpectedIdleTime )





#define configUSE_PORT_OPTIMISED_TASK_SELECTION 1





 __attribute__( ( always_inline ) ) static inline uint8_t ucPortCountLeadingZeros( uint32_t ulBitmap )
 {
 uint8_t ucReturn;

  __asm volatile ( "clz %0, %1" : "=r" ( ucReturn ) : "r" ( ulBitmap ) );
  return ucReturn;
 }







#define portRECORD_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) |= ( 1UL << ( uxPriority ) )
#define portRESET_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) &= ~( 1UL << ( uxPriority ) )



#define portGET_HIGHEST_PRIORITY(uxTopPriority,uxReadyPriorities) uxTopPriority = ( 31 - ucPortCountLeadingZeros( ( uxReadyPriorities ) ) )






 void vPortValidateInterruptPriority( void );
#define portASSERT_IF_INTERRUPT_PRIORITY_INVALID() vPortValidateInterruptPriority()



#define portNOP() 


#define portFORCE_INLINE inline __attribute__(( always_inline))




inline __attribute__(( always_inline)) static void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI;

 __asm volatile
 (
  "	mov %0, %1												\n"
  "	msr basepri, %0											\n"
  "	isb														\n"
  "	dsb														\n"
  :"=r" (ulNewBASEPRI) : "i" ( ((0x01) << (8-4)) )
 );
}



inline __attribute__(( always_inline)) static uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulOriginalBASEPRI, ulNewBASEPRI;

 __asm volatile
 (
  "	mrs %0, basepri											\n"
  "	mov %1, %2												\n"
  "	msr basepri, %1											\n"
  "	isb														\n"
  "	dsb														\n"
  :"=r" (ulOriginalBASEPRI), "=r" (ulNewBASEPRI) : "i" ( ((0x01) << (8-4)) )
 );



 return ulOriginalBASEPRI;
}


inline __attribute__(( always_inline)) static void vPortSetBASEPRI( uint32_t ulNewMaskValue )
{
 __asm volatile
 (
  "	msr basepri, %0	" :: "r" ( ulNewMaskValue )
 );
}
# 95 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h" 2
# 106 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h"
#define portBYTE_ALIGNMENT_MASK ( 0x0007 )
# 126 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h"
#define portNUM_CONFIGURABLE_REGIONS 1






# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/mpu_wrappers.h" 1
# 71 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/mpu_wrappers.h"
#define MPU_WRAPPERS_H 
# 149 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/mpu_wrappers.h"
#define PRIVILEGED_FUNCTION 
#define PRIVILEGED_DATA 
#define portUSING_MPU_WRAPPERS 0
# 134 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h" 2
# 144 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;



typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 165 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions );





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 105 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h" 2
# 179 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define INCLUDE_xTimerGetTimerDaemonTaskHandle 0







#define INCLUDE_xSemaphoreGetMutexHolder INCLUDE_xQueueGetMutexHolder
# 199 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define configNUM_THREAD_LOCAL_STORAGE_POINTERS 0
# 227 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define configUSE_ALTERNATIVE_API 0



#define portCRITICAL_NESTING_IN_TCB 0
# 247 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define INCLUDE_xTaskResumeFromISR 1
# 262 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define configASSERT_DEFINED 1
# 300 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define portCLEAN_UP_TCB(pxTCB) ( void ) pxTCB



#define portPRE_TASK_DELETE_HOOK(pvTaskToDelete,pxYieldPending) 



#define portSETUP_TCB(pxTCB) ( void ) pxTCB
# 321 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define portPOINTER_SIZE_TYPE uint32_t






#define traceSTART() 





#define traceEND() 





#define traceTASK_SWITCHED_IN() 





#define traceINCREASE_TICK_COUNT(x) 




#define traceLOW_POWER_IDLE_BEGIN() 




#define traceLOW_POWER_IDLE_END() 





#define traceTASK_SWITCHED_OUT() 
# 371 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define traceTASK_PRIORITY_INHERIT(pxTCBOfMutexHolder,uxInheritedPriority) 







#define traceTASK_PRIORITY_DISINHERIT(pxTCBOfMutexHolder,uxOriginalPriority) 







#define traceBLOCKING_ON_QUEUE_RECEIVE(pxQueue) 







#define traceBLOCKING_ON_QUEUE_SEND(pxQueue) 
# 405 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define traceMOVED_TASK_TO_READY_STATE(pxTCB) 



#define traceQUEUE_CREATE(pxNewQueue) 



#define traceQUEUE_CREATE_FAILED(ucQueueType) 



#define traceCREATE_MUTEX(pxNewQueue) 



#define traceCREATE_MUTEX_FAILED() 



#define traceGIVE_MUTEX_RECURSIVE(pxMutex) 



#define traceGIVE_MUTEX_RECURSIVE_FAILED(pxMutex) 



#define traceTAKE_MUTEX_RECURSIVE(pxMutex) 



#define traceTAKE_MUTEX_RECURSIVE_FAILED(pxMutex) 



#define traceCREATE_COUNTING_SEMAPHORE() 



#define traceCREATE_COUNTING_SEMAPHORE_FAILED() 



#define traceQUEUE_SEND(pxQueue) 



#define traceQUEUE_SEND_FAILED(pxQueue) 



#define traceQUEUE_RECEIVE(pxQueue) 



#define traceQUEUE_PEEK(pxQueue) 



#define traceQUEUE_PEEK_FROM_ISR(pxQueue) 



#define traceQUEUE_RECEIVE_FAILED(pxQueue) 



#define traceQUEUE_SEND_FROM_ISR(pxQueue) 



#define traceQUEUE_SEND_FROM_ISR_FAILED(pxQueue) 



#define traceQUEUE_RECEIVE_FROM_ISR(pxQueue) 



#define traceQUEUE_RECEIVE_FROM_ISR_FAILED(pxQueue) 



#define traceQUEUE_PEEK_FROM_ISR_FAILED(pxQueue) 



#define traceQUEUE_DELETE(pxQueue) 



#define traceTASK_CREATE(pxNewTCB) 



#define traceTASK_CREATE_FAILED() 



#define traceTASK_DELETE(pxTaskToDelete) 



#define traceTASK_DELAY_UNTIL() 



#define traceTASK_DELAY() 



#define traceTASK_PRIORITY_SET(pxTask,uxNewPriority) 



#define traceTASK_SUSPEND(pxTaskToSuspend) 



#define traceTASK_RESUME(pxTaskToResume) 



#define traceTASK_RESUME_FROM_ISR(pxTaskToResume) 



#define traceTASK_INCREMENT_TICK(xTickCount) 



#define traceTIMER_CREATE(pxNewTimer) 



#define traceTIMER_CREATE_FAILED() 



#define traceTIMER_COMMAND_SEND(xTimer,xMessageID,xMessageValueValue,xReturn) 



#define traceTIMER_EXPIRED(pxTimer) 



#define traceTIMER_COMMAND_RECEIVED(pxTimer,xMessageID,xMessageValue) 



#define traceMALLOC(pvAddress,uiSize) 



#define traceFREE(pvAddress,uiSize) 



#define traceEVENT_GROUP_CREATE(xEventGroup) 



#define traceEVENT_GROUP_CREATE_FAILED() 



#define traceEVENT_GROUP_SYNC_BLOCK(xEventGroup,uxBitsToSet,uxBitsToWaitFor) 



#define traceEVENT_GROUP_SYNC_END(xEventGroup,uxBitsToSet,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred



#define traceEVENT_GROUP_WAIT_BITS_BLOCK(xEventGroup,uxBitsToWaitFor) 



#define traceEVENT_GROUP_WAIT_BITS_END(xEventGroup,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred



#define traceEVENT_GROUP_CLEAR_BITS(xEventGroup,uxBitsToClear) 



#define traceEVENT_GROUP_CLEAR_BITS_FROM_ISR(xEventGroup,uxBitsToClear) 



#define traceEVENT_GROUP_SET_BITS(xEventGroup,uxBitsToSet) 



#define traceEVENT_GROUP_SET_BITS_FROM_ISR(xEventGroup,uxBitsToSet) 



#define traceEVENT_GROUP_DELETE(xEventGroup) 



#define tracePEND_FUNC_CALL(xFunctionToPend,pvParameter1,ulParameter2,ret) 



#define tracePEND_FUNC_CALL_FROM_ISR(xFunctionToPend,pvParameter1,ulParameter2,ret) 



#define traceQUEUE_REGISTRY_ADD(xQueue,pcQueueName) 
# 639 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() 







#define portPRIVILEGE_BIT ( ( UBaseType_t ) 0x00 )



#define portYIELD_WITHIN_API portYIELD



#define pvPortMallocAligned(x,puxStackBuffer) ( ( ( puxStackBuffer ) == NULL ) ? ( pvPortMalloc( ( x ) ) ) : ( puxStackBuffer ) )



#define vPortFreeAligned(pvBlockToFree) vPortFree( pvBlockToFree )
# 679 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define configPRE_SLEEP_PROCESSING(x) 



#define configPOST_SLEEP_PROCESSING(x) 



#define configUSE_QUEUE_SETS 0



#define portTASK_USES_FLOATING_POINT() 



#define configUSE_TIME_SLICING 1



#define configINCLUDE_APPLICATION_DEFINED_PRIVILEGED_FUNCTIONS 0



#define configUSE_NEWLIB_REENTRANT 0
# 719 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define mtCOVERAGE_TEST_MARKER() 



#define mtCOVERAGE_TEST_DELAY() 



#define portASSERT_IF_IN_ISR() 







#define configAPPLICATION_ALLOCATED_HEAP 0



#define configUSE_TASK_NOTIFICATIONS 1
# 757 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/FreeRTOS.h"
#define portTICK_TYPE_ENTER_CRITICAL() 
#define portTICK_TYPE_EXIT_CRITICAL() 
#define portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR() 0
#define portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR(x) ( void ) x





#define configENABLE_BACKWARD_COMPATIBILITY 1



#define eTaskStateGet eTaskGetState
#define portTickType TickType_t
#define xTaskHandle TaskHandle_t
#define xQueueHandle QueueHandle_t
#define xSemaphoreHandle SemaphoreHandle_t
#define xQueueSetHandle QueueSetHandle_t
#define xQueueSetMemberHandle QueueSetMemberHandle_t
#define xTimeOutType TimeOut_t
#define xMemoryRegion MemoryRegion_t
#define xTaskParameters TaskParameters_t
#define xTaskStatusType TaskStatus_t
#define xTimerHandle TimerHandle_t
#define xCoRoutineHandle CoRoutineHandle_t
#define pdTASK_HOOK_CODE TaskHookFunction_t
#define portTICK_RATE_MS portTICK_PERIOD_MS



#define tmrTIMER_CALLBACK TimerCallbackFunction_t
#define pdTASK_CODE TaskFunction_t
#define xListItem ListItem_t
#define xList List_t
# 81 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2
# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h" 1
# 72 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define INC_TASK_H 





# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h" 1
# 103 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define LIST_H 
# 134 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define configLIST_VOLATILE 
# 148 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listFIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE 
#define listSECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE 
#define listFIRST_LIST_INTEGRITY_CHECK_VALUE 
#define listSECOND_LIST_INTEGRITY_CHECK_VALUE 
#define listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) 
#define listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) 
#define listSET_LIST_INTEGRITY_CHECK_1_VALUE(pxList) 
#define listSET_LIST_INTEGRITY_CHECK_2_VALUE(pxList) 
#define listTEST_LIST_ITEM_INTEGRITY(pxItem) 
#define listTEST_LIST_INTEGRITY(pxList) 
# 181 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 void * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 221 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listSET_LIST_ITEM_OWNER(pxListItem,pxOwner) ( ( pxListItem )->pvOwner = ( void * ) ( pxOwner ) )
# 230 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listGET_LIST_ITEM_OWNER(pxListItem) ( ( pxListItem )->pvOwner )
# 239 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listSET_LIST_ITEM_VALUE(pxListItem,xValue) ( ( pxListItem )->xItemValue = ( xValue ) )
# 249 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listGET_LIST_ITEM_VALUE(pxListItem) ( ( pxListItem )->xItemValue )
# 258 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listGET_ITEM_VALUE_OF_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext->xItemValue )







#define listGET_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext )







#define listGET_NEXT(pxListItem) ( ( pxListItem )->pxNext )







#define listGET_END_MARKER(pxList) ( ( ListItem_t const * ) ( &( ( pxList )->xListEnd ) ) )
# 291 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listLIST_IS_EMPTY(pxList) ( ( BaseType_t ) ( ( pxList )->uxNumberOfItems == ( UBaseType_t ) 0 ) )




#define listCURRENT_LIST_LENGTH(pxList) ( ( pxList )->uxNumberOfItems )
# 318 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listGET_OWNER_OF_NEXT_ENTRY(pxTCB,pxList) { List_t * const pxConstList = ( pxList ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxTCB ) = ( pxConstList )->pxIndex->pvOwner; }
# 348 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listGET_OWNER_OF_HEAD_ENTRY(pxList) ( (&( ( pxList )->xListEnd ))->pxNext->pvOwner )
# 359 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
#define listIS_CONTAINED_WITHIN(pxList,pxListItem) ( ( BaseType_t ) ( ( pxListItem )->pvContainer == ( void * ) ( pxList ) ) )







#define listLIST_ITEM_CONTAINER(pxListItem) ( ( pxListItem )->pvContainer )






#define listLIST_IS_INITIALISED(pxList) ( ( pxList )->xListEnd.xItemValue == portMAX_DELAY )
# 386 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
void vListInitialise( List_t * const pxList );
# 397 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
void vListInitialiseItem( ListItem_t * const pxItem );
# 410 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );
# 431 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );
# 446 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );
# 79 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h" 2
# 88 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define tskKERNEL_VERSION_NUMBER "V8.2.1"
#define tskKERNEL_VERSION_MAJOR 8
#define tskKERNEL_VERSION_MINOR 2
#define tskKERNEL_VERSION_BUILD 1
# 103 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
typedef void * TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];
} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;







#define tskIDLE_PRIORITY ( ( UBaseType_t ) 0U )
# 202 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define taskYIELD() portYIELD()
# 216 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define taskENTER_CRITICAL() portENTER_CRITICAL()
#define taskENTER_CRITICAL_FROM_ISR() portSET_INTERRUPT_MASK_FROM_ISR()
# 231 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define taskEXIT_CRITICAL() portEXIT_CRITICAL()
#define taskEXIT_CRITICAL_FROM_ISR(x) portCLEAR_INTERRUPT_MASK_FROM_ISR( x )
# 241 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define taskDISABLE_INTERRUPTS() portDISABLE_INTERRUPTS()
# 251 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define taskENABLE_INTERRUPTS() portENABLE_INTERRUPTS()




#define taskSCHEDULER_SUSPENDED ( ( BaseType_t ) 0 )
#define taskSCHEDULER_NOT_STARTED ( ( BaseType_t ) 1 )
#define taskSCHEDULER_RUNNING ( ( BaseType_t ) 2 )
# 345 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define xTaskCreate(pvTaskCode,pcName,usStackDepth,pvParameters,uxPriority,pxCreatedTask) xTaskGenericCreate( ( pvTaskCode ), ( pcName ), ( usStackDepth ), ( pvParameters ), ( uxPriority ), ( pxCreatedTask ), ( NULL ), ( NULL ) )
# 414 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define xTaskCreateRestricted(x,pxCreatedTask) xTaskGenericCreate( ((x)->pvTaskCode), ((x)->pcName), ((x)->usStackDepth), ((x)->pvParameters), ((x)->uxPriority), (pxCreatedTask), ((x)->puxStackBuffer), ((x)->xRegions) )
# 462 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 503 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 555 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 614 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 661 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 687 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 729 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 780 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 829 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 858 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 891 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskStartScheduler( void ) ;
# 947 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskEndScheduler( void ) ;
# 998 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskSuspendAll( void ) ;
# 1052 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1067 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1083 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1097 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1111 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;
# 1132 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1185 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1194 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void );
# 1293 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );
# 1340 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1394 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1475 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue );
#define xTaskNotify(xTaskToNotify,ulValue,eAction) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL )
#define xTaskNotifyAndQuery(xTaskToNotify,ulValue,eAction,pulPreviousNotifyValue) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotifyValue ) )
# 1566 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );
# 1641 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );
# 1687 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
#define xTaskNotifyGive(xTaskToNotify) xTaskGenericNotify( ( xTaskToNotify ), ( 0 ), eIncrement, NULL )
# 1742 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );
# 1811 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );
# 1832 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 1865 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 1879 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 1905 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 1916 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskGenericCreate( TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth, void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask, StackType_t * const puxStackBuffer, const MemoryRegion_t * const xRegions ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 1989 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2005 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void );
# 82 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2
# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h" 1
# 72 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define TIMERS_H 







# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/task.h" 1
# 81 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h" 2
# 96 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define tmrCOMMAND_EXECUTE_CALLBACK_FROM_ISR ( ( BaseType_t ) -2 )
#define tmrCOMMAND_EXECUTE_CALLBACK ( ( BaseType_t ) -1 )
#define tmrCOMMAND_START_DONT_TRACE ( ( BaseType_t ) 0 )
#define tmrCOMMAND_START ( ( BaseType_t ) 1 )
#define tmrCOMMAND_RESET ( ( BaseType_t ) 2 )
#define tmrCOMMAND_STOP ( ( BaseType_t ) 3 )
#define tmrCOMMAND_CHANGE_PERIOD ( ( BaseType_t ) 4 )
#define tmrCOMMAND_DELETE ( ( BaseType_t ) 5 )

#define tmrFIRST_FROM_ISR_COMMAND ( ( BaseType_t ) 6 )
#define tmrCOMMAND_START_FROM_ISR ( ( BaseType_t ) 6 )
#define tmrCOMMAND_RESET_FROM_ISR ( ( BaseType_t ) 7 )
#define tmrCOMMAND_STOP_FROM_ISR ( ( BaseType_t ) 8 )
#define tmrCOMMAND_CHANGE_PERIOD_FROM_ISR ( ( BaseType_t ) 9 )
# 118 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
typedef void * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 260 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
TimerHandle_t xTimerCreate( const char * const pcTimerName, const TickType_t xTimerPeriodInTicks, const UBaseType_t uxAutoReload, void * const pvTimerID, TimerCallbackFunction_t pxCallbackFunction ) ;
# 282 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 303 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 340 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;
# 351 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void );
# 403 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerStart(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_START, ( xTaskGetTickCount() ), NULL, ( xTicksToWait ) )
# 445 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerStop(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_STOP, 0U, NULL, ( xTicksToWait ) )
# 525 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerChangePeriod(xTimer,xNewPeriod,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_CHANGE_PERIOD, ( xNewPeriod ), NULL, ( xTicksToWait ) )
# 563 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerDelete(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_DELETE, 0U, NULL, ( xTicksToWait ) )
# 687 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerReset(xTimer,xTicksToWait) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_RESET, ( xTaskGetTickCount() ), NULL, ( xTicksToWait ) )
# 773 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerStartFromISR(xTimer,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_START_FROM_ISR, ( xTaskGetTickCountFromISR() ), ( pxHigherPriorityTaskWoken ), 0U )
# 836 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerStopFromISR(xTimer,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_STOP_FROM_ISR, 0, ( pxHigherPriorityTaskWoken ), 0U )
# 909 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerChangePeriodFromISR(xTimer,xNewPeriod,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_CHANGE_PERIOD_FROM_ISR, ( xNewPeriod ), ( pxHigherPriorityTaskWoken ), 0U )
# 995 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
#define xTimerResetFromISR(xTimer,pxHigherPriorityTaskWoken) xTimerGenericCommand( ( xTimer ), tmrCOMMAND_RESET_FROM_ISR, ( xTaskGetTickCountFromISR() ), ( pxHigherPriorityTaskWoken ), 0U )
# 1086 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken );
# 1120 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait );
# 1131 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/timers.h"
const char * pcTimerGetTimerName( TimerHandle_t xTimer );





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;
# 83 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2
# 1 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/StackMacros.h" 1
# 71 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/StackMacros.h"
#define STACK_MACROS_H 
# 110 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/StackMacros.h"
#define taskFIRST_CHECK_FOR_STACK_OVERFLOW() { if( pxCurrentTCB->pxTopOfStack <= pxCurrentTCB->pxStack ) { vApplicationStackOverflowHook( ( TaskHandle_t ) pxCurrentTCB, pxCurrentTCB->pcTaskName ); } }
# 140 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/include/StackMacros.h"
#define taskSECOND_CHECK_FOR_STACK_OVERFLOW() { static const uint8_t ucExpectedStackBytes[] = { tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE, tskSTACK_FILL_BYTE }; if( memcmp( ( void * ) pxCurrentTCB->pxStack, ( void * ) ucExpectedStackBytes, sizeof( ucExpectedStackBytes ) ) != 0 ) { vApplicationStackOverflowHook( ( TaskHandle_t ) pxCurrentTCB, pxCurrentTCB->pcTaskName ); } }
# 84 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2





#undef MPU_WRAPPERS_INCLUDED_FROM_API_FILE
# 98 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 1 3
# 27 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define _STDIO_H_ 



#define _FSTDIO 

#define __need_size_t 
#define __need_NULL 

# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 158 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_ptrdiff_t
# 234 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_size_t
# 343 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef __need_wchar_t
# 397 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 37 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 2 3

#define __need___va_list 
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stdarg.h" 1 3 4
# 34 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stdarg.h" 3 4
#undef __need___va_list




#define __GNUC_VA_LIST 
typedef __builtin_va_list __gnuc_va_list;
# 40 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 2 3
# 48 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 1 3
# 24 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
#define __INTTYPES_DEFINED__ 
# 61 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
#define _SYS_TYPES_H 
# 71 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\lib\\gcc\\arm-none-eabi\\4.9.3\\include\\stddef.h" 1 3 4
# 72 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 2 3
# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\types.h" 1 3

#define _MACHTYPES_H_ 
# 13 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\machine\\types.h" 3
#define _CLOCK_T_ unsigned long
#define _TIME_T_ long
#define _CLOCKID_T_ unsigned long
#define _TIMER_T_ unsigned long


typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;





typedef long __suseconds_t;
# 73 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 2 3
# 82 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
#define _ST_INT32 __attribute__ ((__mode__ (__SI__)))






#define physadr physadr_t
#define quad quad_t




typedef unsigned char u_char;
#define __u_char_defined 


typedef unsigned short u_short;
#define __u_short_defined 


typedef unsigned int u_int;
#define __u_int_defined 


typedef unsigned long u_long;
#define __u_long_defined 

#define _BSDTYPES_DEFINED 


typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef unsigned long clock_t;
#define __clock_t_defined 



typedef long time_t;
#define __time_t_defined 



typedef long daddr_t;
#define __daddr_t_defined 


typedef char * caddr_t;
#define __caddr_t_defined 







typedef unsigned short ino_t;
# 171 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 204 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 219 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
#define _SYS_TYPES_FD_SET 
#define NBBY 8







#define FD_SETSIZE 64


typedef long fd_mask;
#define NFDBITS (sizeof (fd_mask) * NBBY)

#define howmany(x,y) (((x)+((y)-1))/(y))




typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;

#define fd_set _types_fd_set

#define FD_SET(n,p) ((p)->fds_bits[(n)/NFDBITS] |= (1L << ((n) % NFDBITS)))
#define FD_CLR(n,p) ((p)->fds_bits[(n)/NFDBITS] &= ~(1L << ((n) % NFDBITS)))
#define FD_ISSET(n,p) ((p)->fds_bits[(n)/NFDBITS] & (1L << ((n) % NFDBITS)))
#define FD_ZERO(p) (__extension__ (void)({ size_t __i; char *__tmp = (char *)p; for (__i = 0; __i < sizeof (*(p)); ++__i) *__tmp++ = 0; }))
# 257 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
#undef __MS_types__
#undef _ST_INT32



typedef unsigned long clockid_t;
#define __clockid_t_defined 



typedef unsigned long timer_t;
#define __timer_t_defined 


typedef unsigned long useconds_t;


typedef __suseconds_t suseconds_t;
#define _SUSECONDS_T_DECLARED 


typedef __int64_t sbintime_t;
# 512 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\types.h" 3
#undef __need_inttypes
# 49 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 2 3




typedef __FILE FILE;
#define __FILE_defined 





typedef _fpos_t fpos_t;





# 1 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\stdio.h" 1 3

#define _NEWLIB_STDIO_H 
# 13 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\sys\\stdio.h" 3
#define _flockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_acquire_recursive((fp)->_lock))







#define _funlockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_release_recursive((fp)->_lock))
# 67 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 2 3

#define __SLBF 0x0001
#define __SNBF 0x0002
#define __SRD 0x0004
#define __SWR 0x0008

#define __SRW 0x0010
#define __SEOF 0x0020
#define __SERR 0x0040
#define __SMBF 0x0080
#define __SAPP 0x0100
#define __SSTR 0x0200
#define __SOPT 0x0400
#define __SNPT 0x0800
#define __SOFF 0x1000
#define __SORD 0x2000



#define __SL64 0x8000


#define __SNLK 0x0001
#define __SWID 0x2000
# 101 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define _IOFBF 0
#define _IOLBF 1
#define _IONBF 2

#define EOF (-1)




#define BUFSIZ 1024





#define FOPEN_MAX 20





#define FILENAME_MAX 1024





#define L_tmpnam FILENAME_MAX







#define SEEK_SET 0


#define SEEK_CUR 1


#define SEEK_END 2


#define TMP_MAX 26

#define stdin (_REENT->_stdin)
#define stdout (_REENT->_stdout)
#define stderr (_REENT->_stderr)

#define _stdin_r(x) ((x)->_stdin)
#define _stdout_r(x) ((x)->_stdout)
#define _stderr_r(x) ((x)->_stderr)







#define __VALIST __gnuc_va_list





FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 247 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 360 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 541 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 616 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define __sgetc_raw_r(__ptr,__f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p++))
# 645 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define __sgetc_r(__ptr,__p) __sgetc_raw_r(__ptr, __p)
# 661 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define __sputc_raw_r(__ptr,__c,__p) (--(__p)->_w < 0 ? (__p)->_w >= (__p)->_lbfsize ? (*(__p)->_p = (__c)), *(__p)->_p != '\n' ? (int)*(__p)->_p++ : __swbuf_r(__ptr, '\n', __p) : __swbuf_r(__ptr, (int)(__c), __p) : (*(__p)->_p = (__c), (int)*(__p)->_p++))
# 675 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define __sputc_r(__ptr,__c,__p) __sputc_raw_r(__ptr, __c, __p)



#define __sfeof(p) ((int)(((p)->_flags & __SEOF) != 0))
#define __sferror(p) ((int)(((p)->_flags & __SERR) != 0))
#define __sclearerr(p) ((void)((p)->_flags &= ~(__SERR|__SEOF)))
#define __sfileno(p) ((p)->_file)


#define feof(p) __sfeof(p)
#define ferror(p) __sferror(p)
#define clearerr(p) __sclearerr(p)


#define feof_unlocked(p) __sfeof(p)
#define ferror_unlocked(p) __sferror(p)
#define clearerr_unlocked(p) __sclearerr(p)
# 702 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define getc(fp) __sgetc_r(_REENT, fp)
#define putc(x,fp) __sputc_r(_REENT, x, fp)
# 720 "c:\\nxp\\s32ds_arm_v2018.r1\\cross_tools\\gcc-arm-none-eabi-4_9\\arm-none-eabi\\include\\stdio.h" 3
#define getchar() getc(stdin)
#define putchar(x) putc(x, stdout)







# 99 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c" 2
# 111 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define tskIDLE_STACK_SIZE configMINIMAL_STACK_SIZE






#define taskYIELD_IF_USING_PREEMPTION() portYIELD_WITHIN_API()



typedef enum
{
 eNotWaitingNotification = 0,
 eWaitingNotification,
 eNotified
} eNotifyValue;






typedef struct tskTaskControlBlock
{
 volatile StackType_t *pxTopOfStack;






 ListItem_t xGenericListItem;
 ListItem_t xEventListItem;
 UBaseType_t uxPriority;
 StackType_t *pxStack;
 char pcTaskName[ ( 10 ) ];
# 163 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  UBaseType_t uxBasePriority;
  UBaseType_t uxMutexesHeld;
# 191 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  volatile uint32_t ulNotifiedValue;
  volatile eNotifyValue eNotifyState;


} tskTCB;



typedef tskTCB TCB_t;
# 212 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 TCB_t * volatile pxCurrentTCB = ((void *)0);


 static List_t pxReadyTasksLists[ ( 5 ) ];
 static List_t xDelayedTaskList1;
 static List_t xDelayedTaskList2;
 static List_t * volatile pxDelayedTaskList;
 static List_t * volatile pxOverflowDelayedTaskList;
 static List_t xPendingReadyList;



 static List_t xTasksWaitingTermination;
 static volatile UBaseType_t uxTasksDeleted = ( UBaseType_t ) 0U;





 static List_t xSuspendedTaskList;
# 242 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 static volatile UBaseType_t uxCurrentNumberOfTasks = ( UBaseType_t ) 0U;
 static volatile TickType_t xTickCount = ( TickType_t ) 0U;
 static volatile UBaseType_t uxTopReadyPriority = ( ( UBaseType_t ) 0U );
 static volatile BaseType_t xSchedulerRunning = ( ( BaseType_t ) 0 );
 static volatile UBaseType_t uxPendedTicks = ( UBaseType_t ) 0U;
 static volatile BaseType_t xYieldPending = ( ( BaseType_t ) 0 );
 static volatile BaseType_t xNumOfOverflows = ( BaseType_t ) 0;
 static UBaseType_t uxTaskNumber = ( UBaseType_t ) 0U;
 static volatile TickType_t xNextTaskUnblockTime = ( TickType_t ) 0U;
# 260 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 static volatile UBaseType_t uxSchedulerSuspended = ( UBaseType_t ) ( ( BaseType_t ) 0 );
# 277 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define tskSTACK_FILL_BYTE ( 0xa5U )




#define tskBLOCKED_CHAR ( 'B' )
#define tskREADY_CHAR ( 'R' )
#define tskDELETED_CHAR ( 'D' )
#define tskSUSPENDED_CHAR ( 'S' )
# 336 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define taskRECORD_READY_PRIORITY(uxPriority) portRECORD_READY_PRIORITY( uxPriority, uxTopReadyPriority )



#define taskSELECT_HIGHEST_PRIORITY_TASK() { UBaseType_t uxTopPriority; portGET_HIGHEST_PRIORITY( uxTopPriority, uxTopReadyPriority ); configASSERT( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ uxTopPriority ] ) ) > 0 ); listGET_OWNER_OF_NEXT_ENTRY( pxCurrentTCB, &( pxReadyTasksLists[ uxTopPriority ] ) ); }
# 355 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define taskRESET_READY_PRIORITY(uxPriority) { if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ ( uxPriority ) ] ) ) == ( UBaseType_t ) 0 ) { portRESET_READY_PRIORITY( ( uxPriority ), ( uxTopReadyPriority ) ); } }
# 369 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define taskSWITCH_DELAYED_LISTS() { List_t *pxTemp; configASSERT( ( listLIST_IS_EMPTY( pxDelayedTaskList ) ) ); pxTemp = pxDelayedTaskList; pxDelayedTaskList = pxOverflowDelayedTaskList; pxOverflowDelayedTaskList = pxTemp; xNumOfOverflows++; prvResetNextTaskUnblockTime(); }
# 389 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define prvAddTaskToReadyList(pxTCB) traceMOVED_TASK_TO_READY_STATE( pxTCB ); taskRECORD_READY_PRIORITY( ( pxTCB )->uxPriority ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) )
# 401 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define prvGetTCBFromHandle(pxHandle) ( ( ( pxHandle ) == NULL ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( pxHandle ) )
# 414 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
#define taskEVENT_LIST_ITEM_VALUE_IN_USE 0x80000000UL




 extern void vApplicationStackOverflowHook( TaskHandle_t xTask, char *pcTaskName );



 extern void vApplicationTickHook( void );
# 432 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvInitialiseTCBVariables( TCB_t * const pxTCB, const char * const pcName, UBaseType_t uxPriority, const MemoryRegion_t * const xRegions, const uint16_t usStackDepth ) ;







 static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask ) ;






static void prvInitialiseTaskLists( void ) ;
# 460 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvIdleTask( void *pvParameters );
# 471 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 static void prvDeleteTCB( TCB_t *pxTCB ) ;
# 480 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvCheckTasksWaitingTermination( void ) ;





static void prvAddCurrentTaskToDelayedList( const TickType_t xTimeToWake ) ;





static TCB_t *prvAllocateTCBAndStack( const uint16_t usStackDepth, StackType_t * const puxStackBuffer ) ;
# 515 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte ) ;
# 538 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvResetNextTaskUnblockTime( void );
# 551 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
BaseType_t xTaskGenericCreate( TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth, void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask, StackType_t * const puxStackBuffer, const MemoryRegion_t * const xRegions )
{
BaseType_t xReturn;
TCB_t * pxNewTCB;
StackType_t *pxTopOfStack;

 if((pxTaskCode)==0) { vPortRaiseBASEPRI(); for( ;; ); };
 if((( ( uxPriority & ( UBaseType_t ) ( ~( ( UBaseType_t ) 0x00 ) ) ) < ( UBaseType_t ) ( 5 ) ))==0) { vPortRaiseBASEPRI(); for( ;; ); };



 pxNewTCB = prvAllocateTCBAndStack( usStackDepth, puxStackBuffer );

 if( pxNewTCB != ((void *)0) )
 {
# 599 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  {
   pxTopOfStack = pxNewTCB->pxStack + ( usStackDepth - ( uint16_t ) 1 );
   pxTopOfStack = ( StackType_t * ) ( ( ( uint32_t ) pxTopOfStack ) & ( ~( ( uint32_t ) ( 0x0007 ) ) ) );


   if((( ( ( uint32_t ) pxTopOfStack & ( uint32_t ) ( 0x0007 ) ) == 0UL ))==0) { vPortRaiseBASEPRI(); for( ;; ); };
  }
# 621 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  prvInitialiseTCBVariables( pxNewTCB, pcName, uxPriority, xRegions, usStackDepth );
# 632 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  {
   pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
  }


  if( ( void * ) pxCreatedTask != ((void *)0) )
  {



   *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
  }
  else
  {
   ;
  }



  vPortEnterCritical();
  {
   uxCurrentNumberOfTasks++;
   if( pxCurrentTCB == ((void *)0) )
   {


    pxCurrentTCB = pxNewTCB;

    if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
    {



     prvInitialiseTaskLists();
    }
    else
    {
     ;
    }
   }
   else
   {



    if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
    {
     if( pxCurrentTCB->uxPriority <= uxPriority )
     {
      pxCurrentTCB = pxNewTCB;
     }
     else
     {
      ;
     }
    }
    else
    {
     ;
    }
   }

   uxTaskNumber++;







   ;

   ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxNewTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxNewTCB )->uxPriority ] ), &( ( pxNewTCB )->xGenericListItem ) );

   xReturn = ( ( ( BaseType_t ) 1 ) );
   ( void ) pxNewTCB;
  }
  vPortExitCritical();
 }
 else
 {
  xReturn = ( -1 );
  ;
 }

 if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
 {
  if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
  {


   if( pxCurrentTCB->uxPriority < uxPriority )
   {
    { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }
 }

 return xReturn;
}




 void vTaskDelete( TaskHandle_t xTaskToDelete )
 {
 TCB_t *pxTCB;

  vPortEnterCritical();
  {


   pxTCB = ( ( ( xTaskToDelete ) == ((void *)0) ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTaskToDelete ) );





   if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
   {
    { if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
   }
   else
   {
    ;
   }


   if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != ((void *)0) )
   {
    ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
   }
   else
   {
    ;
   }

   vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xGenericListItem ) );




   ++uxTasksDeleted;



   uxTaskNumber++;

   ;
  }
  vPortExitCritical();



  if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
  {
   if( pxTCB == pxCurrentTCB )
   {
    if((uxSchedulerSuspended == 0)==0) { vPortRaiseBASEPRI(); for( ;; ); };






    ;
    { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
   }
   else
   {


    vPortEnterCritical();
    {
     prvResetNextTaskUnblockTime();
    }
    vPortExitCritical();
   }
  }
 }






 void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
 {
 TickType_t xTimeToWake;
 BaseType_t xAlreadyYielded, xShouldDelay = ( ( BaseType_t ) 0 );

  if((pxPreviousWakeTime)==0) { vPortRaiseBASEPRI(); for( ;; ); };
  if((( xTimeIncrement > 0U ))==0) { vPortRaiseBASEPRI(); for( ;; ); };
  if((uxSchedulerSuspended == 0)==0) { vPortRaiseBASEPRI(); for( ;; ); };

  vTaskSuspendAll();
  {


   const TickType_t xConstTickCount = xTickCount;


   xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

   if( xConstTickCount < *pxPreviousWakeTime )
   {





    if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
    {
     xShouldDelay = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }
   else
   {



    if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
    {
     xShouldDelay = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }


   *pxPreviousWakeTime = xTimeToWake;

   if( xShouldDelay != ( ( BaseType_t ) 0 ) )
   {
    ;



    if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
    {



     ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
    }
    else
    {
     ;
    }

    prvAddCurrentTaskToDelayedList( xTimeToWake );
   }
   else
   {
    ;
   }
  }
  xAlreadyYielded = xTaskResumeAll();



  if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
  {
   { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
  }
  else
  {
   ;
  }
 }






 void vTaskDelay( const TickType_t xTicksToDelay )
 {
 TickType_t xTimeToWake;
 BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );



  if( xTicksToDelay > ( TickType_t ) 0U )
  {
   if((uxSchedulerSuspended == 0)==0) { vPortRaiseBASEPRI(); for( ;; ); };
   vTaskSuspendAll();
   {
    ;
# 946 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
    xTimeToWake = xTickCount + xTicksToDelay;




    if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
    {



     ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
    }
    else
    {
     ;
    }
    prvAddCurrentTaskToDelayedList( xTimeToWake );
   }
   xAlreadyYielded = xTaskResumeAll();
  }
  else
  {
   ;
  }



  if( xAlreadyYielded == ( ( BaseType_t ) 0 ) )
  {
   { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
  }
  else
  {
   ;
  }
 }






 eTaskState eTaskGetState( TaskHandle_t xTask )
 {
 eTaskState eReturn;
 List_t *pxStateList;
 const TCB_t * const pxTCB = ( TCB_t * ) xTask;

  if((pxTCB)==0) { vPortRaiseBASEPRI(); for( ;; ); };

  if( pxTCB == pxCurrentTCB )
  {

   eReturn = eRunning;
  }
  else
  {
   vPortEnterCritical();
   {
    pxStateList = ( List_t * ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer );
   }
   vPortExitCritical();

   if( ( pxStateList == pxDelayedTaskList ) || ( pxStateList == pxOverflowDelayedTaskList ) )
   {


    eReturn = eBlocked;
   }


    else if( pxStateList == &xSuspendedTaskList )
    {



     if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) == ((void *)0) )
     {
      eReturn = eSuspended;
     }
     else
     {
      eReturn = eBlocked;
     }
    }



    else if( pxStateList == &xTasksWaitingTermination )
    {


     eReturn = eDeleted;
    }


   else
   {


    eReturn = eReady;
   }
  }

  return eReturn;
 }






 UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask )
 {
 TCB_t *pxTCB;
 UBaseType_t uxReturn;

  vPortEnterCritical();
  {


   pxTCB = ( ( ( xTask ) == ((void *)0) ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );
   uxReturn = pxTCB->uxPriority;
  }
  vPortExitCritical();

  return uxReturn;
 }






 UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask )
 {
 TCB_t *pxTCB;
 UBaseType_t uxReturn, uxSavedInterruptState;
# 1101 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  vPortValidateInterruptPriority();

  uxSavedInterruptState = ulPortRaiseBASEPRI();
  {


   pxTCB = ( ( ( xTask ) == ((void *)0) ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );
   uxReturn = pxTCB->uxPriority;
  }
  vPortSetBASEPRI(uxSavedInterruptState);

  return uxReturn;
 }






 void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority )
 {
 TCB_t *pxTCB;
 UBaseType_t uxCurrentBasePriority, uxPriorityUsedOnEntry;
 BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );

  if((( uxNewPriority < ( 5 ) ))==0) { vPortRaiseBASEPRI(); for( ;; ); };


  if( uxNewPriority >= ( UBaseType_t ) ( 5 ) )
  {
   uxNewPriority = ( UBaseType_t ) ( 5 ) - ( UBaseType_t ) 1U;
  }
  else
  {
   ;
  }

  vPortEnterCritical();
  {


   pxTCB = ( ( ( xTask ) == ((void *)0) ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );

   ;


   {
    uxCurrentBasePriority = pxTCB->uxBasePriority;
   }






   if( uxCurrentBasePriority != uxNewPriority )
   {


    if( uxNewPriority > uxCurrentBasePriority )
    {
     if( pxTCB != pxCurrentTCB )
     {



      if( uxNewPriority >= pxCurrentTCB->uxPriority )
      {
       xYieldRequired = ( ( BaseType_t ) 1 );
      }
      else
      {
       ;
      }
     }
     else
     {



     }
    }
    else if( pxTCB == pxCurrentTCB )
    {



     xYieldRequired = ( ( BaseType_t ) 1 );
    }
    else
    {



    }




    uxPriorityUsedOnEntry = pxTCB->uxPriority;


    {


     if( pxTCB->uxBasePriority == pxTCB->uxPriority )
     {
      pxTCB->uxPriority = uxNewPriority;
     }
     else
     {
      ;
     }


     pxTCB->uxBasePriority = uxNewPriority;
    }
# 1226 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
    if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
    {
     ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 5 ) - ( TickType_t ) uxNewPriority ) ) );
    }
    else
    {
     ;
    }





    if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ uxPriorityUsedOnEntry ] ) ) ) ) != ( ( BaseType_t ) 0 ) )
    {



     if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {



      ( uxTopReadyPriority ) &= ~( 1UL << ( uxPriorityUsedOnEntry ) );
     }
     else
     {
      ;
     }
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {
     ;
    }

    if( xYieldRequired == ( ( BaseType_t ) 1 ) )
    {
     { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
    }
    else
    {
     ;
    }



    ( void ) uxPriorityUsedOnEntry;
   }
  }
  vPortExitCritical();
 }






 void vTaskSuspend( TaskHandle_t xTaskToSuspend )
 {
 TCB_t *pxTCB;

  vPortEnterCritical();
  {


   pxTCB = ( ( ( xTaskToSuspend ) == ((void *)0) ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTaskToSuspend ) );

   ;



   if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
   {
    { if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
   }
   else
   {
    ;
   }


   if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != ((void *)0) )
   {
    ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
   }
   else
   {
    ;
   }

   vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xGenericListItem ) );
  }
  vPortExitCritical();

  if( pxTCB == pxCurrentTCB )
  {
   if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
   {

    if((uxSchedulerSuspended == 0)==0) { vPortRaiseBASEPRI(); for( ;; ); };
    { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
   }
   else
   {



    if( ( ( &xSuspendedTaskList )->uxNumberOfItems ) == uxCurrentNumberOfTasks )
    {




     pxCurrentTCB = ((void *)0);
    }
    else
    {
     vTaskSwitchContext();
    }
   }
  }
  else
  {
   if( xSchedulerRunning != ( ( BaseType_t ) 0 ) )
   {



    vPortEnterCritical();
    {
     prvResetNextTaskUnblockTime();
    }
    vPortExitCritical();
   }
   else
   {
    ;
   }
  }
 }






 static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask )
 {
 BaseType_t xReturn = ( ( BaseType_t ) 0 );
 const TCB_t * const pxTCB = ( TCB_t * ) xTask;





  if((xTask)==0) { vPortRaiseBASEPRI(); for( ;; ); };


  if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &xSuspendedTaskList ) ) ) != ( ( BaseType_t ) 0 ) )
  {

   if( ( ( BaseType_t ) ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( &xPendingReadyList ) ) ) == ( ( BaseType_t ) 0 ) )
   {


    if( ( ( BaseType_t ) ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( ((void *)0) ) ) ) != ( ( BaseType_t ) 0 ) )
    {
     xReturn = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }

  return xReturn;
 }






 void vTaskResume( TaskHandle_t xTaskToResume )
 {
 TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;


  if((xTaskToResume)==0) { vPortRaiseBASEPRI(); for( ;; ); };



  if( ( pxTCB != ((void *)0) ) && ( pxTCB != pxCurrentTCB ) )
  {
   vPortEnterCritical();
   {
    if( prvTaskIsTaskSuspended( pxTCB ) == ( ( BaseType_t ) 1 ) )
    {
     ;



     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );


     if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
     {



      { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
     }
     else
     {
      ;
     }
    }
    else
    {
     ;
    }
   }
   vPortExitCritical();
  }
  else
  {
   ;
  }
 }







 BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume )
 {
 BaseType_t xYieldRequired = ( ( BaseType_t ) 0 );
 TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;
 UBaseType_t uxSavedInterruptStatus;

  if((xTaskToResume)==0) { vPortRaiseBASEPRI(); for( ;; ); };
# 1497 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  vPortValidateInterruptPriority();

  uxSavedInterruptStatus = ulPortRaiseBASEPRI();
  {
   if( prvTaskIsTaskSuspended( pxTCB ) == ( ( BaseType_t ) 1 ) )
   {
    ;


    if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
    {


     if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
     {
      xYieldRequired = ( ( BaseType_t ) 1 );
     }
     else
     {
      ;
     }

     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {



     vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
    }
   }
   else
   {
    ;
   }
  }
  vPortSetBASEPRI(uxSavedInterruptStatus);

  return xYieldRequired;
 }




void vTaskStartScheduler( void )
{
BaseType_t xReturn;
# 1555 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 {

  xReturn = xTaskGenericCreate( ( prvIdleTask ), ( "IDLE" ), ( ( ( unsigned short ) 90 ) ), ( ( void * ) ((void *)0) ), ( ( ( ( UBaseType_t ) 0U ) | ( ( UBaseType_t ) 0x00 ) ) ), ( ((void *)0) ), ( ((void *)0) ), ( ((void *)0) ) );
 }



 {
  if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
  {
   xReturn = xTimerCreateTimerTask();
  }
  else
  {
   ;
  }
 }


 if( xReturn == ( ( ( BaseType_t ) 1 ) ) )
 {





  vPortRaiseBASEPRI();
# 1591 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
  xSchedulerRunning = ( ( BaseType_t ) 1 );
  xTickCount = ( TickType_t ) 0U;




  ;



  if( xPortStartScheduler() != ( ( BaseType_t ) 0 ) )
  {


  }
  else
  {

  }
 }
 else
 {



  if((xReturn)==0) { vPortRaiseBASEPRI(); for( ;; ); };
 }
}


void vTaskEndScheduler( void )
{



 vPortRaiseBASEPRI();
 xSchedulerRunning = ( ( BaseType_t ) 0 );
 vPortEndScheduler();
}


void vTaskSuspendAll( void )
{




 ++uxSchedulerSuspended;
}
# 1671 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
BaseType_t xTaskResumeAll( void )
{
TCB_t *pxTCB;
BaseType_t xAlreadyYielded = ( ( BaseType_t ) 0 );



 if((uxSchedulerSuspended)==0) { vPortRaiseBASEPRI(); for( ;; ); };






 vPortEnterCritical();
 {
  --uxSchedulerSuspended;

  if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
  {
   if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
   {


    while( ( ( BaseType_t ) ( ( &xPendingReadyList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 ) )
    {
     pxTCB = ( TCB_t * ) ( (&( ( ( &xPendingReadyList ) )->xListEnd ))->pxNext->pvOwner );
     ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );



     if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
     {
      xYieldPending = ( ( BaseType_t ) 1 );
     }
     else
     {
      ;
     }
    }





    if( uxPendedTicks > ( UBaseType_t ) 0U )
    {
     while( uxPendedTicks > ( UBaseType_t ) 0U )
     {
      if( xTaskIncrementTick() != ( ( BaseType_t ) 0 ) )
      {
       xYieldPending = ( ( BaseType_t ) 1 );
      }
      else
      {
       ;
      }
      --uxPendedTicks;
     }
    }
    else
    {
     ;
    }

    if( xYieldPending == ( ( BaseType_t ) 1 ) )
    {

     {
      xAlreadyYielded = ( ( BaseType_t ) 1 );
     }

     { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
    }
    else
    {
     ;
    }
   }
  }
  else
  {
   ;
  }
 }
 vPortExitCritical();

 return xAlreadyYielded;
}


TickType_t xTaskGetTickCount( void )
{
TickType_t xTicks;


 ;
 {
  xTicks = xTickCount;
 }
 ;

 return xTicks;
}


TickType_t xTaskGetTickCountFromISR( void )
{
TickType_t xReturn;
UBaseType_t uxSavedInterruptStatus;
# 1798 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 vPortValidateInterruptPriority();

 uxSavedInterruptStatus = 0;
 {
  xReturn = xTickCount;
 }
 ( void ) uxSavedInterruptStatus;

 return xReturn;
}


UBaseType_t uxTaskGetNumberOfTasks( void )
{


 return uxCurrentNumberOfTasks;
}
# 1939 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
BaseType_t xTaskIncrementTick( void )
{
TCB_t * pxTCB;
TickType_t xItemValue;
BaseType_t xSwitchRequired = ( ( BaseType_t ) 0 );




 ;
 if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
 {


  ++xTickCount;

  {


   const TickType_t xConstTickCount = xTickCount;

   if( xConstTickCount == ( TickType_t ) 0U )
   {
    { List_t *pxTemp; if((( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) ))==0) { vPortRaiseBASEPRI(); for( ;; ); }; pxTemp = pxDelayedTaskList; pxDelayedTaskList = pxOverflowDelayedTaskList; pxOverflowDelayedTaskList = pxTemp; xNumOfOverflows++; prvResetNextTaskUnblockTime(); };
   }
   else
   {
    ;
   }





   if( xConstTickCount >= xNextTaskUnblockTime )
   {
    for( ;; )
    {
     if( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
     {





      xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
      break;
     }
     else
     {




      pxTCB = ( TCB_t * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
      xItemValue = ( ( &( pxTCB->xGenericListItem ) )->xItemValue );

      if( xConstTickCount < xItemValue )
      {





       xNextTaskUnblockTime = xItemValue;
       break;
      }
      else
      {
       ;
      }


      ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );



      if( ( ( &( pxTCB->xEventListItem ) )->pvContainer ) != ((void *)0) )
      {
       ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
      }
      else
      {
       ;
      }



      ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );




      {




       if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
       {
        xSwitchRequired = ( ( BaseType_t ) 1 );
       }
       else
       {
        ;
       }
      }

     }
    }
   }
  }





  {
   if( ( ( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
   {
    xSwitchRequired = ( ( BaseType_t ) 1 );
   }
   else
   {
    ;
   }
  }



  {


   if( uxPendedTicks == ( UBaseType_t ) 0U )
   {
    vApplicationTickHook();
   }
   else
   {
    ;
   }
  }

 }
 else
 {
  ++uxPendedTicks;




  {
   vApplicationTickHook();
  }

 }


 {
  if( xYieldPending != ( ( BaseType_t ) 0 ) )
  {
   xSwitchRequired = ( ( BaseType_t ) 1 );
  }
  else
  {
   ;
  }
 }


 return xSwitchRequired;
}
# 2203 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
void vTaskSwitchContext( void )
{
 if( uxSchedulerSuspended != ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
 {


  xYieldPending = ( ( BaseType_t ) 1 );
 }
 else
 {
  xYieldPending = ( ( BaseType_t ) 0 );
  ;
# 2244 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  { if( pxCurrentTCB->pxTopOfStack <= pxCurrentTCB->pxStack ) { vApplicationStackOverflowHook( ( TaskHandle_t ) pxCurrentTCB, pxCurrentTCB->pcTaskName ); } };
  { static const uint8_t ucExpectedStackBytes[] = { ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ), ( 0xa5U ) }; if( memcmp( ( void * ) pxCurrentTCB->pxStack, ( void * ) ucExpectedStackBytes, sizeof( ucExpectedStackBytes ) ) != 0 ) { vApplicationStackOverflowHook( ( TaskHandle_t ) pxCurrentTCB, pxCurrentTCB->pcTaskName ); } };



  { UBaseType_t uxTopPriority; uxTopPriority = ( 31 - ucPortCountLeadingZeros( ( uxTopReadyPriority ) ) ); if((( ( &( pxReadyTasksLists[ uxTopPriority ] ) )->uxNumberOfItems ) > 0)==0) { vPortRaiseBASEPRI(); for( ;; ); }; { List_t * const pxConstList = ( &( pxReadyTasksLists[ uxTopPriority ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxCurrentTCB ) = ( pxConstList )->pxIndex->pvOwner; }; };
  ;
# 2259 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 }
}


void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

 if((pxEventList)==0) { vPortRaiseBASEPRI(); for( ;; ); };
# 2276 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );




 if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
 {


  ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
 }
 else
 {
  ;
 }


 {
  if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
  {



   vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
  }
  else
  {



   xTimeToWake = xTickCount + xTicksToWait;
   prvAddCurrentTaskToDelayedList( xTimeToWake );
  }
 }
# 2319 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
}


void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

 if((pxEventList)==0) { vPortRaiseBASEPRI(); for( ;; ); };



 if((uxSchedulerSuspended != 0)==0) { vPortRaiseBASEPRI(); for( ;; ); };




 ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( xItemValue | 0x80000000UL ) );






 vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );




 if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
 {


  ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
 }
 else
 {
  ;
 }


 {
  if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
  {



   vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
  }
  else
  {



   xTimeToWake = xTickCount + xTicksToWait;
   prvAddCurrentTaskToDelayedList( xTimeToWake );
  }
 }
# 2385 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
}




 void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
 {
 TickType_t xTimeToWake;

  if((pxEventList)==0) { vPortRaiseBASEPRI(); for( ;; ); };
# 2406 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );





  if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
  {


   ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
  }
  else
  {
   ;
  }
# 2430 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  {
   if( xWaitIndefinitely == ( ( BaseType_t ) 1 ) )
   {



    vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
   }
   else
   {



    xTimeToWake = xTickCount + xTicksToWait;
    ;
    prvAddCurrentTaskToDelayedList( xTimeToWake );
   }
  }
# 2461 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 }




BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;
# 2484 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 pxUnblockedTCB = ( TCB_t * ) ( (&( ( pxEventList )->xListEnd ))->pxNext->pvOwner );
 if((pxUnblockedTCB)==0) { vPortRaiseBASEPRI(); for( ;; ); };
 ( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );

 if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
 {
  ( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
  ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxUnblockedTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );
 }
 else
 {


  vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
 }

 if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 {



  xReturn = ( ( BaseType_t ) 1 );



  xYieldPending = ( ( BaseType_t ) 1 );
 }
 else
 {
  xReturn = ( ( BaseType_t ) 0 );
 }
# 2530 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 return xReturn;
}


BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;



 if((uxSchedulerSuspended != ( ( BaseType_t ) 0 ))==0) { vPortRaiseBASEPRI(); for( ;; ); };


 ( ( pxEventListItem )->xItemValue = ( xItemValue | 0x80000000UL ) );



 pxUnblockedTCB = ( TCB_t * ) ( ( pxEventListItem )->pvOwner );
 if((pxUnblockedTCB)==0) { vPortRaiseBASEPRI(); for( ;; ); };
 ( void ) uxListRemove( pxEventListItem );




 ( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
 ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxUnblockedTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );

 if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
 {




  xReturn = ( ( BaseType_t ) 1 );



  xYieldPending = ( ( BaseType_t ) 1 );
 }
 else
 {
  xReturn = ( ( BaseType_t ) 0 );
 }

 return xReturn;
}


void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
{
 if((pxTimeOut)==0) { vPortRaiseBASEPRI(); for( ;; ); };
 pxTimeOut->xOverflowCount = xNumOfOverflows;
 pxTimeOut->xTimeOnEntering = xTickCount;
}


BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
{
BaseType_t xReturn;

 if((pxTimeOut)==0) { vPortRaiseBASEPRI(); for( ;; ); };
 if((pxTicksToWait)==0) { vPortRaiseBASEPRI(); for( ;; ); };

 vPortEnterCritical();
 {

  const TickType_t xConstTickCount = xTickCount;





   if( *pxTicksToWait == ( TickType_t ) 0xffffffffUL )
   {
    xReturn = ( ( BaseType_t ) 0 );
   }
   else


  if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) )
  {




   xReturn = ( ( BaseType_t ) 1 );
  }
  else if( ( xConstTickCount - pxTimeOut->xTimeOnEntering ) < *pxTicksToWait )
  {

   *pxTicksToWait -= ( xConstTickCount - pxTimeOut->xTimeOnEntering );
   vTaskSetTimeOutState( pxTimeOut );
   xReturn = ( ( BaseType_t ) 0 );
  }
  else
  {
   xReturn = ( ( BaseType_t ) 1 );
  }
 }
 vPortExitCritical();

 return xReturn;
}


void vTaskMissedYield( void )
{
 xYieldPending = ( ( BaseType_t ) 1 );
}
# 2691 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvIdleTask( void *pvParameters )
{

 ( void ) pvParameters;

 for( ;; )
 {

  prvCheckTasksWaitingTermination();
# 2712 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  {
# 2722 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
   if( ( ( &( pxReadyTasksLists[ ( ( UBaseType_t ) 0U ) ] ) )->uxNumberOfItems ) > ( UBaseType_t ) 1 )
   {
    { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
   }
   else
   {
    ;
   }
  }



  {
   extern void vApplicationIdleHook( void );






   vApplicationIdleHook();
  }
# 2790 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 }
}
# 2834 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvInitialiseTCBVariables( TCB_t * const pxTCB, const char * const pcName, UBaseType_t uxPriority, const MemoryRegion_t * const xRegions, const uint16_t usStackDepth )
{
UBaseType_t x;


 for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) ( 10 ); x++ )
 {
  pxTCB->pcTaskName[ x ] = pcName[ x ];




  if( pcName[ x ] == 0x00 )
  {
   break;
  }
  else
  {
   ;
  }
 }



 pxTCB->pcTaskName[ ( 10 ) - 1 ] = '\0';



 if( uxPriority >= ( UBaseType_t ) ( 5 ) )
 {
  uxPriority = ( UBaseType_t ) ( 5 ) - ( UBaseType_t ) 1U;
 }
 else
 {
  ;
 }

 pxTCB->uxPriority = uxPriority;

 {
  pxTCB->uxBasePriority = uxPriority;
  pxTCB->uxMutexesHeld = 0;
 }


 vListInitialiseItem( &( pxTCB->xGenericListItem ) );
 vListInitialiseItem( &( pxTCB->xEventListItem ) );



 ( ( &( pxTCB->xGenericListItem ) )->pvOwner = ( void * ) ( pxTCB ) );


 ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) uxPriority ) );
 ( ( &( pxTCB->xEventListItem ) )->pvOwner = ( void * ) ( pxTCB ) );
# 2913 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 {
  ( void ) xRegions;
  ( void ) usStackDepth;
 }
# 2929 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 {
  pxTCB->ulNotifiedValue = 0;
  pxTCB->eNotifyState = eNotWaitingNotification;
 }
# 2941 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
}
# 2999 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
static void prvInitialiseTaskLists( void )
{
UBaseType_t uxPriority;

 for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) ( 5 ); uxPriority++ )
 {
  vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
 }

 vListInitialise( &xDelayedTaskList1 );
 vListInitialise( &xDelayedTaskList2 );
 vListInitialise( &xPendingReadyList );


 {
  vListInitialise( &xTasksWaitingTermination );
 }



 {
  vListInitialise( &xSuspendedTaskList );
 }




 pxDelayedTaskList = &xDelayedTaskList1;
 pxOverflowDelayedTaskList = &xDelayedTaskList2;
}


static void prvCheckTasksWaitingTermination( void )
{

 {
  BaseType_t xListIsEmpty;



  while( uxTasksDeleted > ( UBaseType_t ) 0U )
  {
   vTaskSuspendAll();
   {
    xListIsEmpty = ( ( BaseType_t ) ( ( &xTasksWaitingTermination )->uxNumberOfItems == ( UBaseType_t ) 0 ) );
   }
   ( void ) xTaskResumeAll();

   if( xListIsEmpty == ( ( BaseType_t ) 0 ) )
   {
    TCB_t *pxTCB;

    vPortEnterCritical();
    {
     pxTCB = ( TCB_t * ) ( (&( ( ( &xTasksWaitingTermination ) )->xListEnd ))->pxNext->pvOwner );
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     --uxCurrentNumberOfTasks;
     --uxTasksDeleted;
    }
    vPortExitCritical();

    prvDeleteTCB( pxTCB );
   }
   else
   {
    ;
   }
  }
 }

}


static void prvAddCurrentTaskToDelayedList( const TickType_t xTimeToWake )
{

 ( ( &( pxCurrentTCB->xGenericListItem ) )->xItemValue = ( xTimeToWake ) );

 if( xTimeToWake < xTickCount )
 {

  vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xGenericListItem ) );
 }
 else
 {

  vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xGenericListItem ) );




  if( xTimeToWake < xNextTaskUnblockTime )
  {
   xNextTaskUnblockTime = xTimeToWake;
  }
  else
  {
   ;
  }
 }
}


static TCB_t *prvAllocateTCBAndStack( const uint16_t usStackDepth, StackType_t * const puxStackBuffer )
{
TCB_t *pxNewTCB;
# 3131 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 {
 StackType_t *pxStack;


  pxStack = ( StackType_t * ) ( ( ( puxStackBuffer ) == ((void *)0) ) ? ( pvPortMalloc( ( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ) ) ) : ( puxStackBuffer ) );

  if( pxStack != ((void *)0) )
  {


   pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );

   if( pxNewTCB != ((void *)0) )
   {

    pxNewTCB->pxStack = pxStack;
   }
   else
   {


    vPortFree( pxStack );
   }
  }
  else
  {
   pxNewTCB = ((void *)0);
  }
 }


 if( pxNewTCB != ((void *)0) )
 {


  {

   ( void ) memset( pxNewTCB->pxStack, ( int ) ( 0xa5U ), ( size_t ) usStackDepth * sizeof( StackType_t ) );
  }

 }

 return pxNewTCB;
}
# 3264 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
 static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte )
 {
 uint32_t ulCount = 0U;

  while( *pucStackByte == ( uint8_t ) ( 0xa5U ) )
  {
   pucStackByte -= ( -1 );
   ulCount++;
  }

  ulCount /= ( uint32_t ) sizeof( StackType_t );

  return ( uint16_t ) ulCount;
 }






 UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask )
 {
 TCB_t *pxTCB;
 uint8_t *pucEndOfStack;
 UBaseType_t uxReturn;

  pxTCB = ( ( ( xTask ) == ((void *)0) ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( xTask ) );


  {
   pucEndOfStack = ( uint8_t * ) pxTCB->pxStack;
  }






  uxReturn = ( UBaseType_t ) prvTaskCheckFreeStackSpace( pucEndOfStack );

  return uxReturn;
 }






 static void prvDeleteTCB( TCB_t *pxTCB )
 {



  ( void ) pxTCB;
# 3337 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  {
   vPortFree( pxTCB->pxStack );
  }


  vPortFree( pxTCB );
 }




static void prvResetNextTaskUnblockTime( void )
{
TCB_t *pxTCB;

 if( ( ( BaseType_t ) ( ( pxDelayedTaskList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ) != ( ( BaseType_t ) 0 ) )
 {




  xNextTaskUnblockTime = ( TickType_t ) 0xffffffffUL;
 }
 else
 {




  ( pxTCB ) = ( TCB_t * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
  xNextTaskUnblockTime = ( ( &( ( pxTCB )->xGenericListItem ) )->xItemValue );
 }
}




 TaskHandle_t xTaskGetCurrentTaskHandle( void )
 {
 TaskHandle_t xReturn;




  xReturn = pxCurrentTCB;

  return xReturn;
 }






 BaseType_t xTaskGetSchedulerState( void )
 {
 BaseType_t xReturn;

  if( xSchedulerRunning == ( ( BaseType_t ) 0 ) )
  {
   xReturn = ( ( BaseType_t ) 1 );
  }
  else
  {
   if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
   {
    xReturn = ( ( BaseType_t ) 2 );
   }
   else
   {
    xReturn = ( ( BaseType_t ) 0 );
   }
  }

  return xReturn;
 }






 void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder )
 {
 TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;



  if( pxMutexHolder != ((void *)0) )
  {



   if( pxTCB->uxPriority < pxCurrentTCB->uxPriority )
   {



    if( ( ( ( &( pxTCB->xEventListItem ) )->xItemValue ) & 0x80000000UL ) == 0UL )
    {
     ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxCurrentTCB->uxPriority ) );
    }
    else
    {
     ;
    }



    if( ( ( BaseType_t ) ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ pxTCB->uxPriority ] ) ) ) ) != ( ( BaseType_t ) 0 ) )
    {
     if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {
      { if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
     }
     else
     {
      ;
     }


     pxTCB->uxPriority = pxCurrentTCB->uxPriority;
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {

     pxTCB->uxPriority = pxCurrentTCB->uxPriority;
    }

    ;
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }
 }






 BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder )
 {
 TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
 BaseType_t xReturn = ( ( BaseType_t ) 0 );

  if( pxMutexHolder != ((void *)0) )
  {




   if((pxTCB == pxCurrentTCB)==0) { vPortRaiseBASEPRI(); for( ;; ); };

   if((pxTCB->uxMutexesHeld)==0) { vPortRaiseBASEPRI(); for( ;; ); };
   ( pxTCB->uxMutexesHeld )--;



   if( pxTCB->uxPriority != pxTCB->uxBasePriority )
   {

    if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
    {





     if( uxListRemove( &( pxTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {
      { if( ( ( &( pxReadyTasksLists[ ( pxTCB->uxPriority ) ] ) )->uxNumberOfItems ) == ( UBaseType_t ) 0 ) { ( ( uxTopReadyPriority ) ) &= ~( 1UL << ( ( pxTCB->uxPriority ) ) ); } };
     }
     else
     {
      ;
     }



     ;
     pxTCB->uxPriority = pxTCB->uxBasePriority;




     ( ( &( pxTCB->xEventListItem ) )->xItemValue = ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxTCB->uxPriority ) );
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
# 3541 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
     xReturn = ( ( BaseType_t ) 1 );
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  else
  {
   ;
  }

  return xReturn;
 }
# 3870 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
TickType_t uxTaskResetEventItemValue( void )
{
TickType_t uxReturn;

 uxReturn = ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue );



 ( ( &( pxCurrentTCB->xEventListItem ) )->xItemValue = ( ( ( TickType_t ) ( 5 ) - ( TickType_t ) pxCurrentTCB->uxPriority ) ) );

 return uxReturn;
}




 void *pvTaskIncrementMutexHeldCount( void )
 {


  if( pxCurrentTCB != ((void *)0) )
  {
   ( pxCurrentTCB->uxMutexesHeld )++;
  }

  return pxCurrentTCB;
 }






 uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
 {
 TickType_t xTimeToWake;
 uint32_t ulReturn;

  vPortEnterCritical();
  {

   if( pxCurrentTCB->ulNotifiedValue == 0UL )
   {

    pxCurrentTCB->eNotifyState = eWaitingNotification;

    if( xTicksToWait > ( TickType_t ) 0 )
    {


     if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {



      ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
     }
     else
     {
      ;
     }


     {
      if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
      {




       vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
      }
      else
      {




       xTimeToWake = xTickCount + xTicksToWait;
       prvAddCurrentTaskToDelayedList( xTimeToWake );
      }
     }
# 3967 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
     { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  vPortExitCritical();

  vPortEnterCritical();
  {
   ulReturn = pxCurrentTCB->ulNotifiedValue;

   if( ulReturn != 0UL )
   {
    if( xClearCountOnExit != ( ( BaseType_t ) 0 ) )
    {
     pxCurrentTCB->ulNotifiedValue = 0UL;
    }
    else
    {
     ( pxCurrentTCB->ulNotifiedValue )--;
    }
   }
   else
   {
    ;
   }

   pxCurrentTCB->eNotifyState = eNotWaitingNotification;
  }
  vPortExitCritical();

  return ulReturn;
 }






 BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
 {
 TickType_t xTimeToWake;
 BaseType_t xReturn;

  vPortEnterCritical();
  {

   if( pxCurrentTCB->eNotifyState != eNotified )
   {



    pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnEntry;


    pxCurrentTCB->eNotifyState = eWaitingNotification;

    if( xTicksToWait > ( TickType_t ) 0 )
    {


     if( uxListRemove( &( pxCurrentTCB->xGenericListItem ) ) == ( UBaseType_t ) 0 )
     {



      ( uxTopReadyPriority ) &= ~( 1UL << ( pxCurrentTCB->uxPriority ) );
     }
     else
     {
      ;
     }


     {
      if( xTicksToWait == ( TickType_t ) 0xffffffffUL )
      {




       vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xGenericListItem ) );
      }
      else
      {




       xTimeToWake = xTickCount + xTicksToWait;
       prvAddCurrentTaskToDelayedList( xTimeToWake );
      }
     }
# 4082 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
     { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  vPortExitCritical();

  vPortEnterCritical();
  {
   if( pulNotificationValue != ((void *)0) )
   {


    *pulNotificationValue = pxCurrentTCB->ulNotifiedValue;
   }





   if( pxCurrentTCB->eNotifyState == eWaitingNotification )
   {

    xReturn = ( ( BaseType_t ) 0 );
   }
   else
   {


    pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnExit;
    xReturn = ( ( BaseType_t ) 1 );
   }

   pxCurrentTCB->eNotifyState = eNotWaitingNotification;
  }
  vPortExitCritical();

  return xReturn;
 }






 BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue )
 {
 TCB_t * pxTCB;
 eNotifyValue eOriginalNotifyState;
 BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );

  if((xTaskToNotify)==0) { vPortRaiseBASEPRI(); for( ;; ); };
  pxTCB = ( TCB_t * ) xTaskToNotify;

  vPortEnterCritical();
  {
   if( pulPreviousNotificationValue != ((void *)0) )
   {
    *pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
   }

   eOriginalNotifyState = pxTCB->eNotifyState;

   pxTCB->eNotifyState = eNotified;

   switch( eAction )
   {
    case eSetBits :
     pxTCB->ulNotifiedValue |= ulValue;
     break;

    case eIncrement :
     ( pxTCB->ulNotifiedValue )++;
     break;

    case eSetValueWithOverwrite :
     pxTCB->ulNotifiedValue = ulValue;
     break;

    case eSetValueWithoutOverwrite :
     if( eOriginalNotifyState != eNotified )
     {
      pxTCB->ulNotifiedValue = ulValue;
     }
     else
     {

      xReturn = ( ( ( BaseType_t ) 0 ) );
     }
     break;

    case eNoAction:


     break;
   }




   if( eOriginalNotifyState == eWaitingNotification )
   {
    ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
    ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );


    if((( ( &( pxTCB->xEventListItem ) )->pvContainer ) == ((void *)0))==0) { vPortRaiseBASEPRI(); for( ;; ); };
# 4213 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
    if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    {


     { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __asm volatile( "dsb" ); __asm volatile( "isb" ); };
    }
    else
    {
     ;
    }
   }
   else
   {
    ;
   }
  }
  vPortExitCritical();

  return xReturn;
 }






 BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken )
 {
 TCB_t * pxTCB;
 eNotifyValue eOriginalNotifyState;
 BaseType_t xReturn = ( ( ( BaseType_t ) 1 ) );
 UBaseType_t uxSavedInterruptStatus;

  if((xTaskToNotify)==0) { vPortRaiseBASEPRI(); for( ;; ); };
# 4264 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  vPortValidateInterruptPriority();

  pxTCB = ( TCB_t * ) xTaskToNotify;

  uxSavedInterruptStatus = ulPortRaiseBASEPRI();
  {
   eOriginalNotifyState = pxTCB->eNotifyState;

   pxTCB->eNotifyState = eNotified;

   switch( eAction )
   {
    case eSetBits :
     pxTCB->ulNotifiedValue |= ulValue;
     break;

    case eIncrement :
     ( pxTCB->ulNotifiedValue )++;
     break;

    case eSetValueWithOverwrite :
     pxTCB->ulNotifiedValue = ulValue;
     break;

    case eSetValueWithoutOverwrite :
     if( eOriginalNotifyState != eNotified )
     {
      pxTCB->ulNotifiedValue = ulValue;
     }
     else
     {

      xReturn = ( ( ( BaseType_t ) 0 ) );
     }
     break;

    case eNoAction :


     break;
   }




   if( eOriginalNotifyState == eWaitingNotification )
   {

    if((( ( &( pxTCB->xEventListItem ) )->pvContainer ) == ((void *)0))==0) { vPortRaiseBASEPRI(); for( ;; ); };

    if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
    {
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {


     vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
    }

    if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    {


     if( pxHigherPriorityTaskWoken != ((void *)0) )
     {
      *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
     }
    }
    else
    {
     ;
    }
   }
  }
  vPortSetBASEPRI(uxSavedInterruptStatus);

  return xReturn;
 }






 void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
 {
 TCB_t * pxTCB;
 eNotifyValue eOriginalNotifyState;
 UBaseType_t uxSavedInterruptStatus;

  if((xTaskToNotify)==0) { vPortRaiseBASEPRI(); for( ;; ); };
# 4375 "C:/NXP/S32DS_ARM_v2018.R1/S32DS/S32SDK_S32K14x_EAR_0.8.6/rtos/FreeRTOS_S32K/Source/tasks.c"
  vPortValidateInterruptPriority();

  pxTCB = ( TCB_t * ) xTaskToNotify;

  uxSavedInterruptStatus = ulPortRaiseBASEPRI();
  {
   eOriginalNotifyState = pxTCB->eNotifyState;
   pxTCB->eNotifyState = eNotified;



   ( pxTCB->ulNotifiedValue )++;



   if( eOriginalNotifyState == eWaitingNotification )
   {

    if((( ( &( pxTCB->xEventListItem ) )->pvContainer ) == ((void *)0))==0) { vPortRaiseBASEPRI(); for( ;; ); };

    if( uxSchedulerSuspended == ( UBaseType_t ) ( ( BaseType_t ) 0 ) )
    {
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     ; ( uxTopReadyPriority ) |= ( 1UL << ( ( pxTCB )->uxPriority ) ); vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
    }
    else
    {


     vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
    }

    if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    {


     if( pxHigherPriorityTaskWoken != ((void *)0) )
     {
      *pxHigherPriorityTaskWoken = ( ( BaseType_t ) 1 );
     }
    }
    else
    {
     ;
    }
   }
  }
  vPortSetBASEPRI(uxSavedInterruptStatus);
 }
