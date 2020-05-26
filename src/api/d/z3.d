


        import core.stdc.config;
        import core.stdc.stdarg: va_list;
        static import core.simd;
        static import std.conv;

        struct Int128 { long lower; long upper; }
        struct UInt128 { ulong lower; ulong upper; }

        struct __locale_data { int dummy; }



alias _Bool = bool;
struct dpp {
    static struct Opaque(int N) {
        void[N] bytes;
    }

    static bool isEmpty(T)() {
        return T.tupleof.length == 0;
    }
    static struct Move(T) {
        T* ptr;
    }


    static auto move(T)(ref T value) {
        return Move!T(&value);
    }
    mixin template EnumD(string name, T, string prefix) if(is(T == enum)) {
        private static string _memberMixinStr(string member) {
            import std.conv: text;
            import std.array: replace;
            return text(` `, member.replace(prefix, ""), ` = `, T.stringof, `.`, member, `,`);
        }
        private static string _enumMixinStr() {
            import std.array: join;
            string[] ret;
            ret ~= "enum " ~ name ~ "{";
            static foreach(member; __traits(allMembers, T)) {
                ret ~= _memberMixinStr(member);
            }
            ret ~= "}";
            return ret.join("\n");
        }
        mixin(_enumMixinStr());
    }
}

extern(C)
{
    alias uintmax_t = c_ulong;
    alias intmax_t = c_long;
    alias uintptr_t = c_ulong;
    alias intptr_t = c_long;
    alias uint_fast64_t = c_ulong;
    alias uint_fast32_t = c_ulong;
    alias uint_fast16_t = c_ulong;
    alias uint_fast8_t = ubyte;
    alias int_fast64_t = c_long;
    alias int_fast32_t = c_long;
    alias int_fast16_t = c_long;
    alias int_fast8_t = byte;
    alias uint_least64_t = c_ulong;
    alias uint_least32_t = uint;
    alias uint_least16_t = ushort;
    alias uint_least8_t = ubyte;
    alias int_least64_t = c_long;
    alias int_least32_t = int;
    alias int_least16_t = short;
    alias int_least8_t = byte;
    alias __sig_atomic_t = int;
    alias __socklen_t = uint;
    alias __intptr_t = c_long;
    alias __caddr_t = char*;
    alias __loff_t = c_long;
    alias __syscall_ulong_t = c_ulong;
    alias __syscall_slong_t = c_long;
    alias __ssize_t = c_long;
    alias __fsword_t = c_long;
    alias __fsfilcnt64_t = c_ulong;
    alias __fsfilcnt_t = c_ulong;
    alias __fsblkcnt64_t = c_ulong;
    alias __fsblkcnt_t = c_ulong;
    alias __blkcnt64_t = c_long;
    alias __blkcnt_t = c_long;
    alias __blksize_t = c_long;
    alias __timer_t = void*;
    alias __clockid_t = int;
    alias __key_t = int;
    alias __daddr_t = int;
    alias __suseconds_t = c_long;
    alias __useconds_t = uint;
    alias __time_t = c_long;
    alias __id_t = uint;
    alias __rlim64_t = c_ulong;
    alias __rlim_t = c_ulong;
    alias __clock_t = c_long;
    struct __fsid_t
    {
        int[2] __val;
    }
    alias __pid_t = int;
    alias __off64_t = c_long;
    alias __off_t = c_long;
    alias __nlink_t = c_ulong;
    alias __mode_t = uint;
    alias __ino64_t = c_ulong;
    alias __ino_t = c_ulong;
    alias __gid_t = uint;
    alias __uid_t = uint;
    alias __dev_t = c_ulong;
    alias __uintmax_t = c_ulong;
    alias __intmax_t = c_long;
    alias __u_quad_t = c_ulong;
    alias __quad_t = c_long;
    alias __uint_least64_t = c_ulong;
    alias __int_least64_t = c_long;
    alias __uint_least32_t = uint;
    alias __int_least32_t = int;
    alias __uint_least16_t = ushort;
    alias __int_least16_t = short;
    alias __uint_least8_t = ubyte;
    alias __int_least8_t = byte;
    alias __uint64_t = c_ulong;
    alias __int64_t = c_long;
    alias __uint32_t = uint;
    alias __int32_t = int;
    alias __uint16_t = ushort;
    alias __int16_t = short;
    alias __uint8_t = ubyte;
    alias __int8_t = byte;
    alias __u_long = c_ulong;
    alias __u_int = uint;
    alias __u_short = ushort;
    alias __u_char = ubyte;
    alias uint64_t = ulong;
    alias uint32_t = uint;
    alias uint16_t = ushort;
    alias uint8_t = ubyte;
    alias int64_t = c_long;
    alias int32_t = int;
    alias int16_t = short;
    alias int8_t = byte;
    c_ulong Z3_get_estimated_alloc_size() @nogc nothrow;
    double Z3_stats_get_double_value(_Z3_context*, _Z3_stats*, uint) @nogc nothrow;
    uint Z3_stats_get_uint_value(_Z3_context*, _Z3_stats*, uint) @nogc nothrow;
    bool Z3_stats_is_double(_Z3_context*, _Z3_stats*, uint) @nogc nothrow;
    bool Z3_stats_is_uint(_Z3_context*, _Z3_stats*, uint) @nogc nothrow;
    const(char)* Z3_stats_get_key(_Z3_context*, _Z3_stats*, uint) @nogc nothrow;
    struct _Z3_symbol;
    alias Z3_symbol = _Z3_symbol*;
    struct _Z3_literals;
    alias Z3_literals = _Z3_literals*;
    struct _Z3_config;
    alias Z3_config = _Z3_config*;
    struct _Z3_context;
    alias Z3_context = _Z3_context*;
    struct _Z3_sort;
    alias Z3_sort = _Z3_sort*;
    struct _Z3_func_decl;
    alias Z3_func_decl = _Z3_func_decl*;
    struct _Z3_ast;
    alias Z3_ast = _Z3_ast*;
    uint Z3_stats_size(_Z3_context*, _Z3_stats*) @nogc nothrow;
    struct _Z3_app;
    alias Z3_app = _Z3_app*;
    struct _Z3_pattern;
    alias Z3_pattern = _Z3_pattern*;
    alias Z3_model = _Z3_model*;
    struct _Z3_model;
    alias Z3_constructor = _Z3_constructor*;
    struct _Z3_constructor;
    alias Z3_constructor_list = _Z3_constructor_list*;
    struct _Z3_constructor_list;
    alias Z3_params = _Z3_params*;
    struct _Z3_params;
    alias Z3_param_descrs = _Z3_param_descrs*;
    struct _Z3_param_descrs;
    alias Z3_goal = _Z3_goal*;
    struct _Z3_goal;
    alias Z3_tactic = _Z3_tactic*;
    struct _Z3_tactic;
    alias Z3_probe = _Z3_probe*;
    struct _Z3_probe;
    alias Z3_stats = _Z3_stats*;
    struct _Z3_stats;
    alias Z3_solver = _Z3_solver*;
    struct _Z3_solver;
    alias Z3_ast_vector = _Z3_ast_vector*;
    struct _Z3_ast_vector;
    struct _Z3_ast_map;
    alias Z3_ast_map = _Z3_ast_map*;
    alias Z3_apply_result = _Z3_apply_result*;
    struct _Z3_apply_result;
    struct _Z3_func_interp;
    alias Z3_func_interp = _Z3_func_interp*;
    struct _Z3_func_entry;
    alias Z3_func_entry = _Z3_func_entry*;
    struct _Z3_fixedpoint;
    alias Z3_fixedpoint = _Z3_fixedpoint*;
    alias Z3_optimize = _Z3_optimize*;
    struct _Z3_optimize;
    alias Z3_rcf_num = _Z3_rcf_num*;
    struct _Z3_rcf_num;
    alias Z3_bool = bool;
    alias Z3_string = const(char)*;
    alias Z3_char_ptr = const(char)*;
    alias Z3_string_ptr = const(char)**;
    void Z3_stats_dec_ref(_Z3_context*, _Z3_stats*) @nogc nothrow;
    alias Z3_lbool = _Anonymous_0;
    enum _Anonymous_0
    {
        Z3_L_FALSE = -1,
        Z3_L_UNDEF = 0,
        Z3_L_TRUE = 1,
    }
    enum Z3_L_FALSE = _Anonymous_0.Z3_L_FALSE;
    enum Z3_L_UNDEF = _Anonymous_0.Z3_L_UNDEF;
    enum Z3_L_TRUE = _Anonymous_0.Z3_L_TRUE;
    alias Z3_symbol_kind = _Anonymous_1;
    enum _Anonymous_1
    {
        Z3_INT_SYMBOL = 0,
        Z3_STRING_SYMBOL = 1,
    }
    enum Z3_INT_SYMBOL = _Anonymous_1.Z3_INT_SYMBOL;
    enum Z3_STRING_SYMBOL = _Anonymous_1.Z3_STRING_SYMBOL;
    alias Z3_parameter_kind = _Anonymous_2;
    enum _Anonymous_2
    {
        Z3_PARAMETER_INT = 0,
        Z3_PARAMETER_DOUBLE = 1,
        Z3_PARAMETER_RATIONAL = 2,
        Z3_PARAMETER_SYMBOL = 3,
        Z3_PARAMETER_SORT = 4,
        Z3_PARAMETER_AST = 5,
        Z3_PARAMETER_FUNC_DECL = 6,
    }
    enum Z3_PARAMETER_INT = _Anonymous_2.Z3_PARAMETER_INT;
    enum Z3_PARAMETER_DOUBLE = _Anonymous_2.Z3_PARAMETER_DOUBLE;
    enum Z3_PARAMETER_RATIONAL = _Anonymous_2.Z3_PARAMETER_RATIONAL;
    enum Z3_PARAMETER_SYMBOL = _Anonymous_2.Z3_PARAMETER_SYMBOL;
    enum Z3_PARAMETER_SORT = _Anonymous_2.Z3_PARAMETER_SORT;
    enum Z3_PARAMETER_AST = _Anonymous_2.Z3_PARAMETER_AST;
    enum Z3_PARAMETER_FUNC_DECL = _Anonymous_2.Z3_PARAMETER_FUNC_DECL;
    alias Z3_sort_kind = _Anonymous_3;
    enum _Anonymous_3
    {
        Z3_UNINTERPRETED_SORT = 0,
        Z3_BOOL_SORT = 1,
        Z3_INT_SORT = 2,
        Z3_REAL_SORT = 3,
        Z3_BV_SORT = 4,
        Z3_ARRAY_SORT = 5,
        Z3_DATATYPE_SORT = 6,
        Z3_RELATION_SORT = 7,
        Z3_FINITE_DOMAIN_SORT = 8,
        Z3_FLOATING_POINT_SORT = 9,
        Z3_ROUNDING_MODE_SORT = 10,
        Z3_SEQ_SORT = 11,
        Z3_RE_SORT = 12,
        Z3_UNKNOWN_SORT = 1000,
    }
    enum Z3_UNINTERPRETED_SORT = _Anonymous_3.Z3_UNINTERPRETED_SORT;
    enum Z3_BOOL_SORT = _Anonymous_3.Z3_BOOL_SORT;
    enum Z3_INT_SORT = _Anonymous_3.Z3_INT_SORT;
    enum Z3_REAL_SORT = _Anonymous_3.Z3_REAL_SORT;
    enum Z3_BV_SORT = _Anonymous_3.Z3_BV_SORT;
    enum Z3_ARRAY_SORT = _Anonymous_3.Z3_ARRAY_SORT;
    enum Z3_DATATYPE_SORT = _Anonymous_3.Z3_DATATYPE_SORT;
    enum Z3_RELATION_SORT = _Anonymous_3.Z3_RELATION_SORT;
    enum Z3_FINITE_DOMAIN_SORT = _Anonymous_3.Z3_FINITE_DOMAIN_SORT;
    enum Z3_FLOATING_POINT_SORT = _Anonymous_3.Z3_FLOATING_POINT_SORT;
    enum Z3_ROUNDING_MODE_SORT = _Anonymous_3.Z3_ROUNDING_MODE_SORT;
    enum Z3_SEQ_SORT = _Anonymous_3.Z3_SEQ_SORT;
    enum Z3_RE_SORT = _Anonymous_3.Z3_RE_SORT;
    enum Z3_UNKNOWN_SORT = _Anonymous_3.Z3_UNKNOWN_SORT;
    alias Z3_ast_kind = _Anonymous_4;
    enum _Anonymous_4
    {
        Z3_NUMERAL_AST = 0,
        Z3_APP_AST = 1,
        Z3_VAR_AST = 2,
        Z3_QUANTIFIER_AST = 3,
        Z3_SORT_AST = 4,
        Z3_FUNC_DECL_AST = 5,
        Z3_UNKNOWN_AST = 1000,
    }
    enum Z3_NUMERAL_AST = _Anonymous_4.Z3_NUMERAL_AST;
    enum Z3_APP_AST = _Anonymous_4.Z3_APP_AST;
    enum Z3_VAR_AST = _Anonymous_4.Z3_VAR_AST;
    enum Z3_QUANTIFIER_AST = _Anonymous_4.Z3_QUANTIFIER_AST;
    enum Z3_SORT_AST = _Anonymous_4.Z3_SORT_AST;
    enum Z3_FUNC_DECL_AST = _Anonymous_4.Z3_FUNC_DECL_AST;
    enum Z3_UNKNOWN_AST = _Anonymous_4.Z3_UNKNOWN_AST;
    alias Z3_decl_kind = _Anonymous_5;
    enum _Anonymous_5
    {
        Z3_OP_TRUE = 256,
        Z3_OP_FALSE = 257,
        Z3_OP_EQ = 258,
        Z3_OP_DISTINCT = 259,
        Z3_OP_ITE = 260,
        Z3_OP_AND = 261,
        Z3_OP_OR = 262,
        Z3_OP_IFF = 263,
        Z3_OP_XOR = 264,
        Z3_OP_NOT = 265,
        Z3_OP_IMPLIES = 266,
        Z3_OP_OEQ = 267,
        Z3_OP_ANUM = 512,
        Z3_OP_AGNUM = 513,
        Z3_OP_LE = 514,
        Z3_OP_GE = 515,
        Z3_OP_LT = 516,
        Z3_OP_GT = 517,
        Z3_OP_ADD = 518,
        Z3_OP_SUB = 519,
        Z3_OP_UMINUS = 520,
        Z3_OP_MUL = 521,
        Z3_OP_DIV = 522,
        Z3_OP_IDIV = 523,
        Z3_OP_REM = 524,
        Z3_OP_MOD = 525,
        Z3_OP_TO_REAL = 526,
        Z3_OP_TO_INT = 527,
        Z3_OP_IS_INT = 528,
        Z3_OP_POWER = 529,
        Z3_OP_STORE = 768,
        Z3_OP_SELECT = 769,
        Z3_OP_CONST_ARRAY = 770,
        Z3_OP_ARRAY_MAP = 771,
        Z3_OP_ARRAY_DEFAULT = 772,
        Z3_OP_SET_UNION = 773,
        Z3_OP_SET_INTERSECT = 774,
        Z3_OP_SET_DIFFERENCE = 775,
        Z3_OP_SET_COMPLEMENT = 776,
        Z3_OP_SET_SUBSET = 777,
        Z3_OP_AS_ARRAY = 778,
        Z3_OP_ARRAY_EXT = 779,
        Z3_OP_SET_HAS_SIZE = 780,
        Z3_OP_SET_CARD = 781,
        Z3_OP_BNUM = 1024,
        Z3_OP_BIT1 = 1025,
        Z3_OP_BIT0 = 1026,
        Z3_OP_BNEG = 1027,
        Z3_OP_BADD = 1028,
        Z3_OP_BSUB = 1029,
        Z3_OP_BMUL = 1030,
        Z3_OP_BSDIV = 1031,
        Z3_OP_BUDIV = 1032,
        Z3_OP_BSREM = 1033,
        Z3_OP_BUREM = 1034,
        Z3_OP_BSMOD = 1035,
        Z3_OP_BSDIV0 = 1036,
        Z3_OP_BUDIV0 = 1037,
        Z3_OP_BSREM0 = 1038,
        Z3_OP_BUREM0 = 1039,
        Z3_OP_BSMOD0 = 1040,
        Z3_OP_ULEQ = 1041,
        Z3_OP_SLEQ = 1042,
        Z3_OP_UGEQ = 1043,
        Z3_OP_SGEQ = 1044,
        Z3_OP_ULT = 1045,
        Z3_OP_SLT = 1046,
        Z3_OP_UGT = 1047,
        Z3_OP_SGT = 1048,
        Z3_OP_BAND = 1049,
        Z3_OP_BOR = 1050,
        Z3_OP_BNOT = 1051,
        Z3_OP_BXOR = 1052,
        Z3_OP_BNAND = 1053,
        Z3_OP_BNOR = 1054,
        Z3_OP_BXNOR = 1055,
        Z3_OP_CONCAT = 1056,
        Z3_OP_SIGN_EXT = 1057,
        Z3_OP_ZERO_EXT = 1058,
        Z3_OP_EXTRACT = 1059,
        Z3_OP_REPEAT = 1060,
        Z3_OP_BREDOR = 1061,
        Z3_OP_BREDAND = 1062,
        Z3_OP_BCOMP = 1063,
        Z3_OP_BSHL = 1064,
        Z3_OP_BLSHR = 1065,
        Z3_OP_BASHR = 1066,
        Z3_OP_ROTATE_LEFT = 1067,
        Z3_OP_ROTATE_RIGHT = 1068,
        Z3_OP_EXT_ROTATE_LEFT = 1069,
        Z3_OP_EXT_ROTATE_RIGHT = 1070,
        Z3_OP_BIT2BOOL = 1071,
        Z3_OP_INT2BV = 1072,
        Z3_OP_BV2INT = 1073,
        Z3_OP_CARRY = 1074,
        Z3_OP_XOR3 = 1075,
        Z3_OP_BSMUL_NO_OVFL = 1076,
        Z3_OP_BUMUL_NO_OVFL = 1077,
        Z3_OP_BSMUL_NO_UDFL = 1078,
        Z3_OP_BSDIV_I = 1079,
        Z3_OP_BUDIV_I = 1080,
        Z3_OP_BSREM_I = 1081,
        Z3_OP_BUREM_I = 1082,
        Z3_OP_BSMOD_I = 1083,
        Z3_OP_PR_UNDEF = 1280,
        Z3_OP_PR_TRUE = 1281,
        Z3_OP_PR_ASSERTED = 1282,
        Z3_OP_PR_GOAL = 1283,
        Z3_OP_PR_MODUS_PONENS = 1284,
        Z3_OP_PR_REFLEXIVITY = 1285,
        Z3_OP_PR_SYMMETRY = 1286,
        Z3_OP_PR_TRANSITIVITY = 1287,
        Z3_OP_PR_TRANSITIVITY_STAR = 1288,
        Z3_OP_PR_MONOTONICITY = 1289,
        Z3_OP_PR_QUANT_INTRO = 1290,
        Z3_OP_PR_BIND = 1291,
        Z3_OP_PR_DISTRIBUTIVITY = 1292,
        Z3_OP_PR_AND_ELIM = 1293,
        Z3_OP_PR_NOT_OR_ELIM = 1294,
        Z3_OP_PR_REWRITE = 1295,
        Z3_OP_PR_REWRITE_STAR = 1296,
        Z3_OP_PR_PULL_QUANT = 1297,
        Z3_OP_PR_PUSH_QUANT = 1298,
        Z3_OP_PR_ELIM_UNUSED_VARS = 1299,
        Z3_OP_PR_DER = 1300,
        Z3_OP_PR_QUANT_INST = 1301,
        Z3_OP_PR_HYPOTHESIS = 1302,
        Z3_OP_PR_LEMMA = 1303,
        Z3_OP_PR_UNIT_RESOLUTION = 1304,
        Z3_OP_PR_IFF_TRUE = 1305,
        Z3_OP_PR_IFF_FALSE = 1306,
        Z3_OP_PR_COMMUTATIVITY = 1307,
        Z3_OP_PR_DEF_AXIOM = 1308,
        Z3_OP_PR_ASSUMPTION_ADD = 1309,
        Z3_OP_PR_LEMMA_ADD = 1310,
        Z3_OP_PR_REDUNDANT_DEL = 1311,
        Z3_OP_PR_CLAUSE_TRAIL = 1312,
        Z3_OP_PR_DEF_INTRO = 1313,
        Z3_OP_PR_APPLY_DEF = 1314,
        Z3_OP_PR_IFF_OEQ = 1315,
        Z3_OP_PR_NNF_POS = 1316,
        Z3_OP_PR_NNF_NEG = 1317,
        Z3_OP_PR_SKOLEMIZE = 1318,
        Z3_OP_PR_MODUS_PONENS_OEQ = 1319,
        Z3_OP_PR_TH_LEMMA = 1320,
        Z3_OP_PR_HYPER_RESOLVE = 1321,
        Z3_OP_RA_STORE = 1536,
        Z3_OP_RA_EMPTY = 1537,
        Z3_OP_RA_IS_EMPTY = 1538,
        Z3_OP_RA_JOIN = 1539,
        Z3_OP_RA_UNION = 1540,
        Z3_OP_RA_WIDEN = 1541,
        Z3_OP_RA_PROJECT = 1542,
        Z3_OP_RA_FILTER = 1543,
        Z3_OP_RA_NEGATION_FILTER = 1544,
        Z3_OP_RA_RENAME = 1545,
        Z3_OP_RA_COMPLEMENT = 1546,
        Z3_OP_RA_SELECT = 1547,
        Z3_OP_RA_CLONE = 1548,
        Z3_OP_FD_CONSTANT = 1549,
        Z3_OP_FD_LT = 1550,
        Z3_OP_SEQ_UNIT = 1551,
        Z3_OP_SEQ_EMPTY = 1552,
        Z3_OP_SEQ_CONCAT = 1553,
        Z3_OP_SEQ_PREFIX = 1554,
        Z3_OP_SEQ_SUFFIX = 1555,
        Z3_OP_SEQ_CONTAINS = 1556,
        Z3_OP_SEQ_EXTRACT = 1557,
        Z3_OP_SEQ_REPLACE = 1558,
        Z3_OP_SEQ_AT = 1559,
        Z3_OP_SEQ_NTH = 1560,
        Z3_OP_SEQ_LENGTH = 1561,
        Z3_OP_SEQ_INDEX = 1562,
        Z3_OP_SEQ_LAST_INDEX = 1563,
        Z3_OP_SEQ_TO_RE = 1564,
        Z3_OP_SEQ_IN_RE = 1565,
        Z3_OP_STR_TO_INT = 1566,
        Z3_OP_INT_TO_STR = 1567,
        Z3_OP_RE_PLUS = 1568,
        Z3_OP_RE_STAR = 1569,
        Z3_OP_RE_OPTION = 1570,
        Z3_OP_RE_CONCAT = 1571,
        Z3_OP_RE_UNION = 1572,
        Z3_OP_RE_RANGE = 1573,
        Z3_OP_RE_LOOP = 1574,
        Z3_OP_RE_INTERSECT = 1575,
        Z3_OP_RE_EMPTY_SET = 1576,
        Z3_OP_RE_FULL_SET = 1577,
        Z3_OP_RE_COMPLEMENT = 1578,
        Z3_OP_LABEL = 1792,
        Z3_OP_LABEL_LIT = 1793,
        Z3_OP_DT_CONSTRUCTOR = 2048,
        Z3_OP_DT_RECOGNISER = 2049,
        Z3_OP_DT_IS = 2050,
        Z3_OP_DT_ACCESSOR = 2051,
        Z3_OP_DT_UPDATE_FIELD = 2052,
        Z3_OP_PB_AT_MOST = 2304,
        Z3_OP_PB_AT_LEAST = 2305,
        Z3_OP_PB_LE = 2306,
        Z3_OP_PB_GE = 2307,
        Z3_OP_PB_EQ = 2308,
        Z3_OP_SPECIAL_RELATION_LO = 40960,
        Z3_OP_SPECIAL_RELATION_PO = 40961,
        Z3_OP_SPECIAL_RELATION_PLO = 40962,
        Z3_OP_SPECIAL_RELATION_TO = 40963,
        Z3_OP_SPECIAL_RELATION_TC = 40964,
        Z3_OP_SPECIAL_RELATION_TRC = 40965,
        Z3_OP_FPA_RM_NEAREST_TIES_TO_EVEN = 45056,
        Z3_OP_FPA_RM_NEAREST_TIES_TO_AWAY = 45057,
        Z3_OP_FPA_RM_TOWARD_POSITIVE = 45058,
        Z3_OP_FPA_RM_TOWARD_NEGATIVE = 45059,
        Z3_OP_FPA_RM_TOWARD_ZERO = 45060,
        Z3_OP_FPA_NUM = 45061,
        Z3_OP_FPA_PLUS_INF = 45062,
        Z3_OP_FPA_MINUS_INF = 45063,
        Z3_OP_FPA_NAN = 45064,
        Z3_OP_FPA_PLUS_ZERO = 45065,
        Z3_OP_FPA_MINUS_ZERO = 45066,
        Z3_OP_FPA_ADD = 45067,
        Z3_OP_FPA_SUB = 45068,
        Z3_OP_FPA_NEG = 45069,
        Z3_OP_FPA_MUL = 45070,
        Z3_OP_FPA_DIV = 45071,
        Z3_OP_FPA_REM = 45072,
        Z3_OP_FPA_ABS = 45073,
        Z3_OP_FPA_MIN = 45074,
        Z3_OP_FPA_MAX = 45075,
        Z3_OP_FPA_FMA = 45076,
        Z3_OP_FPA_SQRT = 45077,
        Z3_OP_FPA_ROUND_TO_INTEGRAL = 45078,
        Z3_OP_FPA_EQ = 45079,
        Z3_OP_FPA_LT = 45080,
        Z3_OP_FPA_GT = 45081,
        Z3_OP_FPA_LE = 45082,
        Z3_OP_FPA_GE = 45083,
        Z3_OP_FPA_IS_NAN = 45084,
        Z3_OP_FPA_IS_INF = 45085,
        Z3_OP_FPA_IS_ZERO = 45086,
        Z3_OP_FPA_IS_NORMAL = 45087,
        Z3_OP_FPA_IS_SUBNORMAL = 45088,
        Z3_OP_FPA_IS_NEGATIVE = 45089,
        Z3_OP_FPA_IS_POSITIVE = 45090,
        Z3_OP_FPA_FP = 45091,
        Z3_OP_FPA_TO_FP = 45092,
        Z3_OP_FPA_TO_FP_UNSIGNED = 45093,
        Z3_OP_FPA_TO_UBV = 45094,
        Z3_OP_FPA_TO_SBV = 45095,
        Z3_OP_FPA_TO_REAL = 45096,
        Z3_OP_FPA_TO_IEEE_BV = 45097,
        Z3_OP_FPA_BVWRAP = 45098,
        Z3_OP_FPA_BV2RM = 45099,
        Z3_OP_INTERNAL = 45100,
        Z3_OP_UNINTERPRETED = 45101,
    }
    enum Z3_OP_TRUE = _Anonymous_5.Z3_OP_TRUE;
    enum Z3_OP_FALSE = _Anonymous_5.Z3_OP_FALSE;
    enum Z3_OP_EQ = _Anonymous_5.Z3_OP_EQ;
    enum Z3_OP_DISTINCT = _Anonymous_5.Z3_OP_DISTINCT;
    enum Z3_OP_ITE = _Anonymous_5.Z3_OP_ITE;
    enum Z3_OP_AND = _Anonymous_5.Z3_OP_AND;
    enum Z3_OP_OR = _Anonymous_5.Z3_OP_OR;
    enum Z3_OP_IFF = _Anonymous_5.Z3_OP_IFF;
    enum Z3_OP_XOR = _Anonymous_5.Z3_OP_XOR;
    enum Z3_OP_NOT = _Anonymous_5.Z3_OP_NOT;
    enum Z3_OP_IMPLIES = _Anonymous_5.Z3_OP_IMPLIES;
    enum Z3_OP_OEQ = _Anonymous_5.Z3_OP_OEQ;
    enum Z3_OP_ANUM = _Anonymous_5.Z3_OP_ANUM;
    enum Z3_OP_AGNUM = _Anonymous_5.Z3_OP_AGNUM;
    enum Z3_OP_LE = _Anonymous_5.Z3_OP_LE;
    enum Z3_OP_GE = _Anonymous_5.Z3_OP_GE;
    enum Z3_OP_LT = _Anonymous_5.Z3_OP_LT;
    enum Z3_OP_GT = _Anonymous_5.Z3_OP_GT;
    enum Z3_OP_ADD = _Anonymous_5.Z3_OP_ADD;
    enum Z3_OP_SUB = _Anonymous_5.Z3_OP_SUB;
    enum Z3_OP_UMINUS = _Anonymous_5.Z3_OP_UMINUS;
    enum Z3_OP_MUL = _Anonymous_5.Z3_OP_MUL;
    enum Z3_OP_DIV = _Anonymous_5.Z3_OP_DIV;
    enum Z3_OP_IDIV = _Anonymous_5.Z3_OP_IDIV;
    enum Z3_OP_REM = _Anonymous_5.Z3_OP_REM;
    enum Z3_OP_MOD = _Anonymous_5.Z3_OP_MOD;
    enum Z3_OP_TO_REAL = _Anonymous_5.Z3_OP_TO_REAL;
    enum Z3_OP_TO_INT = _Anonymous_5.Z3_OP_TO_INT;
    enum Z3_OP_IS_INT = _Anonymous_5.Z3_OP_IS_INT;
    enum Z3_OP_POWER = _Anonymous_5.Z3_OP_POWER;
    enum Z3_OP_STORE = _Anonymous_5.Z3_OP_STORE;
    enum Z3_OP_SELECT = _Anonymous_5.Z3_OP_SELECT;
    enum Z3_OP_CONST_ARRAY = _Anonymous_5.Z3_OP_CONST_ARRAY;
    enum Z3_OP_ARRAY_MAP = _Anonymous_5.Z3_OP_ARRAY_MAP;
    enum Z3_OP_ARRAY_DEFAULT = _Anonymous_5.Z3_OP_ARRAY_DEFAULT;
    enum Z3_OP_SET_UNION = _Anonymous_5.Z3_OP_SET_UNION;
    enum Z3_OP_SET_INTERSECT = _Anonymous_5.Z3_OP_SET_INTERSECT;
    enum Z3_OP_SET_DIFFERENCE = _Anonymous_5.Z3_OP_SET_DIFFERENCE;
    enum Z3_OP_SET_COMPLEMENT = _Anonymous_5.Z3_OP_SET_COMPLEMENT;
    enum Z3_OP_SET_SUBSET = _Anonymous_5.Z3_OP_SET_SUBSET;
    enum Z3_OP_AS_ARRAY = _Anonymous_5.Z3_OP_AS_ARRAY;
    enum Z3_OP_ARRAY_EXT = _Anonymous_5.Z3_OP_ARRAY_EXT;
    enum Z3_OP_SET_HAS_SIZE = _Anonymous_5.Z3_OP_SET_HAS_SIZE;
    enum Z3_OP_SET_CARD = _Anonymous_5.Z3_OP_SET_CARD;
    enum Z3_OP_BNUM = _Anonymous_5.Z3_OP_BNUM;
    enum Z3_OP_BIT1 = _Anonymous_5.Z3_OP_BIT1;
    enum Z3_OP_BIT0 = _Anonymous_5.Z3_OP_BIT0;
    enum Z3_OP_BNEG = _Anonymous_5.Z3_OP_BNEG;
    enum Z3_OP_BADD = _Anonymous_5.Z3_OP_BADD;
    enum Z3_OP_BSUB = _Anonymous_5.Z3_OP_BSUB;
    enum Z3_OP_BMUL = _Anonymous_5.Z3_OP_BMUL;
    enum Z3_OP_BSDIV = _Anonymous_5.Z3_OP_BSDIV;
    enum Z3_OP_BUDIV = _Anonymous_5.Z3_OP_BUDIV;
    enum Z3_OP_BSREM = _Anonymous_5.Z3_OP_BSREM;
    enum Z3_OP_BUREM = _Anonymous_5.Z3_OP_BUREM;
    enum Z3_OP_BSMOD = _Anonymous_5.Z3_OP_BSMOD;
    enum Z3_OP_BSDIV0 = _Anonymous_5.Z3_OP_BSDIV0;
    enum Z3_OP_BUDIV0 = _Anonymous_5.Z3_OP_BUDIV0;
    enum Z3_OP_BSREM0 = _Anonymous_5.Z3_OP_BSREM0;
    enum Z3_OP_BUREM0 = _Anonymous_5.Z3_OP_BUREM0;
    enum Z3_OP_BSMOD0 = _Anonymous_5.Z3_OP_BSMOD0;
    enum Z3_OP_ULEQ = _Anonymous_5.Z3_OP_ULEQ;
    enum Z3_OP_SLEQ = _Anonymous_5.Z3_OP_SLEQ;
    enum Z3_OP_UGEQ = _Anonymous_5.Z3_OP_UGEQ;
    enum Z3_OP_SGEQ = _Anonymous_5.Z3_OP_SGEQ;
    enum Z3_OP_ULT = _Anonymous_5.Z3_OP_ULT;
    enum Z3_OP_SLT = _Anonymous_5.Z3_OP_SLT;
    enum Z3_OP_UGT = _Anonymous_5.Z3_OP_UGT;
    enum Z3_OP_SGT = _Anonymous_5.Z3_OP_SGT;
    enum Z3_OP_BAND = _Anonymous_5.Z3_OP_BAND;
    enum Z3_OP_BOR = _Anonymous_5.Z3_OP_BOR;
    enum Z3_OP_BNOT = _Anonymous_5.Z3_OP_BNOT;
    enum Z3_OP_BXOR = _Anonymous_5.Z3_OP_BXOR;
    enum Z3_OP_BNAND = _Anonymous_5.Z3_OP_BNAND;
    enum Z3_OP_BNOR = _Anonymous_5.Z3_OP_BNOR;
    enum Z3_OP_BXNOR = _Anonymous_5.Z3_OP_BXNOR;
    enum Z3_OP_CONCAT = _Anonymous_5.Z3_OP_CONCAT;
    enum Z3_OP_SIGN_EXT = _Anonymous_5.Z3_OP_SIGN_EXT;
    enum Z3_OP_ZERO_EXT = _Anonymous_5.Z3_OP_ZERO_EXT;
    enum Z3_OP_EXTRACT = _Anonymous_5.Z3_OP_EXTRACT;
    enum Z3_OP_REPEAT = _Anonymous_5.Z3_OP_REPEAT;
    enum Z3_OP_BREDOR = _Anonymous_5.Z3_OP_BREDOR;
    enum Z3_OP_BREDAND = _Anonymous_5.Z3_OP_BREDAND;
    enum Z3_OP_BCOMP = _Anonymous_5.Z3_OP_BCOMP;
    enum Z3_OP_BSHL = _Anonymous_5.Z3_OP_BSHL;
    enum Z3_OP_BLSHR = _Anonymous_5.Z3_OP_BLSHR;
    enum Z3_OP_BASHR = _Anonymous_5.Z3_OP_BASHR;
    enum Z3_OP_ROTATE_LEFT = _Anonymous_5.Z3_OP_ROTATE_LEFT;
    enum Z3_OP_ROTATE_RIGHT = _Anonymous_5.Z3_OP_ROTATE_RIGHT;
    enum Z3_OP_EXT_ROTATE_LEFT = _Anonymous_5.Z3_OP_EXT_ROTATE_LEFT;
    enum Z3_OP_EXT_ROTATE_RIGHT = _Anonymous_5.Z3_OP_EXT_ROTATE_RIGHT;
    enum Z3_OP_BIT2BOOL = _Anonymous_5.Z3_OP_BIT2BOOL;
    enum Z3_OP_INT2BV = _Anonymous_5.Z3_OP_INT2BV;
    enum Z3_OP_BV2INT = _Anonymous_5.Z3_OP_BV2INT;
    enum Z3_OP_CARRY = _Anonymous_5.Z3_OP_CARRY;
    enum Z3_OP_XOR3 = _Anonymous_5.Z3_OP_XOR3;
    enum Z3_OP_BSMUL_NO_OVFL = _Anonymous_5.Z3_OP_BSMUL_NO_OVFL;
    enum Z3_OP_BUMUL_NO_OVFL = _Anonymous_5.Z3_OP_BUMUL_NO_OVFL;
    enum Z3_OP_BSMUL_NO_UDFL = _Anonymous_5.Z3_OP_BSMUL_NO_UDFL;
    enum Z3_OP_BSDIV_I = _Anonymous_5.Z3_OP_BSDIV_I;
    enum Z3_OP_BUDIV_I = _Anonymous_5.Z3_OP_BUDIV_I;
    enum Z3_OP_BSREM_I = _Anonymous_5.Z3_OP_BSREM_I;
    enum Z3_OP_BUREM_I = _Anonymous_5.Z3_OP_BUREM_I;
    enum Z3_OP_BSMOD_I = _Anonymous_5.Z3_OP_BSMOD_I;
    enum Z3_OP_PR_UNDEF = _Anonymous_5.Z3_OP_PR_UNDEF;
    enum Z3_OP_PR_TRUE = _Anonymous_5.Z3_OP_PR_TRUE;
    enum Z3_OP_PR_ASSERTED = _Anonymous_5.Z3_OP_PR_ASSERTED;
    enum Z3_OP_PR_GOAL = _Anonymous_5.Z3_OP_PR_GOAL;
    enum Z3_OP_PR_MODUS_PONENS = _Anonymous_5.Z3_OP_PR_MODUS_PONENS;
    enum Z3_OP_PR_REFLEXIVITY = _Anonymous_5.Z3_OP_PR_REFLEXIVITY;
    enum Z3_OP_PR_SYMMETRY = _Anonymous_5.Z3_OP_PR_SYMMETRY;
    enum Z3_OP_PR_TRANSITIVITY = _Anonymous_5.Z3_OP_PR_TRANSITIVITY;
    enum Z3_OP_PR_TRANSITIVITY_STAR = _Anonymous_5.Z3_OP_PR_TRANSITIVITY_STAR;
    enum Z3_OP_PR_MONOTONICITY = _Anonymous_5.Z3_OP_PR_MONOTONICITY;
    enum Z3_OP_PR_QUANT_INTRO = _Anonymous_5.Z3_OP_PR_QUANT_INTRO;
    enum Z3_OP_PR_BIND = _Anonymous_5.Z3_OP_PR_BIND;
    enum Z3_OP_PR_DISTRIBUTIVITY = _Anonymous_5.Z3_OP_PR_DISTRIBUTIVITY;
    enum Z3_OP_PR_AND_ELIM = _Anonymous_5.Z3_OP_PR_AND_ELIM;
    enum Z3_OP_PR_NOT_OR_ELIM = _Anonymous_5.Z3_OP_PR_NOT_OR_ELIM;
    enum Z3_OP_PR_REWRITE = _Anonymous_5.Z3_OP_PR_REWRITE;
    enum Z3_OP_PR_REWRITE_STAR = _Anonymous_5.Z3_OP_PR_REWRITE_STAR;
    enum Z3_OP_PR_PULL_QUANT = _Anonymous_5.Z3_OP_PR_PULL_QUANT;
    enum Z3_OP_PR_PUSH_QUANT = _Anonymous_5.Z3_OP_PR_PUSH_QUANT;
    enum Z3_OP_PR_ELIM_UNUSED_VARS = _Anonymous_5.Z3_OP_PR_ELIM_UNUSED_VARS;
    enum Z3_OP_PR_DER = _Anonymous_5.Z3_OP_PR_DER;
    enum Z3_OP_PR_QUANT_INST = _Anonymous_5.Z3_OP_PR_QUANT_INST;
    enum Z3_OP_PR_HYPOTHESIS = _Anonymous_5.Z3_OP_PR_HYPOTHESIS;
    enum Z3_OP_PR_LEMMA = _Anonymous_5.Z3_OP_PR_LEMMA;
    enum Z3_OP_PR_UNIT_RESOLUTION = _Anonymous_5.Z3_OP_PR_UNIT_RESOLUTION;
    enum Z3_OP_PR_IFF_TRUE = _Anonymous_5.Z3_OP_PR_IFF_TRUE;
    enum Z3_OP_PR_IFF_FALSE = _Anonymous_5.Z3_OP_PR_IFF_FALSE;
    enum Z3_OP_PR_COMMUTATIVITY = _Anonymous_5.Z3_OP_PR_COMMUTATIVITY;
    enum Z3_OP_PR_DEF_AXIOM = _Anonymous_5.Z3_OP_PR_DEF_AXIOM;
    enum Z3_OP_PR_ASSUMPTION_ADD = _Anonymous_5.Z3_OP_PR_ASSUMPTION_ADD;
    enum Z3_OP_PR_LEMMA_ADD = _Anonymous_5.Z3_OP_PR_LEMMA_ADD;
    enum Z3_OP_PR_REDUNDANT_DEL = _Anonymous_5.Z3_OP_PR_REDUNDANT_DEL;
    enum Z3_OP_PR_CLAUSE_TRAIL = _Anonymous_5.Z3_OP_PR_CLAUSE_TRAIL;
    enum Z3_OP_PR_DEF_INTRO = _Anonymous_5.Z3_OP_PR_DEF_INTRO;
    enum Z3_OP_PR_APPLY_DEF = _Anonymous_5.Z3_OP_PR_APPLY_DEF;
    enum Z3_OP_PR_IFF_OEQ = _Anonymous_5.Z3_OP_PR_IFF_OEQ;
    enum Z3_OP_PR_NNF_POS = _Anonymous_5.Z3_OP_PR_NNF_POS;
    enum Z3_OP_PR_NNF_NEG = _Anonymous_5.Z3_OP_PR_NNF_NEG;
    enum Z3_OP_PR_SKOLEMIZE = _Anonymous_5.Z3_OP_PR_SKOLEMIZE;
    enum Z3_OP_PR_MODUS_PONENS_OEQ = _Anonymous_5.Z3_OP_PR_MODUS_PONENS_OEQ;
    enum Z3_OP_PR_TH_LEMMA = _Anonymous_5.Z3_OP_PR_TH_LEMMA;
    enum Z3_OP_PR_HYPER_RESOLVE = _Anonymous_5.Z3_OP_PR_HYPER_RESOLVE;
    enum Z3_OP_RA_STORE = _Anonymous_5.Z3_OP_RA_STORE;
    enum Z3_OP_RA_EMPTY = _Anonymous_5.Z3_OP_RA_EMPTY;
    enum Z3_OP_RA_IS_EMPTY = _Anonymous_5.Z3_OP_RA_IS_EMPTY;
    enum Z3_OP_RA_JOIN = _Anonymous_5.Z3_OP_RA_JOIN;
    enum Z3_OP_RA_UNION = _Anonymous_5.Z3_OP_RA_UNION;
    enum Z3_OP_RA_WIDEN = _Anonymous_5.Z3_OP_RA_WIDEN;
    enum Z3_OP_RA_PROJECT = _Anonymous_5.Z3_OP_RA_PROJECT;
    enum Z3_OP_RA_FILTER = _Anonymous_5.Z3_OP_RA_FILTER;
    enum Z3_OP_RA_NEGATION_FILTER = _Anonymous_5.Z3_OP_RA_NEGATION_FILTER;
    enum Z3_OP_RA_RENAME = _Anonymous_5.Z3_OP_RA_RENAME;
    enum Z3_OP_RA_COMPLEMENT = _Anonymous_5.Z3_OP_RA_COMPLEMENT;
    enum Z3_OP_RA_SELECT = _Anonymous_5.Z3_OP_RA_SELECT;
    enum Z3_OP_RA_CLONE = _Anonymous_5.Z3_OP_RA_CLONE;
    enum Z3_OP_FD_CONSTANT = _Anonymous_5.Z3_OP_FD_CONSTANT;
    enum Z3_OP_FD_LT = _Anonymous_5.Z3_OP_FD_LT;
    enum Z3_OP_SEQ_UNIT = _Anonymous_5.Z3_OP_SEQ_UNIT;
    enum Z3_OP_SEQ_EMPTY = _Anonymous_5.Z3_OP_SEQ_EMPTY;
    enum Z3_OP_SEQ_CONCAT = _Anonymous_5.Z3_OP_SEQ_CONCAT;
    enum Z3_OP_SEQ_PREFIX = _Anonymous_5.Z3_OP_SEQ_PREFIX;
    enum Z3_OP_SEQ_SUFFIX = _Anonymous_5.Z3_OP_SEQ_SUFFIX;
    enum Z3_OP_SEQ_CONTAINS = _Anonymous_5.Z3_OP_SEQ_CONTAINS;
    enum Z3_OP_SEQ_EXTRACT = _Anonymous_5.Z3_OP_SEQ_EXTRACT;
    enum Z3_OP_SEQ_REPLACE = _Anonymous_5.Z3_OP_SEQ_REPLACE;
    enum Z3_OP_SEQ_AT = _Anonymous_5.Z3_OP_SEQ_AT;
    enum Z3_OP_SEQ_NTH = _Anonymous_5.Z3_OP_SEQ_NTH;
    enum Z3_OP_SEQ_LENGTH = _Anonymous_5.Z3_OP_SEQ_LENGTH;
    enum Z3_OP_SEQ_INDEX = _Anonymous_5.Z3_OP_SEQ_INDEX;
    enum Z3_OP_SEQ_LAST_INDEX = _Anonymous_5.Z3_OP_SEQ_LAST_INDEX;
    enum Z3_OP_SEQ_TO_RE = _Anonymous_5.Z3_OP_SEQ_TO_RE;
    enum Z3_OP_SEQ_IN_RE = _Anonymous_5.Z3_OP_SEQ_IN_RE;
    enum Z3_OP_STR_TO_INT = _Anonymous_5.Z3_OP_STR_TO_INT;
    enum Z3_OP_INT_TO_STR = _Anonymous_5.Z3_OP_INT_TO_STR;
    enum Z3_OP_RE_PLUS = _Anonymous_5.Z3_OP_RE_PLUS;
    enum Z3_OP_RE_STAR = _Anonymous_5.Z3_OP_RE_STAR;
    enum Z3_OP_RE_OPTION = _Anonymous_5.Z3_OP_RE_OPTION;
    enum Z3_OP_RE_CONCAT = _Anonymous_5.Z3_OP_RE_CONCAT;
    enum Z3_OP_RE_UNION = _Anonymous_5.Z3_OP_RE_UNION;
    enum Z3_OP_RE_RANGE = _Anonymous_5.Z3_OP_RE_RANGE;
    enum Z3_OP_RE_LOOP = _Anonymous_5.Z3_OP_RE_LOOP;
    enum Z3_OP_RE_INTERSECT = _Anonymous_5.Z3_OP_RE_INTERSECT;
    enum Z3_OP_RE_EMPTY_SET = _Anonymous_5.Z3_OP_RE_EMPTY_SET;
    enum Z3_OP_RE_FULL_SET = _Anonymous_5.Z3_OP_RE_FULL_SET;
    enum Z3_OP_RE_COMPLEMENT = _Anonymous_5.Z3_OP_RE_COMPLEMENT;
    enum Z3_OP_LABEL = _Anonymous_5.Z3_OP_LABEL;
    enum Z3_OP_LABEL_LIT = _Anonymous_5.Z3_OP_LABEL_LIT;
    enum Z3_OP_DT_CONSTRUCTOR = _Anonymous_5.Z3_OP_DT_CONSTRUCTOR;
    enum Z3_OP_DT_RECOGNISER = _Anonymous_5.Z3_OP_DT_RECOGNISER;
    enum Z3_OP_DT_IS = _Anonymous_5.Z3_OP_DT_IS;
    enum Z3_OP_DT_ACCESSOR = _Anonymous_5.Z3_OP_DT_ACCESSOR;
    enum Z3_OP_DT_UPDATE_FIELD = _Anonymous_5.Z3_OP_DT_UPDATE_FIELD;
    enum Z3_OP_PB_AT_MOST = _Anonymous_5.Z3_OP_PB_AT_MOST;
    enum Z3_OP_PB_AT_LEAST = _Anonymous_5.Z3_OP_PB_AT_LEAST;
    enum Z3_OP_PB_LE = _Anonymous_5.Z3_OP_PB_LE;
    enum Z3_OP_PB_GE = _Anonymous_5.Z3_OP_PB_GE;
    enum Z3_OP_PB_EQ = _Anonymous_5.Z3_OP_PB_EQ;
    enum Z3_OP_SPECIAL_RELATION_LO = _Anonymous_5.Z3_OP_SPECIAL_RELATION_LO;
    enum Z3_OP_SPECIAL_RELATION_PO = _Anonymous_5.Z3_OP_SPECIAL_RELATION_PO;
    enum Z3_OP_SPECIAL_RELATION_PLO = _Anonymous_5.Z3_OP_SPECIAL_RELATION_PLO;
    enum Z3_OP_SPECIAL_RELATION_TO = _Anonymous_5.Z3_OP_SPECIAL_RELATION_TO;
    enum Z3_OP_SPECIAL_RELATION_TC = _Anonymous_5.Z3_OP_SPECIAL_RELATION_TC;
    enum Z3_OP_SPECIAL_RELATION_TRC = _Anonymous_5.Z3_OP_SPECIAL_RELATION_TRC;
    enum Z3_OP_FPA_RM_NEAREST_TIES_TO_EVEN = _Anonymous_5.Z3_OP_FPA_RM_NEAREST_TIES_TO_EVEN;
    enum Z3_OP_FPA_RM_NEAREST_TIES_TO_AWAY = _Anonymous_5.Z3_OP_FPA_RM_NEAREST_TIES_TO_AWAY;
    enum Z3_OP_FPA_RM_TOWARD_POSITIVE = _Anonymous_5.Z3_OP_FPA_RM_TOWARD_POSITIVE;
    enum Z3_OP_FPA_RM_TOWARD_NEGATIVE = _Anonymous_5.Z3_OP_FPA_RM_TOWARD_NEGATIVE;
    enum Z3_OP_FPA_RM_TOWARD_ZERO = _Anonymous_5.Z3_OP_FPA_RM_TOWARD_ZERO;
    enum Z3_OP_FPA_NUM = _Anonymous_5.Z3_OP_FPA_NUM;
    enum Z3_OP_FPA_PLUS_INF = _Anonymous_5.Z3_OP_FPA_PLUS_INF;
    enum Z3_OP_FPA_MINUS_INF = _Anonymous_5.Z3_OP_FPA_MINUS_INF;
    enum Z3_OP_FPA_NAN = _Anonymous_5.Z3_OP_FPA_NAN;
    enum Z3_OP_FPA_PLUS_ZERO = _Anonymous_5.Z3_OP_FPA_PLUS_ZERO;
    enum Z3_OP_FPA_MINUS_ZERO = _Anonymous_5.Z3_OP_FPA_MINUS_ZERO;
    enum Z3_OP_FPA_ADD = _Anonymous_5.Z3_OP_FPA_ADD;
    enum Z3_OP_FPA_SUB = _Anonymous_5.Z3_OP_FPA_SUB;
    enum Z3_OP_FPA_NEG = _Anonymous_5.Z3_OP_FPA_NEG;
    enum Z3_OP_FPA_MUL = _Anonymous_5.Z3_OP_FPA_MUL;
    enum Z3_OP_FPA_DIV = _Anonymous_5.Z3_OP_FPA_DIV;
    enum Z3_OP_FPA_REM = _Anonymous_5.Z3_OP_FPA_REM;
    enum Z3_OP_FPA_ABS = _Anonymous_5.Z3_OP_FPA_ABS;
    enum Z3_OP_FPA_MIN = _Anonymous_5.Z3_OP_FPA_MIN;
    enum Z3_OP_FPA_MAX = _Anonymous_5.Z3_OP_FPA_MAX;
    enum Z3_OP_FPA_FMA = _Anonymous_5.Z3_OP_FPA_FMA;
    enum Z3_OP_FPA_SQRT = _Anonymous_5.Z3_OP_FPA_SQRT;
    enum Z3_OP_FPA_ROUND_TO_INTEGRAL = _Anonymous_5.Z3_OP_FPA_ROUND_TO_INTEGRAL;
    enum Z3_OP_FPA_EQ = _Anonymous_5.Z3_OP_FPA_EQ;
    enum Z3_OP_FPA_LT = _Anonymous_5.Z3_OP_FPA_LT;
    enum Z3_OP_FPA_GT = _Anonymous_5.Z3_OP_FPA_GT;
    enum Z3_OP_FPA_LE = _Anonymous_5.Z3_OP_FPA_LE;
    enum Z3_OP_FPA_GE = _Anonymous_5.Z3_OP_FPA_GE;
    enum Z3_OP_FPA_IS_NAN = _Anonymous_5.Z3_OP_FPA_IS_NAN;
    enum Z3_OP_FPA_IS_INF = _Anonymous_5.Z3_OP_FPA_IS_INF;
    enum Z3_OP_FPA_IS_ZERO = _Anonymous_5.Z3_OP_FPA_IS_ZERO;
    enum Z3_OP_FPA_IS_NORMAL = _Anonymous_5.Z3_OP_FPA_IS_NORMAL;
    enum Z3_OP_FPA_IS_SUBNORMAL = _Anonymous_5.Z3_OP_FPA_IS_SUBNORMAL;
    enum Z3_OP_FPA_IS_NEGATIVE = _Anonymous_5.Z3_OP_FPA_IS_NEGATIVE;
    enum Z3_OP_FPA_IS_POSITIVE = _Anonymous_5.Z3_OP_FPA_IS_POSITIVE;
    enum Z3_OP_FPA_FP = _Anonymous_5.Z3_OP_FPA_FP;
    enum Z3_OP_FPA_TO_FP = _Anonymous_5.Z3_OP_FPA_TO_FP;
    enum Z3_OP_FPA_TO_FP_UNSIGNED = _Anonymous_5.Z3_OP_FPA_TO_FP_UNSIGNED;
    enum Z3_OP_FPA_TO_UBV = _Anonymous_5.Z3_OP_FPA_TO_UBV;
    enum Z3_OP_FPA_TO_SBV = _Anonymous_5.Z3_OP_FPA_TO_SBV;
    enum Z3_OP_FPA_TO_REAL = _Anonymous_5.Z3_OP_FPA_TO_REAL;
    enum Z3_OP_FPA_TO_IEEE_BV = _Anonymous_5.Z3_OP_FPA_TO_IEEE_BV;
    enum Z3_OP_FPA_BVWRAP = _Anonymous_5.Z3_OP_FPA_BVWRAP;
    enum Z3_OP_FPA_BV2RM = _Anonymous_5.Z3_OP_FPA_BV2RM;
    enum Z3_OP_INTERNAL = _Anonymous_5.Z3_OP_INTERNAL;
    enum Z3_OP_UNINTERPRETED = _Anonymous_5.Z3_OP_UNINTERPRETED;
    alias Z3_param_kind = _Anonymous_6;
    enum _Anonymous_6
    {
        Z3_PK_UINT = 0,
        Z3_PK_BOOL = 1,
        Z3_PK_DOUBLE = 2,
        Z3_PK_SYMBOL = 3,
        Z3_PK_STRING = 4,
        Z3_PK_OTHER = 5,
        Z3_PK_INVALID = 6,
    }
    enum Z3_PK_UINT = _Anonymous_6.Z3_PK_UINT;
    enum Z3_PK_BOOL = _Anonymous_6.Z3_PK_BOOL;
    enum Z3_PK_DOUBLE = _Anonymous_6.Z3_PK_DOUBLE;
    enum Z3_PK_SYMBOL = _Anonymous_6.Z3_PK_SYMBOL;
    enum Z3_PK_STRING = _Anonymous_6.Z3_PK_STRING;
    enum Z3_PK_OTHER = _Anonymous_6.Z3_PK_OTHER;
    enum Z3_PK_INVALID = _Anonymous_6.Z3_PK_INVALID;
    alias Z3_ast_print_mode = _Anonymous_7;
    enum _Anonymous_7
    {
        Z3_PRINT_SMTLIB_FULL = 0,
        Z3_PRINT_LOW_LEVEL = 1,
        Z3_PRINT_SMTLIB2_COMPLIANT = 2,
    }
    enum Z3_PRINT_SMTLIB_FULL = _Anonymous_7.Z3_PRINT_SMTLIB_FULL;
    enum Z3_PRINT_LOW_LEVEL = _Anonymous_7.Z3_PRINT_LOW_LEVEL;
    enum Z3_PRINT_SMTLIB2_COMPLIANT = _Anonymous_7.Z3_PRINT_SMTLIB2_COMPLIANT;
    alias Z3_error_code = _Anonymous_8;
    enum _Anonymous_8
    {
        Z3_OK = 0,
        Z3_SORT_ERROR = 1,
        Z3_IOB = 2,
        Z3_INVALID_ARG = 3,
        Z3_PARSER_ERROR = 4,
        Z3_NO_PARSER = 5,
        Z3_INVALID_PATTERN = 6,
        Z3_MEMOUT_FAIL = 7,
        Z3_FILE_ACCESS_ERROR = 8,
        Z3_INTERNAL_FATAL = 9,
        Z3_INVALID_USAGE = 10,
        Z3_DEC_REF_ERROR = 11,
        Z3_EXCEPTION = 12,
    }
    enum Z3_OK = _Anonymous_8.Z3_OK;
    enum Z3_SORT_ERROR = _Anonymous_8.Z3_SORT_ERROR;
    enum Z3_IOB = _Anonymous_8.Z3_IOB;
    enum Z3_INVALID_ARG = _Anonymous_8.Z3_INVALID_ARG;
    enum Z3_PARSER_ERROR = _Anonymous_8.Z3_PARSER_ERROR;
    enum Z3_NO_PARSER = _Anonymous_8.Z3_NO_PARSER;
    enum Z3_INVALID_PATTERN = _Anonymous_8.Z3_INVALID_PATTERN;
    enum Z3_MEMOUT_FAIL = _Anonymous_8.Z3_MEMOUT_FAIL;
    enum Z3_FILE_ACCESS_ERROR = _Anonymous_8.Z3_FILE_ACCESS_ERROR;
    enum Z3_INTERNAL_FATAL = _Anonymous_8.Z3_INTERNAL_FATAL;
    enum Z3_INVALID_USAGE = _Anonymous_8.Z3_INVALID_USAGE;
    enum Z3_DEC_REF_ERROR = _Anonymous_8.Z3_DEC_REF_ERROR;
    enum Z3_EXCEPTION = _Anonymous_8.Z3_EXCEPTION;
    alias Z3_error_handler = void function(_Z3_context*, Z3_error_code);
    alias Z3_goal_prec = _Anonymous_9;
    enum _Anonymous_9
    {
        Z3_GOAL_PRECISE = 0,
        Z3_GOAL_UNDER = 1,
        Z3_GOAL_OVER = 2,
        Z3_GOAL_UNDER_OVER = 3,
    }
    enum Z3_GOAL_PRECISE = _Anonymous_9.Z3_GOAL_PRECISE;
    enum Z3_GOAL_UNDER = _Anonymous_9.Z3_GOAL_UNDER;
    enum Z3_GOAL_OVER = _Anonymous_9.Z3_GOAL_OVER;
    enum Z3_GOAL_UNDER_OVER = _Anonymous_9.Z3_GOAL_UNDER_OVER;
    void Z3_global_param_set(const(char)*, const(char)*) @nogc nothrow;
    void Z3_global_param_reset_all() @nogc nothrow;
    bool Z3_global_param_get(const(char)*, const(char)**) @nogc nothrow;
    _Z3_config* Z3_mk_config() @nogc nothrow;
    void Z3_del_config(_Z3_config*) @nogc nothrow;
    void Z3_set_param_value(_Z3_config*, const(char)*, const(char)*) @nogc nothrow;
    _Z3_context* Z3_mk_context(_Z3_config*) @nogc nothrow;
    _Z3_context* Z3_mk_context_rc(_Z3_config*) @nogc nothrow;
    void Z3_del_context(_Z3_context*) @nogc nothrow;
    void Z3_inc_ref(_Z3_context*, _Z3_ast*) @nogc nothrow;
    void Z3_dec_ref(_Z3_context*, _Z3_ast*) @nogc nothrow;
    void Z3_update_param_value(_Z3_context*, const(char)*, const(char)*) @nogc nothrow;
    void Z3_interrupt(_Z3_context*) @nogc nothrow;
    _Z3_params* Z3_mk_params(_Z3_context*) @nogc nothrow;
    void Z3_params_inc_ref(_Z3_context*, _Z3_params*) @nogc nothrow;
    void Z3_params_dec_ref(_Z3_context*, _Z3_params*) @nogc nothrow;
    void Z3_params_set_bool(_Z3_context*, _Z3_params*, _Z3_symbol*, bool) @nogc nothrow;
    void Z3_params_set_uint(_Z3_context*, _Z3_params*, _Z3_symbol*, uint) @nogc nothrow;
    void Z3_params_set_double(_Z3_context*, _Z3_params*, _Z3_symbol*, double) @nogc nothrow;
    void Z3_params_set_symbol(_Z3_context*, _Z3_params*, _Z3_symbol*, _Z3_symbol*) @nogc nothrow;
    const(char)* Z3_params_to_string(_Z3_context*, _Z3_params*) @nogc nothrow;
    void Z3_params_validate(_Z3_context*, _Z3_params*, _Z3_param_descrs*) @nogc nothrow;
    void Z3_param_descrs_inc_ref(_Z3_context*, _Z3_param_descrs*) @nogc nothrow;
    void Z3_param_descrs_dec_ref(_Z3_context*, _Z3_param_descrs*) @nogc nothrow;
    Z3_param_kind Z3_param_descrs_get_kind(_Z3_context*, _Z3_param_descrs*, _Z3_symbol*) @nogc nothrow;
    uint Z3_param_descrs_size(_Z3_context*, _Z3_param_descrs*) @nogc nothrow;
    _Z3_symbol* Z3_param_descrs_get_name(_Z3_context*, _Z3_param_descrs*, uint) @nogc nothrow;
    const(char)* Z3_param_descrs_get_documentation(_Z3_context*, _Z3_param_descrs*, _Z3_symbol*) @nogc nothrow;
    const(char)* Z3_param_descrs_to_string(_Z3_context*, _Z3_param_descrs*) @nogc nothrow;
    _Z3_symbol* Z3_mk_int_symbol(_Z3_context*, int) @nogc nothrow;
    _Z3_symbol* Z3_mk_string_symbol(_Z3_context*, const(char)*) @nogc nothrow;
    _Z3_sort* Z3_mk_uninterpreted_sort(_Z3_context*, _Z3_symbol*) @nogc nothrow;
    _Z3_sort* Z3_mk_bool_sort(_Z3_context*) @nogc nothrow;
    _Z3_sort* Z3_mk_int_sort(_Z3_context*) @nogc nothrow;
    _Z3_sort* Z3_mk_real_sort(_Z3_context*) @nogc nothrow;
    _Z3_sort* Z3_mk_bv_sort(_Z3_context*, uint) @nogc nothrow;
    _Z3_sort* Z3_mk_finite_domain_sort(_Z3_context*, _Z3_symbol*, c_ulong) @nogc nothrow;
    _Z3_sort* Z3_mk_array_sort(_Z3_context*, _Z3_sort*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_mk_array_sort_n(_Z3_context*, uint, const(_Z3_sort*)*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_mk_tuple_sort(_Z3_context*, _Z3_symbol*, uint, const(_Z3_symbol*)*, const(_Z3_sort*)*, _Z3_func_decl**, _Z3_func_decl**) @nogc nothrow;
    _Z3_sort* Z3_mk_enumeration_sort(_Z3_context*, _Z3_symbol*, uint, const(_Z3_symbol*)*, _Z3_func_decl**, _Z3_func_decl**) @nogc nothrow;
    _Z3_sort* Z3_mk_list_sort(_Z3_context*, _Z3_symbol*, _Z3_sort*, _Z3_func_decl**, _Z3_func_decl**, _Z3_func_decl**, _Z3_func_decl**, _Z3_func_decl**, _Z3_func_decl**) @nogc nothrow;
    _Z3_constructor* Z3_mk_constructor(_Z3_context*, _Z3_symbol*, _Z3_symbol*, uint, const(_Z3_symbol*)*, const(_Z3_sort*)*, uint*) @nogc nothrow;
    void Z3_del_constructor(_Z3_context*, _Z3_constructor*) @nogc nothrow;
    _Z3_sort* Z3_mk_datatype(_Z3_context*, _Z3_symbol*, uint, _Z3_constructor**) @nogc nothrow;
    _Z3_constructor_list* Z3_mk_constructor_list(_Z3_context*, uint, const(_Z3_constructor*)*) @nogc nothrow;
    void Z3_del_constructor_list(_Z3_context*, _Z3_constructor_list*) @nogc nothrow;
    void Z3_mk_datatypes(_Z3_context*, uint, const(_Z3_symbol*)*, _Z3_sort**, _Z3_constructor_list**) @nogc nothrow;
    void Z3_query_constructor(_Z3_context*, _Z3_constructor*, uint, _Z3_func_decl**, _Z3_func_decl**, _Z3_func_decl**) @nogc nothrow;
    _Z3_func_decl* Z3_mk_func_decl(_Z3_context*, _Z3_symbol*, uint, const(_Z3_sort*)*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_app(_Z3_context*, _Z3_func_decl*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_const(_Z3_context*, _Z3_symbol*, _Z3_sort*) @nogc nothrow;
    _Z3_func_decl* Z3_mk_fresh_func_decl(_Z3_context*, const(char)*, uint, const(_Z3_sort*)*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_fresh_const(_Z3_context*, const(char)*, _Z3_sort*) @nogc nothrow;
    _Z3_func_decl* Z3_mk_rec_func_decl(_Z3_context*, _Z3_symbol*, uint, const(_Z3_sort*)*, _Z3_sort*) @nogc nothrow;
    void Z3_add_rec_def(_Z3_context*, _Z3_func_decl*, uint, _Z3_ast**, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_true(_Z3_context*) @nogc nothrow;
    _Z3_ast* Z3_mk_false(_Z3_context*) @nogc nothrow;
    _Z3_ast* Z3_mk_eq(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_distinct(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_not(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_ite(_Z3_context*, _Z3_ast*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_iff(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_implies(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_xor(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_and(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_or(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_add(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_mul(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_sub(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_unary_minus(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_div(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_mod(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_rem(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_power(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_lt(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_le(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_gt(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_ge(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_divides(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_int2real(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_real2int(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_is_int(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvnot(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvredand(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvredor(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvand(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvor(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvxor(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvnand(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvnor(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvxnor(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvneg(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvadd(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsub(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvmul(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvudiv(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsdiv(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvurem(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsrem(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsmod(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvult(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvslt(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvule(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsle(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvuge(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsge(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvugt(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsgt(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_concat(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_extract(_Z3_context*, uint, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_sign_ext(_Z3_context*, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_zero_ext(_Z3_context*, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_repeat(_Z3_context*, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvshl(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvlshr(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvashr(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_rotate_left(_Z3_context*, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_rotate_right(_Z3_context*, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_ext_rotate_left(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_ext_rotate_right(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_int2bv(_Z3_context*, uint, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bv2int(_Z3_context*, _Z3_ast*, bool) @nogc nothrow;
    _Z3_ast* Z3_mk_bvadd_no_overflow(_Z3_context*, _Z3_ast*, _Z3_ast*, bool) @nogc nothrow;
    _Z3_ast* Z3_mk_bvadd_no_underflow(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsub_no_overflow(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsub_no_underflow(_Z3_context*, _Z3_ast*, _Z3_ast*, bool) @nogc nothrow;
    _Z3_ast* Z3_mk_bvsdiv_no_overflow(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvneg_no_overflow(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_bvmul_no_overflow(_Z3_context*, _Z3_ast*, _Z3_ast*, bool) @nogc nothrow;
    _Z3_ast* Z3_mk_bvmul_no_underflow(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_select(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_select_n(_Z3_context*, _Z3_ast*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_store(_Z3_context*, _Z3_ast*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_store_n(_Z3_context*, _Z3_ast*, uint, const(_Z3_ast*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_const_array(_Z3_context*, _Z3_sort*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_map(_Z3_context*, _Z3_func_decl*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_array_default(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_as_array(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_has_size(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_sort* Z3_mk_set_sort(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_empty_set(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_full_set(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_add(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_del(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_union(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_intersect(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_difference(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_complement(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_member(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_set_subset(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_array_ext(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_numeral(_Z3_context*, const(char)*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_real(_Z3_context*, int, int) @nogc nothrow;
    _Z3_ast* Z3_mk_int(_Z3_context*, int, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_unsigned_int(_Z3_context*, uint, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_int64(_Z3_context*, c_long, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_unsigned_int64(_Z3_context*, c_ulong, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_bv_numeral(_Z3_context*, uint, const(bool)*) @nogc nothrow;
    _Z3_sort* Z3_mk_seq_sort(_Z3_context*, _Z3_sort*) @nogc nothrow;
    bool Z3_is_seq_sort(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_get_seq_sort_basis(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_mk_re_sort(_Z3_context*, _Z3_sort*) @nogc nothrow;
    bool Z3_is_re_sort(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_get_re_sort_basis(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_mk_string_sort(_Z3_context*) @nogc nothrow;
    bool Z3_is_string_sort(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_string(_Z3_context*, const(char)*) @nogc nothrow;
    _Z3_ast* Z3_mk_lstring(_Z3_context*, uint, const(char)*) @nogc nothrow;
    bool Z3_is_string(_Z3_context*, _Z3_ast*) @nogc nothrow;
    const(char)* Z3_get_string(_Z3_context*, _Z3_ast*) @nogc nothrow;
    const(char)* Z3_get_lstring(_Z3_context*, _Z3_ast*, uint*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_empty(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_unit(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_concat(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_prefix(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_suffix(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_contains(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_str_lt(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_str_le(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_extract(_Z3_context*, _Z3_ast*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_replace(_Z3_context*, _Z3_ast*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_at(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_nth(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_length(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_index(_Z3_context*, _Z3_ast*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_last_index(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_str_to_int(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_int_to_str(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_to_re(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_seq_in_re(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_plus(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_star(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_option(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_union(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_concat(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_range(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_loop(_Z3_context*, _Z3_ast*, uint, uint) @nogc nothrow;
    _Z3_ast* Z3_mk_re_intersect(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_complement(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_empty(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_re_full(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_func_decl* Z3_mk_linear_order(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_mk_partial_order(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_mk_piecewise_linear_order(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_mk_tree_order(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_mk_transitive_closure(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    _Z3_pattern* Z3_mk_pattern(_Z3_context*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_mk_bound(_Z3_context*, uint, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_mk_forall(_Z3_context*, uint, uint, const(_Z3_pattern*)*, uint, const(_Z3_sort*)*, const(_Z3_symbol*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_exists(_Z3_context*, uint, uint, const(_Z3_pattern*)*, uint, const(_Z3_sort*)*, const(_Z3_symbol*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_quantifier(_Z3_context*, bool, uint, uint, const(_Z3_pattern*)*, uint, const(_Z3_sort*)*, const(_Z3_symbol*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_quantifier_ex(_Z3_context*, bool, uint, _Z3_symbol*, _Z3_symbol*, uint, const(_Z3_pattern*)*, uint, const(_Z3_ast*)*, uint, const(_Z3_sort*)*, const(_Z3_symbol*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_forall_const(_Z3_context*, uint, uint, const(_Z3_app*)*, uint, const(_Z3_pattern*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_exists_const(_Z3_context*, uint, uint, const(_Z3_app*)*, uint, const(_Z3_pattern*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_quantifier_const(_Z3_context*, bool, uint, uint, const(_Z3_app*)*, uint, const(_Z3_pattern*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_quantifier_const_ex(_Z3_context*, bool, uint, _Z3_symbol*, _Z3_symbol*, uint, const(_Z3_app*)*, uint, const(_Z3_pattern*)*, uint, const(_Z3_ast*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_lambda(_Z3_context*, uint, const(_Z3_sort*)*, const(_Z3_symbol*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_mk_lambda_const(_Z3_context*, uint, const(_Z3_app*)*, _Z3_ast*) @nogc nothrow;
    Z3_symbol_kind Z3_get_symbol_kind(_Z3_context*, _Z3_symbol*) @nogc nothrow;
    int Z3_get_symbol_int(_Z3_context*, _Z3_symbol*) @nogc nothrow;
    const(char)* Z3_get_symbol_string(_Z3_context*, _Z3_symbol*) @nogc nothrow;
    _Z3_symbol* Z3_get_sort_name(_Z3_context*, _Z3_sort*) @nogc nothrow;
    uint Z3_get_sort_id(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_ast* Z3_sort_to_ast(_Z3_context*, _Z3_sort*) @nogc nothrow;
    bool Z3_is_eq_sort(_Z3_context*, _Z3_sort*, _Z3_sort*) @nogc nothrow;
    Z3_sort_kind Z3_get_sort_kind(_Z3_context*, _Z3_sort*) @nogc nothrow;
    uint Z3_get_bv_sort_size(_Z3_context*, _Z3_sort*) @nogc nothrow;
    bool Z3_get_finite_domain_sort_size(_Z3_context*, _Z3_sort*, c_ulong*) @nogc nothrow;
    _Z3_sort* Z3_get_array_sort_domain(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_get_array_sort_range(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_func_decl* Z3_get_tuple_sort_mk_decl(_Z3_context*, _Z3_sort*) @nogc nothrow;
    uint Z3_get_tuple_sort_num_fields(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_func_decl* Z3_get_tuple_sort_field_decl(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    uint Z3_get_datatype_sort_num_constructors(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_func_decl* Z3_get_datatype_sort_constructor(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_get_datatype_sort_recognizer(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_get_datatype_sort_constructor_accessor(_Z3_context*, _Z3_sort*, uint, uint) @nogc nothrow;
    _Z3_ast* Z3_datatype_update_field(_Z3_context*, _Z3_func_decl*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    uint Z3_get_relation_arity(_Z3_context*, _Z3_sort*) @nogc nothrow;
    _Z3_sort* Z3_get_relation_column(_Z3_context*, _Z3_sort*, uint) @nogc nothrow;
    _Z3_ast* Z3_mk_atmost(_Z3_context*, uint, const(_Z3_ast*)*, uint) @nogc nothrow;
    _Z3_ast* Z3_mk_atleast(_Z3_context*, uint, const(_Z3_ast*)*, uint) @nogc nothrow;
    _Z3_ast* Z3_mk_pble(_Z3_context*, uint, const(_Z3_ast*)*, const(int)*, int) @nogc nothrow;
    _Z3_ast* Z3_mk_pbge(_Z3_context*, uint, const(_Z3_ast*)*, const(int)*, int) @nogc nothrow;
    _Z3_ast* Z3_mk_pbeq(_Z3_context*, uint, const(_Z3_ast*)*, const(int)*, int) @nogc nothrow;
    _Z3_ast* Z3_func_decl_to_ast(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    bool Z3_is_eq_func_decl(_Z3_context*, _Z3_func_decl*, _Z3_func_decl*) @nogc nothrow;
    uint Z3_get_func_decl_id(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    _Z3_symbol* Z3_get_decl_name(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    Z3_decl_kind Z3_get_decl_kind(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    uint Z3_get_domain_size(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    uint Z3_get_arity(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    _Z3_sort* Z3_get_domain(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    _Z3_sort* Z3_get_range(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    uint Z3_get_decl_num_parameters(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    Z3_parameter_kind Z3_get_decl_parameter_kind(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    int Z3_get_decl_int_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    double Z3_get_decl_double_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    _Z3_symbol* Z3_get_decl_symbol_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    _Z3_sort* Z3_get_decl_sort_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    _Z3_ast* Z3_get_decl_ast_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    _Z3_func_decl* Z3_get_decl_func_decl_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    const(char)* Z3_get_decl_rational_parameter(_Z3_context*, _Z3_func_decl*, uint) @nogc nothrow;
    _Z3_ast* Z3_app_to_ast(_Z3_context*, _Z3_app*) @nogc nothrow;
    _Z3_func_decl* Z3_get_app_decl(_Z3_context*, _Z3_app*) @nogc nothrow;
    uint Z3_get_app_num_args(_Z3_context*, _Z3_app*) @nogc nothrow;
    _Z3_ast* Z3_get_app_arg(_Z3_context*, _Z3_app*, uint) @nogc nothrow;
    bool Z3_is_eq_ast(_Z3_context*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    uint Z3_get_ast_id(_Z3_context*, _Z3_ast*) @nogc nothrow;
    uint Z3_get_ast_hash(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_sort* Z3_get_sort(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_well_sorted(_Z3_context*, _Z3_ast*) @nogc nothrow;
    Z3_lbool Z3_get_bool_value(_Z3_context*, _Z3_ast*) @nogc nothrow;
    Z3_ast_kind Z3_get_ast_kind(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_app(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_numeral_ast(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_algebraic_number(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_app* Z3_to_app(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_func_decl* Z3_to_func_decl(_Z3_context*, _Z3_ast*) @nogc nothrow;
    const(char)* Z3_get_numeral_string(_Z3_context*, _Z3_ast*) @nogc nothrow;
    const(char)* Z3_get_numeral_decimal_string(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    double Z3_get_numeral_double(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_get_numerator(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_get_denominator(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_get_numeral_small(_Z3_context*, _Z3_ast*, c_long*, c_long*) @nogc nothrow;
    bool Z3_get_numeral_int(_Z3_context*, _Z3_ast*, int*) @nogc nothrow;
    bool Z3_get_numeral_uint(_Z3_context*, _Z3_ast*, uint*) @nogc nothrow;
    bool Z3_get_numeral_uint64(_Z3_context*, _Z3_ast*, c_ulong*) @nogc nothrow;
    bool Z3_get_numeral_int64(_Z3_context*, _Z3_ast*, c_long*) @nogc nothrow;
    bool Z3_get_numeral_rational_int64(_Z3_context*, _Z3_ast*, c_long*, c_long*) @nogc nothrow;
    _Z3_ast* Z3_get_algebraic_number_lower(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    _Z3_ast* Z3_get_algebraic_number_upper(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    _Z3_ast* Z3_pattern_to_ast(_Z3_context*, _Z3_pattern*) @nogc nothrow;
    uint Z3_get_pattern_num_terms(_Z3_context*, _Z3_pattern*) @nogc nothrow;
    _Z3_ast* Z3_get_pattern(_Z3_context*, _Z3_pattern*, uint) @nogc nothrow;
    uint Z3_get_index_value(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_quantifier_forall(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_quantifier_exists(_Z3_context*, _Z3_ast*) @nogc nothrow;
    bool Z3_is_lambda(_Z3_context*, _Z3_ast*) @nogc nothrow;
    uint Z3_get_quantifier_weight(_Z3_context*, _Z3_ast*) @nogc nothrow;
    uint Z3_get_quantifier_num_patterns(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_pattern* Z3_get_quantifier_pattern_ast(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    uint Z3_get_quantifier_num_no_patterns(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_get_quantifier_no_pattern_ast(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    uint Z3_get_quantifier_num_bound(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_symbol* Z3_get_quantifier_bound_name(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    _Z3_sort* Z3_get_quantifier_bound_sort(_Z3_context*, _Z3_ast*, uint) @nogc nothrow;
    _Z3_ast* Z3_get_quantifier_body(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_simplify(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_ast* Z3_simplify_ex(_Z3_context*, _Z3_ast*, _Z3_params*) @nogc nothrow;
    const(char)* Z3_simplify_get_help(_Z3_context*) @nogc nothrow;
    _Z3_param_descrs* Z3_simplify_get_param_descrs(_Z3_context*) @nogc nothrow;
    _Z3_ast* Z3_update_term(_Z3_context*, _Z3_ast*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_substitute(_Z3_context*, _Z3_ast*, uint, const(_Z3_ast*)*, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_substitute_vars(_Z3_context*, _Z3_ast*, uint, const(_Z3_ast*)*) @nogc nothrow;
    _Z3_ast* Z3_translate(_Z3_context*, _Z3_ast*, _Z3_context*) @nogc nothrow;
    _Z3_model* Z3_mk_model(_Z3_context*) @nogc nothrow;
    void Z3_model_inc_ref(_Z3_context*, _Z3_model*) @nogc nothrow;
    void Z3_model_dec_ref(_Z3_context*, _Z3_model*) @nogc nothrow;
    bool Z3_model_eval(_Z3_context*, _Z3_model*, _Z3_ast*, bool, _Z3_ast**) @nogc nothrow;
    _Z3_ast* Z3_model_get_const_interp(_Z3_context*, _Z3_model*, _Z3_func_decl*) @nogc nothrow;
    bool Z3_model_has_interp(_Z3_context*, _Z3_model*, _Z3_func_decl*) @nogc nothrow;
    _Z3_func_interp* Z3_model_get_func_interp(_Z3_context*, _Z3_model*, _Z3_func_decl*) @nogc nothrow;
    uint Z3_model_get_num_consts(_Z3_context*, _Z3_model*) @nogc nothrow;
    _Z3_func_decl* Z3_model_get_const_decl(_Z3_context*, _Z3_model*, uint) @nogc nothrow;
    uint Z3_model_get_num_funcs(_Z3_context*, _Z3_model*) @nogc nothrow;
    _Z3_func_decl* Z3_model_get_func_decl(_Z3_context*, _Z3_model*, uint) @nogc nothrow;
    uint Z3_model_get_num_sorts(_Z3_context*, _Z3_model*) @nogc nothrow;
    _Z3_sort* Z3_model_get_sort(_Z3_context*, _Z3_model*, uint) @nogc nothrow;
    _Z3_ast_vector* Z3_model_get_sort_universe(_Z3_context*, _Z3_model*, _Z3_sort*) @nogc nothrow;
    _Z3_model* Z3_model_translate(_Z3_context*, _Z3_model*, _Z3_context*) @nogc nothrow;
    bool Z3_is_as_array(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_func_decl* Z3_get_as_array_func_decl(_Z3_context*, _Z3_ast*) @nogc nothrow;
    _Z3_func_interp* Z3_add_func_interp(_Z3_context*, _Z3_model*, _Z3_func_decl*, _Z3_ast*) @nogc nothrow;
    void Z3_add_const_interp(_Z3_context*, _Z3_model*, _Z3_func_decl*, _Z3_ast*) @nogc nothrow;
    void Z3_func_interp_inc_ref(_Z3_context*, _Z3_func_interp*) @nogc nothrow;
    void Z3_func_interp_dec_ref(_Z3_context*, _Z3_func_interp*) @nogc nothrow;
    uint Z3_func_interp_get_num_entries(_Z3_context*, _Z3_func_interp*) @nogc nothrow;
    _Z3_func_entry* Z3_func_interp_get_entry(_Z3_context*, _Z3_func_interp*, uint) @nogc nothrow;
    _Z3_ast* Z3_func_interp_get_else(_Z3_context*, _Z3_func_interp*) @nogc nothrow;
    void Z3_func_interp_set_else(_Z3_context*, _Z3_func_interp*, _Z3_ast*) @nogc nothrow;
    uint Z3_func_interp_get_arity(_Z3_context*, _Z3_func_interp*) @nogc nothrow;
    void Z3_func_interp_add_entry(_Z3_context*, _Z3_func_interp*, _Z3_ast_vector*, _Z3_ast*) @nogc nothrow;
    void Z3_func_entry_inc_ref(_Z3_context*, _Z3_func_entry*) @nogc nothrow;
    void Z3_func_entry_dec_ref(_Z3_context*, _Z3_func_entry*) @nogc nothrow;
    _Z3_ast* Z3_func_entry_get_value(_Z3_context*, _Z3_func_entry*) @nogc nothrow;
    uint Z3_func_entry_get_num_args(_Z3_context*, _Z3_func_entry*) @nogc nothrow;
    _Z3_ast* Z3_func_entry_get_arg(_Z3_context*, _Z3_func_entry*, uint) @nogc nothrow;
    bool Z3_open_log(const(char)*) @nogc nothrow;
    void Z3_append_log(const(char)*) @nogc nothrow;
    void Z3_close_log() @nogc nothrow;
    void Z3_toggle_warning_messages(bool) @nogc nothrow;
    void Z3_set_ast_print_mode(_Z3_context*, Z3_ast_print_mode) @nogc nothrow;
    const(char)* Z3_ast_to_string(_Z3_context*, _Z3_ast*) @nogc nothrow;
    const(char)* Z3_pattern_to_string(_Z3_context*, _Z3_pattern*) @nogc nothrow;
    const(char)* Z3_sort_to_string(_Z3_context*, _Z3_sort*) @nogc nothrow;
    const(char)* Z3_func_decl_to_string(_Z3_context*, _Z3_func_decl*) @nogc nothrow;
    const(char)* Z3_model_to_string(_Z3_context*, _Z3_model*) @nogc nothrow;
    const(char)* Z3_benchmark_to_smtlib_string(_Z3_context*, const(char)*, const(char)*, const(char)*, const(char)*, uint, const(_Z3_ast*)*, _Z3_ast*) @nogc nothrow;
    _Z3_ast_vector* Z3_parse_smtlib2_string(_Z3_context*, const(char)*, uint, const(_Z3_symbol*)*, const(_Z3_sort*)*, uint, const(_Z3_symbol*)*, const(_Z3_func_decl*)*) @nogc nothrow;
    _Z3_ast_vector* Z3_parse_smtlib2_file(_Z3_context*, const(char)*, uint, const(_Z3_symbol*)*, const(_Z3_sort*)*, uint, const(_Z3_symbol*)*, const(_Z3_func_decl*)*) @nogc nothrow;
    const(char)* Z3_eval_smtlib2_string(_Z3_context*, const(char)*) @nogc nothrow;
    Z3_error_code Z3_get_error_code(_Z3_context*) @nogc nothrow;
    void Z3_set_error_handler(_Z3_context*, void function(_Z3_context*, Z3_error_code)) @nogc nothrow;
    void Z3_set_error(_Z3_context*, Z3_error_code) @nogc nothrow;
    const(char)* Z3_get_error_msg(_Z3_context*, Z3_error_code) @nogc nothrow;
    void Z3_get_version(uint*, uint*, uint*, uint*) @nogc nothrow;
    const(char)* Z3_get_full_version() @nogc nothrow;
    void Z3_enable_trace(const(char)*) @nogc nothrow;
    void Z3_disable_trace(const(char)*) @nogc nothrow;
    void Z3_reset_memory() @nogc nothrow;
    void Z3_finalize_memory() @nogc nothrow;
    _Z3_goal* Z3_mk_goal(_Z3_context*, bool, bool, bool) @nogc nothrow;
    void Z3_goal_inc_ref(_Z3_context*, _Z3_goal*) @nogc nothrow;
    void Z3_goal_dec_ref(_Z3_context*, _Z3_goal*) @nogc nothrow;
    Z3_goal_prec Z3_goal_precision(_Z3_context*, _Z3_goal*) @nogc nothrow;
    void Z3_goal_assert(_Z3_context*, _Z3_goal*, _Z3_ast*) @nogc nothrow;
    bool Z3_goal_inconsistent(_Z3_context*, _Z3_goal*) @nogc nothrow;
    uint Z3_goal_depth(_Z3_context*, _Z3_goal*) @nogc nothrow;
    void Z3_goal_reset(_Z3_context*, _Z3_goal*) @nogc nothrow;
    uint Z3_goal_size(_Z3_context*, _Z3_goal*) @nogc nothrow;
    _Z3_ast* Z3_goal_formula(_Z3_context*, _Z3_goal*, uint) @nogc nothrow;
    uint Z3_goal_num_exprs(_Z3_context*, _Z3_goal*) @nogc nothrow;
    bool Z3_goal_is_decided_sat(_Z3_context*, _Z3_goal*) @nogc nothrow;
    bool Z3_goal_is_decided_unsat(_Z3_context*, _Z3_goal*) @nogc nothrow;
    _Z3_goal* Z3_goal_translate(_Z3_context*, _Z3_goal*, _Z3_context*) @nogc nothrow;
    _Z3_model* Z3_goal_convert_model(_Z3_context*, _Z3_goal*, _Z3_model*) @nogc nothrow;
    const(char)* Z3_goal_to_string(_Z3_context*, _Z3_goal*) @nogc nothrow;
    const(char)* Z3_goal_to_dimacs_string(_Z3_context*, _Z3_goal*) @nogc nothrow;
    _Z3_tactic* Z3_mk_tactic(_Z3_context*, const(char)*) @nogc nothrow;
    void Z3_tactic_inc_ref(_Z3_context*, _Z3_tactic*) @nogc nothrow;
    void Z3_tactic_dec_ref(_Z3_context*, _Z3_tactic*) @nogc nothrow;
    _Z3_probe* Z3_mk_probe(_Z3_context*, const(char)*) @nogc nothrow;
    void Z3_probe_inc_ref(_Z3_context*, _Z3_probe*) @nogc nothrow;
    void Z3_probe_dec_ref(_Z3_context*, _Z3_probe*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_and_then(_Z3_context*, _Z3_tactic*, _Z3_tactic*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_or_else(_Z3_context*, _Z3_tactic*, _Z3_tactic*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_par_or(_Z3_context*, uint, const(_Z3_tactic*)*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_par_and_then(_Z3_context*, _Z3_tactic*, _Z3_tactic*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_try_for(_Z3_context*, _Z3_tactic*, uint) @nogc nothrow;
    _Z3_tactic* Z3_tactic_when(_Z3_context*, _Z3_probe*, _Z3_tactic*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_cond(_Z3_context*, _Z3_probe*, _Z3_tactic*, _Z3_tactic*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_repeat(_Z3_context*, _Z3_tactic*, uint) @nogc nothrow;
    _Z3_tactic* Z3_tactic_skip(_Z3_context*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_fail(_Z3_context*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_fail_if(_Z3_context*, _Z3_probe*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_fail_if_not_decided(_Z3_context*) @nogc nothrow;
    _Z3_tactic* Z3_tactic_using_params(_Z3_context*, _Z3_tactic*, _Z3_params*) @nogc nothrow;
    _Z3_probe* Z3_probe_const(_Z3_context*, double) @nogc nothrow;
    _Z3_probe* Z3_probe_lt(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_gt(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_le(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_ge(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_eq(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_and(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_or(_Z3_context*, _Z3_probe*, _Z3_probe*) @nogc nothrow;
    _Z3_probe* Z3_probe_not(_Z3_context*, _Z3_probe*) @nogc nothrow;
    uint Z3_get_num_tactics(_Z3_context*) @nogc nothrow;
    const(char)* Z3_get_tactic_name(_Z3_context*, uint) @nogc nothrow;
    uint Z3_get_num_probes(_Z3_context*) @nogc nothrow;
    const(char)* Z3_get_probe_name(_Z3_context*, uint) @nogc nothrow;
    const(char)* Z3_tactic_get_help(_Z3_context*, _Z3_tactic*) @nogc nothrow;
    _Z3_param_descrs* Z3_tactic_get_param_descrs(_Z3_context*, _Z3_tactic*) @nogc nothrow;
    const(char)* Z3_tactic_get_descr(_Z3_context*, const(char)*) @nogc nothrow;
    const(char)* Z3_probe_get_descr(_Z3_context*, const(char)*) @nogc nothrow;
    double Z3_probe_apply(_Z3_context*, _Z3_probe*, _Z3_goal*) @nogc nothrow;
    _Z3_apply_result* Z3_tactic_apply(_Z3_context*, _Z3_tactic*, _Z3_goal*) @nogc nothrow;
    _Z3_apply_result* Z3_tactic_apply_ex(_Z3_context*, _Z3_tactic*, _Z3_goal*, _Z3_params*) @nogc nothrow;
    void Z3_apply_result_inc_ref(_Z3_context*, _Z3_apply_result*) @nogc nothrow;
    void Z3_apply_result_dec_ref(_Z3_context*, _Z3_apply_result*) @nogc nothrow;
    const(char)* Z3_apply_result_to_string(_Z3_context*, _Z3_apply_result*) @nogc nothrow;
    uint Z3_apply_result_get_num_subgoals(_Z3_context*, _Z3_apply_result*) @nogc nothrow;
    _Z3_goal* Z3_apply_result_get_subgoal(_Z3_context*, _Z3_apply_result*, uint) @nogc nothrow;
    _Z3_solver* Z3_mk_solver(_Z3_context*) @nogc nothrow;
    _Z3_solver* Z3_mk_simple_solver(_Z3_context*) @nogc nothrow;
    _Z3_solver* Z3_mk_solver_for_logic(_Z3_context*, _Z3_symbol*) @nogc nothrow;
    _Z3_solver* Z3_mk_solver_from_tactic(_Z3_context*, _Z3_tactic*) @nogc nothrow;
    _Z3_solver* Z3_solver_translate(_Z3_context*, _Z3_solver*, _Z3_context*) @nogc nothrow;
    void Z3_solver_import_model_converter(_Z3_context*, _Z3_solver*, _Z3_solver*) @nogc nothrow;
    const(char)* Z3_solver_get_help(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_param_descrs* Z3_solver_get_param_descrs(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_set_params(_Z3_context*, _Z3_solver*, _Z3_params*) @nogc nothrow;
    void Z3_solver_inc_ref(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_dec_ref(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_interrupt(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_push(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_pop(_Z3_context*, _Z3_solver*, uint) @nogc nothrow;
    void Z3_solver_reset(_Z3_context*, _Z3_solver*) @nogc nothrow;
    uint Z3_solver_get_num_scopes(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_assert(_Z3_context*, _Z3_solver*, _Z3_ast*) @nogc nothrow;
    void Z3_solver_assert_and_track(_Z3_context*, _Z3_solver*, _Z3_ast*, _Z3_ast*) @nogc nothrow;
    void Z3_solver_from_file(_Z3_context*, _Z3_solver*, const(char)*) @nogc nothrow;
    void Z3_solver_from_string(_Z3_context*, _Z3_solver*, const(char)*) @nogc nothrow;
    _Z3_ast_vector* Z3_solver_get_assertions(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_ast_vector* Z3_solver_get_units(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_ast_vector* Z3_solver_get_trail(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_ast_vector* Z3_solver_get_non_units(_Z3_context*, _Z3_solver*) @nogc nothrow;
    void Z3_solver_get_levels(_Z3_context*, _Z3_solver*, _Z3_ast_vector*, uint, uint*) @nogc nothrow;
    Z3_lbool Z3_solver_check(_Z3_context*, _Z3_solver*) @nogc nothrow;
    Z3_lbool Z3_solver_check_assumptions(_Z3_context*, _Z3_solver*, uint, const(_Z3_ast*)*) @nogc nothrow;
    Z3_lbool Z3_get_implied_equalities(_Z3_context*, _Z3_solver*, uint, const(_Z3_ast*)*, uint*) @nogc nothrow;
    Z3_lbool Z3_solver_get_consequences(_Z3_context*, _Z3_solver*, _Z3_ast_vector*, _Z3_ast_vector*, _Z3_ast_vector*) @nogc nothrow;
    _Z3_ast_vector* Z3_solver_cube(_Z3_context*, _Z3_solver*, _Z3_ast_vector*, uint) @nogc nothrow;
    _Z3_model* Z3_solver_get_model(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_ast* Z3_solver_get_proof(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_ast_vector* Z3_solver_get_unsat_core(_Z3_context*, _Z3_solver*) @nogc nothrow;
    const(char)* Z3_solver_get_reason_unknown(_Z3_context*, _Z3_solver*) @nogc nothrow;
    _Z3_stats* Z3_solver_get_statistics(_Z3_context*, _Z3_solver*) @nogc nothrow;
    const(char)* Z3_solver_to_string(_Z3_context*, _Z3_solver*) @nogc nothrow;
    const(char)* Z3_solver_to_dimacs_string(_Z3_context*, _Z3_solver*, bool) @nogc nothrow;
    const(char)* Z3_stats_to_string(_Z3_context*, _Z3_stats*) @nogc nothrow;
    void Z3_stats_inc_ref(_Z3_context*, _Z3_stats*) @nogc nothrow;



    static if(!is(typeof(Z3_FALSE))) {
        private enum enumMixinStr_Z3_FALSE = `enum Z3_FALSE = false;`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_FALSE); }))) {
            mixin(enumMixinStr_Z3_FALSE);
        }
    }




    static if(!is(typeof(Z3_TRUE))) {
        private enum enumMixinStr_Z3_TRUE = `enum Z3_TRUE = true;`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_TRUE); }))) {
            mixin(enumMixinStr_Z3_TRUE);
        }
    }




    static if(!is(typeof(Z3_func_interp_opt))) {
        private enum enumMixinStr_Z3_func_interp_opt = `enum Z3_func_interp_opt = Z3_func_interp;`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_func_interp_opt); }))) {
            mixin(enumMixinStr_Z3_func_interp_opt);
        }
    }




    static if(!is(typeof(Z3_ast_opt))) {
        private enum enumMixinStr_Z3_ast_opt = `enum Z3_ast_opt = Z3_ast;`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_ast_opt); }))) {
            mixin(enumMixinStr_Z3_ast_opt);
        }
    }




    static if(!is(typeof(Z3_sort_opt))) {
        private enum enumMixinStr_Z3_sort_opt = `enum Z3_sort_opt = Z3_sort;`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_sort_opt); }))) {
            mixin(enumMixinStr_Z3_sort_opt);
        }
    }






    static if(!is(typeof(Z3_bool_opt))) {
        private enum enumMixinStr_Z3_bool_opt = `enum Z3_bool_opt = Z3_bool;`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_bool_opt); }))) {
            mixin(enumMixinStr_Z3_bool_opt);
        }
    }




    static if(!is(typeof(Z3_API))) {
        private enum enumMixinStr_Z3_API = `enum Z3_API = __attribute__ ( ( visibility ( "default" ) ) );`;
        static if(is(typeof({ mixin(enumMixinStr_Z3_API); }))) {
            mixin(enumMixinStr_Z3_API);
        }
    }






    static if(!is(typeof(__GLIBC_USE_LIB_EXT2))) {
        private enum enumMixinStr___GLIBC_USE_LIB_EXT2 = `enum __GLIBC_USE_LIB_EXT2 = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_LIB_EXT2); }))) {
            mixin(enumMixinStr___GLIBC_USE_LIB_EXT2);
        }
    }




    static if(!is(typeof(__GLIBC_USE_IEC_60559_BFP_EXT))) {
        private enum enumMixinStr___GLIBC_USE_IEC_60559_BFP_EXT = `enum __GLIBC_USE_IEC_60559_BFP_EXT = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_IEC_60559_BFP_EXT); }))) {
            mixin(enumMixinStr___GLIBC_USE_IEC_60559_BFP_EXT);
        }
    }




    static if(!is(typeof(__GLIBC_USE_IEC_60559_BFP_EXT_C2X))) {
        private enum enumMixinStr___GLIBC_USE_IEC_60559_BFP_EXT_C2X = `enum __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_IEC_60559_BFP_EXT_C2X); }))) {
            mixin(enumMixinStr___GLIBC_USE_IEC_60559_BFP_EXT_C2X);
        }
    }




    static if(!is(typeof(__GLIBC_USE_IEC_60559_FUNCS_EXT))) {
        private enum enumMixinStr___GLIBC_USE_IEC_60559_FUNCS_EXT = `enum __GLIBC_USE_IEC_60559_FUNCS_EXT = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_IEC_60559_FUNCS_EXT); }))) {
            mixin(enumMixinStr___GLIBC_USE_IEC_60559_FUNCS_EXT);
        }
    }




    static if(!is(typeof(__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X))) {
        private enum enumMixinStr___GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = `enum __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_IEC_60559_FUNCS_EXT_C2X); }))) {
            mixin(enumMixinStr___GLIBC_USE_IEC_60559_FUNCS_EXT_C2X);
        }
    }




    static if(!is(typeof(__GLIBC_USE_IEC_60559_TYPES_EXT))) {
        private enum enumMixinStr___GLIBC_USE_IEC_60559_TYPES_EXT = `enum __GLIBC_USE_IEC_60559_TYPES_EXT = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_IEC_60559_TYPES_EXT); }))) {
            mixin(enumMixinStr___GLIBC_USE_IEC_60559_TYPES_EXT);
        }
    }




    static if(!is(typeof(__LONG_DOUBLE_USES_FLOAT128))) {
        private enum enumMixinStr___LONG_DOUBLE_USES_FLOAT128 = `enum __LONG_DOUBLE_USES_FLOAT128 = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___LONG_DOUBLE_USES_FLOAT128); }))) {
            mixin(enumMixinStr___LONG_DOUBLE_USES_FLOAT128);
        }
    }




    static if(!is(typeof(_BITS_STDINT_INTN_H))) {
        private enum enumMixinStr__BITS_STDINT_INTN_H = `enum _BITS_STDINT_INTN_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__BITS_STDINT_INTN_H); }))) {
            mixin(enumMixinStr__BITS_STDINT_INTN_H);
        }
    }




    static if(!is(typeof(_BITS_STDINT_UINTN_H))) {
        private enum enumMixinStr__BITS_STDINT_UINTN_H = `enum _BITS_STDINT_UINTN_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__BITS_STDINT_UINTN_H); }))) {
            mixin(enumMixinStr__BITS_STDINT_UINTN_H);
        }
    }




    static if(!is(typeof(_BITS_TIME64_H))) {
        private enum enumMixinStr__BITS_TIME64_H = `enum _BITS_TIME64_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__BITS_TIME64_H); }))) {
            mixin(enumMixinStr__BITS_TIME64_H);
        }
    }




    static if(!is(typeof(__TIME64_T_TYPE))) {
        private enum enumMixinStr___TIME64_T_TYPE = `enum __TIME64_T_TYPE = __TIME_T_TYPE;`;
        static if(is(typeof({ mixin(enumMixinStr___TIME64_T_TYPE); }))) {
            mixin(enumMixinStr___TIME64_T_TYPE);
        }
    }




    static if(!is(typeof(__TIMESIZE))) {
        private enum enumMixinStr___TIMESIZE = `enum __TIMESIZE = __WORDSIZE;`;
        static if(is(typeof({ mixin(enumMixinStr___TIMESIZE); }))) {
            mixin(enumMixinStr___TIMESIZE);
        }
    }




    static if(!is(typeof(_BITS_TYPES_H))) {
        private enum enumMixinStr__BITS_TYPES_H = `enum _BITS_TYPES_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__BITS_TYPES_H); }))) {
            mixin(enumMixinStr__BITS_TYPES_H);
        }
    }




    static if(!is(typeof(__S16_TYPE))) {
        private enum enumMixinStr___S16_TYPE = `enum __S16_TYPE = short int;`;
        static if(is(typeof({ mixin(enumMixinStr___S16_TYPE); }))) {
            mixin(enumMixinStr___S16_TYPE);
        }
    }




    static if(!is(typeof(__U16_TYPE))) {
        private enum enumMixinStr___U16_TYPE = `enum __U16_TYPE = unsigned short int;`;
        static if(is(typeof({ mixin(enumMixinStr___U16_TYPE); }))) {
            mixin(enumMixinStr___U16_TYPE);
        }
    }




    static if(!is(typeof(__S32_TYPE))) {
        private enum enumMixinStr___S32_TYPE = `enum __S32_TYPE = int;`;
        static if(is(typeof({ mixin(enumMixinStr___S32_TYPE); }))) {
            mixin(enumMixinStr___S32_TYPE);
        }
    }




    static if(!is(typeof(__U32_TYPE))) {
        private enum enumMixinStr___U32_TYPE = `enum __U32_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___U32_TYPE); }))) {
            mixin(enumMixinStr___U32_TYPE);
        }
    }




    static if(!is(typeof(__SLONGWORD_TYPE))) {
        private enum enumMixinStr___SLONGWORD_TYPE = `enum __SLONGWORD_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SLONGWORD_TYPE); }))) {
            mixin(enumMixinStr___SLONGWORD_TYPE);
        }
    }




    static if(!is(typeof(__ULONGWORD_TYPE))) {
        private enum enumMixinStr___ULONGWORD_TYPE = `enum __ULONGWORD_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___ULONGWORD_TYPE); }))) {
            mixin(enumMixinStr___ULONGWORD_TYPE);
        }
    }




    static if(!is(typeof(__SQUAD_TYPE))) {
        private enum enumMixinStr___SQUAD_TYPE = `enum __SQUAD_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SQUAD_TYPE); }))) {
            mixin(enumMixinStr___SQUAD_TYPE);
        }
    }




    static if(!is(typeof(__UQUAD_TYPE))) {
        private enum enumMixinStr___UQUAD_TYPE = `enum __UQUAD_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___UQUAD_TYPE); }))) {
            mixin(enumMixinStr___UQUAD_TYPE);
        }
    }




    static if(!is(typeof(__SWORD_TYPE))) {
        private enum enumMixinStr___SWORD_TYPE = `enum __SWORD_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SWORD_TYPE); }))) {
            mixin(enumMixinStr___SWORD_TYPE);
        }
    }




    static if(!is(typeof(__UWORD_TYPE))) {
        private enum enumMixinStr___UWORD_TYPE = `enum __UWORD_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___UWORD_TYPE); }))) {
            mixin(enumMixinStr___UWORD_TYPE);
        }
    }




    static if(!is(typeof(__SLONG32_TYPE))) {
        private enum enumMixinStr___SLONG32_TYPE = `enum __SLONG32_TYPE = int;`;
        static if(is(typeof({ mixin(enumMixinStr___SLONG32_TYPE); }))) {
            mixin(enumMixinStr___SLONG32_TYPE);
        }
    }




    static if(!is(typeof(__ULONG32_TYPE))) {
        private enum enumMixinStr___ULONG32_TYPE = `enum __ULONG32_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___ULONG32_TYPE); }))) {
            mixin(enumMixinStr___ULONG32_TYPE);
        }
    }




    static if(!is(typeof(__S64_TYPE))) {
        private enum enumMixinStr___S64_TYPE = `enum __S64_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___S64_TYPE); }))) {
            mixin(enumMixinStr___S64_TYPE);
        }
    }




    static if(!is(typeof(__U64_TYPE))) {
        private enum enumMixinStr___U64_TYPE = `enum __U64_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___U64_TYPE); }))) {
            mixin(enumMixinStr___U64_TYPE);
        }
    }




    static if(!is(typeof(__STD_TYPE))) {
        private enum enumMixinStr___STD_TYPE = `enum __STD_TYPE = typedef;`;
        static if(is(typeof({ mixin(enumMixinStr___STD_TYPE); }))) {
            mixin(enumMixinStr___STD_TYPE);
        }
    }




    static if(!is(typeof(_BITS_TYPESIZES_H))) {
        private enum enumMixinStr__BITS_TYPESIZES_H = `enum _BITS_TYPESIZES_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__BITS_TYPESIZES_H); }))) {
            mixin(enumMixinStr__BITS_TYPESIZES_H);
        }
    }




    static if(!is(typeof(__SYSCALL_SLONG_TYPE))) {
        private enum enumMixinStr___SYSCALL_SLONG_TYPE = `enum __SYSCALL_SLONG_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SYSCALL_SLONG_TYPE); }))) {
            mixin(enumMixinStr___SYSCALL_SLONG_TYPE);
        }
    }




    static if(!is(typeof(__SYSCALL_ULONG_TYPE))) {
        private enum enumMixinStr___SYSCALL_ULONG_TYPE = `enum __SYSCALL_ULONG_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SYSCALL_ULONG_TYPE); }))) {
            mixin(enumMixinStr___SYSCALL_ULONG_TYPE);
        }
    }




    static if(!is(typeof(__DEV_T_TYPE))) {
        private enum enumMixinStr___DEV_T_TYPE = `enum __DEV_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___DEV_T_TYPE); }))) {
            mixin(enumMixinStr___DEV_T_TYPE);
        }
    }




    static if(!is(typeof(__UID_T_TYPE))) {
        private enum enumMixinStr___UID_T_TYPE = `enum __UID_T_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___UID_T_TYPE); }))) {
            mixin(enumMixinStr___UID_T_TYPE);
        }
    }




    static if(!is(typeof(__GID_T_TYPE))) {
        private enum enumMixinStr___GID_T_TYPE = `enum __GID_T_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___GID_T_TYPE); }))) {
            mixin(enumMixinStr___GID_T_TYPE);
        }
    }




    static if(!is(typeof(__INO_T_TYPE))) {
        private enum enumMixinStr___INO_T_TYPE = `enum __INO_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___INO_T_TYPE); }))) {
            mixin(enumMixinStr___INO_T_TYPE);
        }
    }




    static if(!is(typeof(__INO64_T_TYPE))) {
        private enum enumMixinStr___INO64_T_TYPE = `enum __INO64_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___INO64_T_TYPE); }))) {
            mixin(enumMixinStr___INO64_T_TYPE);
        }
    }




    static if(!is(typeof(__MODE_T_TYPE))) {
        private enum enumMixinStr___MODE_T_TYPE = `enum __MODE_T_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___MODE_T_TYPE); }))) {
            mixin(enumMixinStr___MODE_T_TYPE);
        }
    }




    static if(!is(typeof(__NLINK_T_TYPE))) {
        private enum enumMixinStr___NLINK_T_TYPE = `enum __NLINK_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___NLINK_T_TYPE); }))) {
            mixin(enumMixinStr___NLINK_T_TYPE);
        }
    }




    static if(!is(typeof(__FSWORD_T_TYPE))) {
        private enum enumMixinStr___FSWORD_T_TYPE = `enum __FSWORD_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___FSWORD_T_TYPE); }))) {
            mixin(enumMixinStr___FSWORD_T_TYPE);
        }
    }




    static if(!is(typeof(__OFF_T_TYPE))) {
        private enum enumMixinStr___OFF_T_TYPE = `enum __OFF_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___OFF_T_TYPE); }))) {
            mixin(enumMixinStr___OFF_T_TYPE);
        }
    }




    static if(!is(typeof(__OFF64_T_TYPE))) {
        private enum enumMixinStr___OFF64_T_TYPE = `enum __OFF64_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___OFF64_T_TYPE); }))) {
            mixin(enumMixinStr___OFF64_T_TYPE);
        }
    }




    static if(!is(typeof(__PID_T_TYPE))) {
        private enum enumMixinStr___PID_T_TYPE = `enum __PID_T_TYPE = int;`;
        static if(is(typeof({ mixin(enumMixinStr___PID_T_TYPE); }))) {
            mixin(enumMixinStr___PID_T_TYPE);
        }
    }




    static if(!is(typeof(__RLIM_T_TYPE))) {
        private enum enumMixinStr___RLIM_T_TYPE = `enum __RLIM_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___RLIM_T_TYPE); }))) {
            mixin(enumMixinStr___RLIM_T_TYPE);
        }
    }




    static if(!is(typeof(__RLIM64_T_TYPE))) {
        private enum enumMixinStr___RLIM64_T_TYPE = `enum __RLIM64_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___RLIM64_T_TYPE); }))) {
            mixin(enumMixinStr___RLIM64_T_TYPE);
        }
    }




    static if(!is(typeof(__BLKCNT_T_TYPE))) {
        private enum enumMixinStr___BLKCNT_T_TYPE = `enum __BLKCNT_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___BLKCNT_T_TYPE); }))) {
            mixin(enumMixinStr___BLKCNT_T_TYPE);
        }
    }




    static if(!is(typeof(__BLKCNT64_T_TYPE))) {
        private enum enumMixinStr___BLKCNT64_T_TYPE = `enum __BLKCNT64_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___BLKCNT64_T_TYPE); }))) {
            mixin(enumMixinStr___BLKCNT64_T_TYPE);
        }
    }




    static if(!is(typeof(__FSBLKCNT_T_TYPE))) {
        private enum enumMixinStr___FSBLKCNT_T_TYPE = `enum __FSBLKCNT_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___FSBLKCNT_T_TYPE); }))) {
            mixin(enumMixinStr___FSBLKCNT_T_TYPE);
        }
    }




    static if(!is(typeof(__FSBLKCNT64_T_TYPE))) {
        private enum enumMixinStr___FSBLKCNT64_T_TYPE = `enum __FSBLKCNT64_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___FSBLKCNT64_T_TYPE); }))) {
            mixin(enumMixinStr___FSBLKCNT64_T_TYPE);
        }
    }




    static if(!is(typeof(__FSFILCNT_T_TYPE))) {
        private enum enumMixinStr___FSFILCNT_T_TYPE = `enum __FSFILCNT_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___FSFILCNT_T_TYPE); }))) {
            mixin(enumMixinStr___FSFILCNT_T_TYPE);
        }
    }




    static if(!is(typeof(__FSFILCNT64_T_TYPE))) {
        private enum enumMixinStr___FSFILCNT64_T_TYPE = `enum __FSFILCNT64_T_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___FSFILCNT64_T_TYPE); }))) {
            mixin(enumMixinStr___FSFILCNT64_T_TYPE);
        }
    }




    static if(!is(typeof(__ID_T_TYPE))) {
        private enum enumMixinStr___ID_T_TYPE = `enum __ID_T_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___ID_T_TYPE); }))) {
            mixin(enumMixinStr___ID_T_TYPE);
        }
    }




    static if(!is(typeof(__CLOCK_T_TYPE))) {
        private enum enumMixinStr___CLOCK_T_TYPE = `enum __CLOCK_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___CLOCK_T_TYPE); }))) {
            mixin(enumMixinStr___CLOCK_T_TYPE);
        }
    }




    static if(!is(typeof(__TIME_T_TYPE))) {
        private enum enumMixinStr___TIME_T_TYPE = `enum __TIME_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___TIME_T_TYPE); }))) {
            mixin(enumMixinStr___TIME_T_TYPE);
        }
    }




    static if(!is(typeof(__USECONDS_T_TYPE))) {
        private enum enumMixinStr___USECONDS_T_TYPE = `enum __USECONDS_T_TYPE = unsigned int;`;
        static if(is(typeof({ mixin(enumMixinStr___USECONDS_T_TYPE); }))) {
            mixin(enumMixinStr___USECONDS_T_TYPE);
        }
    }




    static if(!is(typeof(__SUSECONDS_T_TYPE))) {
        private enum enumMixinStr___SUSECONDS_T_TYPE = `enum __SUSECONDS_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SUSECONDS_T_TYPE); }))) {
            mixin(enumMixinStr___SUSECONDS_T_TYPE);
        }
    }




    static if(!is(typeof(__DADDR_T_TYPE))) {
        private enum enumMixinStr___DADDR_T_TYPE = `enum __DADDR_T_TYPE = int;`;
        static if(is(typeof({ mixin(enumMixinStr___DADDR_T_TYPE); }))) {
            mixin(enumMixinStr___DADDR_T_TYPE);
        }
    }




    static if(!is(typeof(__KEY_T_TYPE))) {
        private enum enumMixinStr___KEY_T_TYPE = `enum __KEY_T_TYPE = int;`;
        static if(is(typeof({ mixin(enumMixinStr___KEY_T_TYPE); }))) {
            mixin(enumMixinStr___KEY_T_TYPE);
        }
    }




    static if(!is(typeof(__CLOCKID_T_TYPE))) {
        private enum enumMixinStr___CLOCKID_T_TYPE = `enum __CLOCKID_T_TYPE = int;`;
        static if(is(typeof({ mixin(enumMixinStr___CLOCKID_T_TYPE); }))) {
            mixin(enumMixinStr___CLOCKID_T_TYPE);
        }
    }




    static if(!is(typeof(__TIMER_T_TYPE))) {
        private enum enumMixinStr___TIMER_T_TYPE = `enum __TIMER_T_TYPE = void *;`;
        static if(is(typeof({ mixin(enumMixinStr___TIMER_T_TYPE); }))) {
            mixin(enumMixinStr___TIMER_T_TYPE);
        }
    }




    static if(!is(typeof(__BLKSIZE_T_TYPE))) {
        private enum enumMixinStr___BLKSIZE_T_TYPE = `enum __BLKSIZE_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___BLKSIZE_T_TYPE); }))) {
            mixin(enumMixinStr___BLKSIZE_T_TYPE);
        }
    }




    static if(!is(typeof(__FSID_T_TYPE))) {
        private enum enumMixinStr___FSID_T_TYPE = `enum __FSID_T_TYPE = { int __val [ 2 ] ; };`;
        static if(is(typeof({ mixin(enumMixinStr___FSID_T_TYPE); }))) {
            mixin(enumMixinStr___FSID_T_TYPE);
        }
    }




    static if(!is(typeof(__SSIZE_T_TYPE))) {
        private enum enumMixinStr___SSIZE_T_TYPE = `enum __SSIZE_T_TYPE = long int;`;
        static if(is(typeof({ mixin(enumMixinStr___SSIZE_T_TYPE); }))) {
            mixin(enumMixinStr___SSIZE_T_TYPE);
        }
    }




    static if(!is(typeof(__CPU_MASK_TYPE))) {
        private enum enumMixinStr___CPU_MASK_TYPE = `enum __CPU_MASK_TYPE = unsigned long int;`;
        static if(is(typeof({ mixin(enumMixinStr___CPU_MASK_TYPE); }))) {
            mixin(enumMixinStr___CPU_MASK_TYPE);
        }
    }




    static if(!is(typeof(__OFF_T_MATCHES_OFF64_T))) {
        private enum enumMixinStr___OFF_T_MATCHES_OFF64_T = `enum __OFF_T_MATCHES_OFF64_T = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___OFF_T_MATCHES_OFF64_T); }))) {
            mixin(enumMixinStr___OFF_T_MATCHES_OFF64_T);
        }
    }




    static if(!is(typeof(__INO_T_MATCHES_INO64_T))) {
        private enum enumMixinStr___INO_T_MATCHES_INO64_T = `enum __INO_T_MATCHES_INO64_T = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___INO_T_MATCHES_INO64_T); }))) {
            mixin(enumMixinStr___INO_T_MATCHES_INO64_T);
        }
    }




    static if(!is(typeof(__RLIM_T_MATCHES_RLIM64_T))) {
        private enum enumMixinStr___RLIM_T_MATCHES_RLIM64_T = `enum __RLIM_T_MATCHES_RLIM64_T = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___RLIM_T_MATCHES_RLIM64_T); }))) {
            mixin(enumMixinStr___RLIM_T_MATCHES_RLIM64_T);
        }
    }




    static if(!is(typeof(__STATFS_MATCHES_STATFS64))) {
        private enum enumMixinStr___STATFS_MATCHES_STATFS64 = `enum __STATFS_MATCHES_STATFS64 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___STATFS_MATCHES_STATFS64); }))) {
            mixin(enumMixinStr___STATFS_MATCHES_STATFS64);
        }
    }




    static if(!is(typeof(__FD_SETSIZE))) {
        private enum enumMixinStr___FD_SETSIZE = `enum __FD_SETSIZE = 1024;`;
        static if(is(typeof({ mixin(enumMixinStr___FD_SETSIZE); }))) {
            mixin(enumMixinStr___FD_SETSIZE);
        }
    }




    static if(!is(typeof(_BITS_WCHAR_H))) {
        private enum enumMixinStr__BITS_WCHAR_H = `enum _BITS_WCHAR_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__BITS_WCHAR_H); }))) {
            mixin(enumMixinStr__BITS_WCHAR_H);
        }
    }




    static if(!is(typeof(__WCHAR_MAX))) {
        private enum enumMixinStr___WCHAR_MAX = `enum __WCHAR_MAX = 0x7fffffff;`;
        static if(is(typeof({ mixin(enumMixinStr___WCHAR_MAX); }))) {
            mixin(enumMixinStr___WCHAR_MAX);
        }
    }




    static if(!is(typeof(__WCHAR_MIN))) {
        private enum enumMixinStr___WCHAR_MIN = `enum __WCHAR_MIN = ( - 0x7fffffff - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr___WCHAR_MIN); }))) {
            mixin(enumMixinStr___WCHAR_MIN);
        }
    }




    static if(!is(typeof(__WORDSIZE))) {
        private enum enumMixinStr___WORDSIZE = `enum __WORDSIZE = 64;`;
        static if(is(typeof({ mixin(enumMixinStr___WORDSIZE); }))) {
            mixin(enumMixinStr___WORDSIZE);
        }
    }




    static if(!is(typeof(__WORDSIZE_TIME64_COMPAT32))) {
        private enum enumMixinStr___WORDSIZE_TIME64_COMPAT32 = `enum __WORDSIZE_TIME64_COMPAT32 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___WORDSIZE_TIME64_COMPAT32); }))) {
            mixin(enumMixinStr___WORDSIZE_TIME64_COMPAT32);
        }
    }




    static if(!is(typeof(__SYSCALL_WORDSIZE))) {
        private enum enumMixinStr___SYSCALL_WORDSIZE = `enum __SYSCALL_WORDSIZE = 64;`;
        static if(is(typeof({ mixin(enumMixinStr___SYSCALL_WORDSIZE); }))) {
            mixin(enumMixinStr___SYSCALL_WORDSIZE);
        }
    }




    static if(!is(typeof(_FEATURES_H))) {
        private enum enumMixinStr__FEATURES_H = `enum _FEATURES_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__FEATURES_H); }))) {
            mixin(enumMixinStr__FEATURES_H);
        }
    }
    static if(!is(typeof(_DEFAULT_SOURCE))) {
        private enum enumMixinStr__DEFAULT_SOURCE = `enum _DEFAULT_SOURCE = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__DEFAULT_SOURCE); }))) {
            mixin(enumMixinStr__DEFAULT_SOURCE);
        }
    }




    static if(!is(typeof(__GLIBC_USE_ISOC2X))) {
        private enum enumMixinStr___GLIBC_USE_ISOC2X = `enum __GLIBC_USE_ISOC2X = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_ISOC2X); }))) {
            mixin(enumMixinStr___GLIBC_USE_ISOC2X);
        }
    }




    static if(!is(typeof(__USE_ISOC11))) {
        private enum enumMixinStr___USE_ISOC11 = `enum __USE_ISOC11 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_ISOC11); }))) {
            mixin(enumMixinStr___USE_ISOC11);
        }
    }




    static if(!is(typeof(__USE_ISOC99))) {
        private enum enumMixinStr___USE_ISOC99 = `enum __USE_ISOC99 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_ISOC99); }))) {
            mixin(enumMixinStr___USE_ISOC99);
        }
    }




    static if(!is(typeof(__USE_ISOC95))) {
        private enum enumMixinStr___USE_ISOC95 = `enum __USE_ISOC95 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_ISOC95); }))) {
            mixin(enumMixinStr___USE_ISOC95);
        }
    }




    static if(!is(typeof(__USE_POSIX_IMPLICITLY))) {
        private enum enumMixinStr___USE_POSIX_IMPLICITLY = `enum __USE_POSIX_IMPLICITLY = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_POSIX_IMPLICITLY); }))) {
            mixin(enumMixinStr___USE_POSIX_IMPLICITLY);
        }
    }




    static if(!is(typeof(_POSIX_SOURCE))) {
        private enum enumMixinStr__POSIX_SOURCE = `enum _POSIX_SOURCE = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__POSIX_SOURCE); }))) {
            mixin(enumMixinStr__POSIX_SOURCE);
        }
    }




    static if(!is(typeof(_POSIX_C_SOURCE))) {
        private enum enumMixinStr__POSIX_C_SOURCE = `enum _POSIX_C_SOURCE = 200809L;`;
        static if(is(typeof({ mixin(enumMixinStr__POSIX_C_SOURCE); }))) {
            mixin(enumMixinStr__POSIX_C_SOURCE);
        }
    }




    static if(!is(typeof(__USE_POSIX))) {
        private enum enumMixinStr___USE_POSIX = `enum __USE_POSIX = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_POSIX); }))) {
            mixin(enumMixinStr___USE_POSIX);
        }
    }




    static if(!is(typeof(__USE_POSIX2))) {
        private enum enumMixinStr___USE_POSIX2 = `enum __USE_POSIX2 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_POSIX2); }))) {
            mixin(enumMixinStr___USE_POSIX2);
        }
    }




    static if(!is(typeof(__USE_POSIX199309))) {
        private enum enumMixinStr___USE_POSIX199309 = `enum __USE_POSIX199309 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_POSIX199309); }))) {
            mixin(enumMixinStr___USE_POSIX199309);
        }
    }




    static if(!is(typeof(__USE_POSIX199506))) {
        private enum enumMixinStr___USE_POSIX199506 = `enum __USE_POSIX199506 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_POSIX199506); }))) {
            mixin(enumMixinStr___USE_POSIX199506);
        }
    }




    static if(!is(typeof(__USE_XOPEN2K))) {
        private enum enumMixinStr___USE_XOPEN2K = `enum __USE_XOPEN2K = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_XOPEN2K); }))) {
            mixin(enumMixinStr___USE_XOPEN2K);
        }
    }




    static if(!is(typeof(__USE_XOPEN2K8))) {
        private enum enumMixinStr___USE_XOPEN2K8 = `enum __USE_XOPEN2K8 = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_XOPEN2K8); }))) {
            mixin(enumMixinStr___USE_XOPEN2K8);
        }
    }




    static if(!is(typeof(_ATFILE_SOURCE))) {
        private enum enumMixinStr__ATFILE_SOURCE = `enum _ATFILE_SOURCE = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__ATFILE_SOURCE); }))) {
            mixin(enumMixinStr__ATFILE_SOURCE);
        }
    }




    static if(!is(typeof(__USE_MISC))) {
        private enum enumMixinStr___USE_MISC = `enum __USE_MISC = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_MISC); }))) {
            mixin(enumMixinStr___USE_MISC);
        }
    }




    static if(!is(typeof(__USE_ATFILE))) {
        private enum enumMixinStr___USE_ATFILE = `enum __USE_ATFILE = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_ATFILE); }))) {
            mixin(enumMixinStr___USE_ATFILE);
        }
    }




    static if(!is(typeof(__USE_FORTIFY_LEVEL))) {
        private enum enumMixinStr___USE_FORTIFY_LEVEL = `enum __USE_FORTIFY_LEVEL = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___USE_FORTIFY_LEVEL); }))) {
            mixin(enumMixinStr___USE_FORTIFY_LEVEL);
        }
    }




    static if(!is(typeof(__GLIBC_USE_DEPRECATED_GETS))) {
        private enum enumMixinStr___GLIBC_USE_DEPRECATED_GETS = `enum __GLIBC_USE_DEPRECATED_GETS = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_DEPRECATED_GETS); }))) {
            mixin(enumMixinStr___GLIBC_USE_DEPRECATED_GETS);
        }
    }




    static if(!is(typeof(__GLIBC_USE_DEPRECATED_SCANF))) {
        private enum enumMixinStr___GLIBC_USE_DEPRECATED_SCANF = `enum __GLIBC_USE_DEPRECATED_SCANF = 0;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_USE_DEPRECATED_SCANF); }))) {
            mixin(enumMixinStr___GLIBC_USE_DEPRECATED_SCANF);
        }
    }




    static if(!is(typeof(__GNU_LIBRARY__))) {
        private enum enumMixinStr___GNU_LIBRARY__ = `enum __GNU_LIBRARY__ = 6;`;
        static if(is(typeof({ mixin(enumMixinStr___GNU_LIBRARY__); }))) {
            mixin(enumMixinStr___GNU_LIBRARY__);
        }
    }




    static if(!is(typeof(__GLIBC__))) {
        private enum enumMixinStr___GLIBC__ = `enum __GLIBC__ = 2;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC__); }))) {
            mixin(enumMixinStr___GLIBC__);
        }
    }




    static if(!is(typeof(__GLIBC_MINOR__))) {
        private enum enumMixinStr___GLIBC_MINOR__ = `enum __GLIBC_MINOR__ = 31;`;
        static if(is(typeof({ mixin(enumMixinStr___GLIBC_MINOR__); }))) {
            mixin(enumMixinStr___GLIBC_MINOR__);
        }
    }
    static if(!is(typeof(_STDC_PREDEF_H))) {
        private enum enumMixinStr__STDC_PREDEF_H = `enum _STDC_PREDEF_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__STDC_PREDEF_H); }))) {
            mixin(enumMixinStr__STDC_PREDEF_H);
        }
    }




    static if(!is(typeof(_STDINT_H))) {
        private enum enumMixinStr__STDINT_H = `enum _STDINT_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__STDINT_H); }))) {
            mixin(enumMixinStr__STDINT_H);
        }
    }
    static if(!is(typeof(INT8_MIN))) {
        private enum enumMixinStr_INT8_MIN = `enum INT8_MIN = ( - 128 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT8_MIN); }))) {
            mixin(enumMixinStr_INT8_MIN);
        }
    }




    static if(!is(typeof(INT16_MIN))) {
        private enum enumMixinStr_INT16_MIN = `enum INT16_MIN = ( - 32767 - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT16_MIN); }))) {
            mixin(enumMixinStr_INT16_MIN);
        }
    }




    static if(!is(typeof(INT32_MIN))) {
        private enum enumMixinStr_INT32_MIN = `enum INT32_MIN = ( - 2147483647 - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT32_MIN); }))) {
            mixin(enumMixinStr_INT32_MIN);
        }
    }




    static if(!is(typeof(INT64_MIN))) {
        private enum enumMixinStr_INT64_MIN = `enum INT64_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT64_MIN); }))) {
            mixin(enumMixinStr_INT64_MIN);
        }
    }




    static if(!is(typeof(INT8_MAX))) {
        private enum enumMixinStr_INT8_MAX = `enum INT8_MAX = ( 127 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT8_MAX); }))) {
            mixin(enumMixinStr_INT8_MAX);
        }
    }




    static if(!is(typeof(INT16_MAX))) {
        private enum enumMixinStr_INT16_MAX = `enum INT16_MAX = ( 32767 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT16_MAX); }))) {
            mixin(enumMixinStr_INT16_MAX);
        }
    }




    static if(!is(typeof(INT32_MAX))) {
        private enum enumMixinStr_INT32_MAX = `enum INT32_MAX = ( 2147483647 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT32_MAX); }))) {
            mixin(enumMixinStr_INT32_MAX);
        }
    }




    static if(!is(typeof(INT64_MAX))) {
        private enum enumMixinStr_INT64_MAX = `enum INT64_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INT64_MAX); }))) {
            mixin(enumMixinStr_INT64_MAX);
        }
    }




    static if(!is(typeof(UINT8_MAX))) {
        private enum enumMixinStr_UINT8_MAX = `enum UINT8_MAX = ( 255 );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT8_MAX); }))) {
            mixin(enumMixinStr_UINT8_MAX);
        }
    }




    static if(!is(typeof(UINT16_MAX))) {
        private enum enumMixinStr_UINT16_MAX = `enum UINT16_MAX = ( 65535 );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT16_MAX); }))) {
            mixin(enumMixinStr_UINT16_MAX);
        }
    }




    static if(!is(typeof(UINT32_MAX))) {
        private enum enumMixinStr_UINT32_MAX = `enum UINT32_MAX = ( 4294967295U );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT32_MAX); }))) {
            mixin(enumMixinStr_UINT32_MAX);
        }
    }




    static if(!is(typeof(UINT64_MAX))) {
        private enum enumMixinStr_UINT64_MAX = `enum UINT64_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT64_MAX); }))) {
            mixin(enumMixinStr_UINT64_MAX);
        }
    }




    static if(!is(typeof(INT_LEAST8_MIN))) {
        private enum enumMixinStr_INT_LEAST8_MIN = `enum INT_LEAST8_MIN = ( - 128 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST8_MIN); }))) {
            mixin(enumMixinStr_INT_LEAST8_MIN);
        }
    }




    static if(!is(typeof(INT_LEAST16_MIN))) {
        private enum enumMixinStr_INT_LEAST16_MIN = `enum INT_LEAST16_MIN = ( - 32767 - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST16_MIN); }))) {
            mixin(enumMixinStr_INT_LEAST16_MIN);
        }
    }




    static if(!is(typeof(INT_LEAST32_MIN))) {
        private enum enumMixinStr_INT_LEAST32_MIN = `enum INT_LEAST32_MIN = ( - 2147483647 - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST32_MIN); }))) {
            mixin(enumMixinStr_INT_LEAST32_MIN);
        }
    }




    static if(!is(typeof(INT_LEAST64_MIN))) {
        private enum enumMixinStr_INT_LEAST64_MIN = `enum INT_LEAST64_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST64_MIN); }))) {
            mixin(enumMixinStr_INT_LEAST64_MIN);
        }
    }




    static if(!is(typeof(INT_LEAST8_MAX))) {
        private enum enumMixinStr_INT_LEAST8_MAX = `enum INT_LEAST8_MAX = ( 127 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST8_MAX); }))) {
            mixin(enumMixinStr_INT_LEAST8_MAX);
        }
    }




    static if(!is(typeof(INT_LEAST16_MAX))) {
        private enum enumMixinStr_INT_LEAST16_MAX = `enum INT_LEAST16_MAX = ( 32767 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST16_MAX); }))) {
            mixin(enumMixinStr_INT_LEAST16_MAX);
        }
    }




    static if(!is(typeof(INT_LEAST32_MAX))) {
        private enum enumMixinStr_INT_LEAST32_MAX = `enum INT_LEAST32_MAX = ( 2147483647 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST32_MAX); }))) {
            mixin(enumMixinStr_INT_LEAST32_MAX);
        }
    }




    static if(!is(typeof(INT_LEAST64_MAX))) {
        private enum enumMixinStr_INT_LEAST64_MAX = `enum INT_LEAST64_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_LEAST64_MAX); }))) {
            mixin(enumMixinStr_INT_LEAST64_MAX);
        }
    }




    static if(!is(typeof(UINT_LEAST8_MAX))) {
        private enum enumMixinStr_UINT_LEAST8_MAX = `enum UINT_LEAST8_MAX = ( 255 );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_LEAST8_MAX); }))) {
            mixin(enumMixinStr_UINT_LEAST8_MAX);
        }
    }




    static if(!is(typeof(UINT_LEAST16_MAX))) {
        private enum enumMixinStr_UINT_LEAST16_MAX = `enum UINT_LEAST16_MAX = ( 65535 );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_LEAST16_MAX); }))) {
            mixin(enumMixinStr_UINT_LEAST16_MAX);
        }
    }




    static if(!is(typeof(UINT_LEAST32_MAX))) {
        private enum enumMixinStr_UINT_LEAST32_MAX = `enum UINT_LEAST32_MAX = ( 4294967295U );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_LEAST32_MAX); }))) {
            mixin(enumMixinStr_UINT_LEAST32_MAX);
        }
    }




    static if(!is(typeof(UINT_LEAST64_MAX))) {
        private enum enumMixinStr_UINT_LEAST64_MAX = `enum UINT_LEAST64_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_LEAST64_MAX); }))) {
            mixin(enumMixinStr_UINT_LEAST64_MAX);
        }
    }




    static if(!is(typeof(INT_FAST8_MIN))) {
        private enum enumMixinStr_INT_FAST8_MIN = `enum INT_FAST8_MIN = ( - 128 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST8_MIN); }))) {
            mixin(enumMixinStr_INT_FAST8_MIN);
        }
    }




    static if(!is(typeof(INT_FAST16_MIN))) {
        private enum enumMixinStr_INT_FAST16_MIN = `enum INT_FAST16_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST16_MIN); }))) {
            mixin(enumMixinStr_INT_FAST16_MIN);
        }
    }




    static if(!is(typeof(INT_FAST32_MIN))) {
        private enum enumMixinStr_INT_FAST32_MIN = `enum INT_FAST32_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST32_MIN); }))) {
            mixin(enumMixinStr_INT_FAST32_MIN);
        }
    }




    static if(!is(typeof(INT_FAST64_MIN))) {
        private enum enumMixinStr_INT_FAST64_MIN = `enum INT_FAST64_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST64_MIN); }))) {
            mixin(enumMixinStr_INT_FAST64_MIN);
        }
    }




    static if(!is(typeof(INT_FAST8_MAX))) {
        private enum enumMixinStr_INT_FAST8_MAX = `enum INT_FAST8_MAX = ( 127 );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST8_MAX); }))) {
            mixin(enumMixinStr_INT_FAST8_MAX);
        }
    }




    static if(!is(typeof(INT_FAST16_MAX))) {
        private enum enumMixinStr_INT_FAST16_MAX = `enum INT_FAST16_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST16_MAX); }))) {
            mixin(enumMixinStr_INT_FAST16_MAX);
        }
    }




    static if(!is(typeof(INT_FAST32_MAX))) {
        private enum enumMixinStr_INT_FAST32_MAX = `enum INT_FAST32_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST32_MAX); }))) {
            mixin(enumMixinStr_INT_FAST32_MAX);
        }
    }




    static if(!is(typeof(INT_FAST64_MAX))) {
        private enum enumMixinStr_INT_FAST64_MAX = `enum INT_FAST64_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INT_FAST64_MAX); }))) {
            mixin(enumMixinStr_INT_FAST64_MAX);
        }
    }




    static if(!is(typeof(UINT_FAST8_MAX))) {
        private enum enumMixinStr_UINT_FAST8_MAX = `enum UINT_FAST8_MAX = ( 255 );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_FAST8_MAX); }))) {
            mixin(enumMixinStr_UINT_FAST8_MAX);
        }
    }




    static if(!is(typeof(UINT_FAST16_MAX))) {
        private enum enumMixinStr_UINT_FAST16_MAX = `enum UINT_FAST16_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_FAST16_MAX); }))) {
            mixin(enumMixinStr_UINT_FAST16_MAX);
        }
    }




    static if(!is(typeof(UINT_FAST32_MAX))) {
        private enum enumMixinStr_UINT_FAST32_MAX = `enum UINT_FAST32_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_FAST32_MAX); }))) {
            mixin(enumMixinStr_UINT_FAST32_MAX);
        }
    }




    static if(!is(typeof(UINT_FAST64_MAX))) {
        private enum enumMixinStr_UINT_FAST64_MAX = `enum UINT_FAST64_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINT_FAST64_MAX); }))) {
            mixin(enumMixinStr_UINT_FAST64_MAX);
        }
    }




    static if(!is(typeof(INTPTR_MIN))) {
        private enum enumMixinStr_INTPTR_MIN = `enum INTPTR_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INTPTR_MIN); }))) {
            mixin(enumMixinStr_INTPTR_MIN);
        }
    }




    static if(!is(typeof(INTPTR_MAX))) {
        private enum enumMixinStr_INTPTR_MAX = `enum INTPTR_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INTPTR_MAX); }))) {
            mixin(enumMixinStr_INTPTR_MAX);
        }
    }




    static if(!is(typeof(UINTPTR_MAX))) {
        private enum enumMixinStr_UINTPTR_MAX = `enum UINTPTR_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINTPTR_MAX); }))) {
            mixin(enumMixinStr_UINTPTR_MAX);
        }
    }




    static if(!is(typeof(INTMAX_MIN))) {
        private enum enumMixinStr_INTMAX_MIN = `enum INTMAX_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_INTMAX_MIN); }))) {
            mixin(enumMixinStr_INTMAX_MIN);
        }
    }




    static if(!is(typeof(INTMAX_MAX))) {
        private enum enumMixinStr_INTMAX_MAX = `enum INTMAX_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_INTMAX_MAX); }))) {
            mixin(enumMixinStr_INTMAX_MAX);
        }
    }




    static if(!is(typeof(UINTMAX_MAX))) {
        private enum enumMixinStr_UINTMAX_MAX = `enum UINTMAX_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_UINTMAX_MAX); }))) {
            mixin(enumMixinStr_UINTMAX_MAX);
        }
    }




    static if(!is(typeof(PTRDIFF_MIN))) {
        private enum enumMixinStr_PTRDIFF_MIN = `enum PTRDIFF_MIN = ( - 9223372036854775807L - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_PTRDIFF_MIN); }))) {
            mixin(enumMixinStr_PTRDIFF_MIN);
        }
    }




    static if(!is(typeof(PTRDIFF_MAX))) {
        private enum enumMixinStr_PTRDIFF_MAX = `enum PTRDIFF_MAX = ( 9223372036854775807L );`;
        static if(is(typeof({ mixin(enumMixinStr_PTRDIFF_MAX); }))) {
            mixin(enumMixinStr_PTRDIFF_MAX);
        }
    }




    static if(!is(typeof(SIG_ATOMIC_MIN))) {
        private enum enumMixinStr_SIG_ATOMIC_MIN = `enum SIG_ATOMIC_MIN = ( - 2147483647 - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_SIG_ATOMIC_MIN); }))) {
            mixin(enumMixinStr_SIG_ATOMIC_MIN);
        }
    }




    static if(!is(typeof(SIG_ATOMIC_MAX))) {
        private enum enumMixinStr_SIG_ATOMIC_MAX = `enum SIG_ATOMIC_MAX = ( 2147483647 );`;
        static if(is(typeof({ mixin(enumMixinStr_SIG_ATOMIC_MAX); }))) {
            mixin(enumMixinStr_SIG_ATOMIC_MAX);
        }
    }




    static if(!is(typeof(SIZE_MAX))) {
        private enum enumMixinStr_SIZE_MAX = `enum SIZE_MAX = ( 18446744073709551615UL );`;
        static if(is(typeof({ mixin(enumMixinStr_SIZE_MAX); }))) {
            mixin(enumMixinStr_SIZE_MAX);
        }
    }




    static if(!is(typeof(WCHAR_MIN))) {
        private enum enumMixinStr_WCHAR_MIN = `enum WCHAR_MIN = ( - 0x7fffffff - 1 );`;
        static if(is(typeof({ mixin(enumMixinStr_WCHAR_MIN); }))) {
            mixin(enumMixinStr_WCHAR_MIN);
        }
    }




    static if(!is(typeof(WCHAR_MAX))) {
        private enum enumMixinStr_WCHAR_MAX = `enum WCHAR_MAX = 0x7fffffff;`;
        static if(is(typeof({ mixin(enumMixinStr_WCHAR_MAX); }))) {
            mixin(enumMixinStr_WCHAR_MAX);
        }
    }




    static if(!is(typeof(WINT_MIN))) {
        private enum enumMixinStr_WINT_MIN = `enum WINT_MIN = ( 0u );`;
        static if(is(typeof({ mixin(enumMixinStr_WINT_MIN); }))) {
            mixin(enumMixinStr_WINT_MIN);
        }
    }




    static if(!is(typeof(WINT_MAX))) {
        private enum enumMixinStr_WINT_MAX = `enum WINT_MAX = ( 4294967295u );`;
        static if(is(typeof({ mixin(enumMixinStr_WINT_MAX); }))) {
            mixin(enumMixinStr_WINT_MAX);
        }
    }
    static if(!is(typeof(_SYS_CDEFS_H))) {
        private enum enumMixinStr__SYS_CDEFS_H = `enum _SYS_CDEFS_H = 1;`;
        static if(is(typeof({ mixin(enumMixinStr__SYS_CDEFS_H); }))) {
            mixin(enumMixinStr__SYS_CDEFS_H);
        }
    }
    static if(!is(typeof(__THROW))) {
        private enum enumMixinStr___THROW = `enum __THROW = __attribute__ ( ( __nothrow__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___THROW); }))) {
            mixin(enumMixinStr___THROW);
        }
    }




    static if(!is(typeof(__THROWNL))) {
        private enum enumMixinStr___THROWNL = `enum __THROWNL = __attribute__ ( ( __nothrow__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___THROWNL); }))) {
            mixin(enumMixinStr___THROWNL);
        }
    }
    static if(!is(typeof(__ptr_t))) {
        private enum enumMixinStr___ptr_t = `enum __ptr_t = void *;`;
        static if(is(typeof({ mixin(enumMixinStr___ptr_t); }))) {
            mixin(enumMixinStr___ptr_t);
        }
    }
    static if(!is(typeof(__flexarr))) {
        private enum enumMixinStr___flexarr = `enum __flexarr = [ ];`;
        static if(is(typeof({ mixin(enumMixinStr___flexarr); }))) {
            mixin(enumMixinStr___flexarr);
        }
    }




    static if(!is(typeof(__glibc_c99_flexarr_available))) {
        private enum enumMixinStr___glibc_c99_flexarr_available = `enum __glibc_c99_flexarr_available = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___glibc_c99_flexarr_available); }))) {
            mixin(enumMixinStr___glibc_c99_flexarr_available);
        }
    }
    static if(!is(typeof(__attribute_malloc__))) {
        private enum enumMixinStr___attribute_malloc__ = `enum __attribute_malloc__ = __attribute__ ( ( __malloc__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_malloc__); }))) {
            mixin(enumMixinStr___attribute_malloc__);
        }
    }






    static if(!is(typeof(__attribute_pure__))) {
        private enum enumMixinStr___attribute_pure__ = `enum __attribute_pure__ = __attribute__ ( ( __pure__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_pure__); }))) {
            mixin(enumMixinStr___attribute_pure__);
        }
    }




    static if(!is(typeof(__attribute_const__))) {
        private enum enumMixinStr___attribute_const__ = `enum __attribute_const__ = __attribute__ ( cast( __const__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_const__); }))) {
            mixin(enumMixinStr___attribute_const__);
        }
    }




    static if(!is(typeof(__attribute_used__))) {
        private enum enumMixinStr___attribute_used__ = `enum __attribute_used__ = __attribute__ ( ( __used__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_used__); }))) {
            mixin(enumMixinStr___attribute_used__);
        }
    }




    static if(!is(typeof(__attribute_noinline__))) {
        private enum enumMixinStr___attribute_noinline__ = `enum __attribute_noinline__ = __attribute__ ( ( __noinline__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_noinline__); }))) {
            mixin(enumMixinStr___attribute_noinline__);
        }
    }




    static if(!is(typeof(__attribute_deprecated__))) {
        private enum enumMixinStr___attribute_deprecated__ = `enum __attribute_deprecated__ = __attribute__ ( ( __deprecated__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_deprecated__); }))) {
            mixin(enumMixinStr___attribute_deprecated__);
        }
    }
    static if(!is(typeof(__attribute_warn_unused_result__))) {
        private enum enumMixinStr___attribute_warn_unused_result__ = `enum __attribute_warn_unused_result__ = __attribute__ ( ( __warn_unused_result__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___attribute_warn_unused_result__); }))) {
            mixin(enumMixinStr___attribute_warn_unused_result__);
        }
    }






    static if(!is(typeof(__always_inline))) {
        private enum enumMixinStr___always_inline = `enum __always_inline = __inline __attribute__ ( ( __always_inline__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___always_inline); }))) {
            mixin(enumMixinStr___always_inline);
        }
    }






    static if(!is(typeof(__extern_inline))) {
        private enum enumMixinStr___extern_inline = `enum __extern_inline = extern __inline __attribute__ ( ( __gnu_inline__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___extern_inline); }))) {
            mixin(enumMixinStr___extern_inline);
        }
    }




    static if(!is(typeof(__extern_always_inline))) {
        private enum enumMixinStr___extern_always_inline = `enum __extern_always_inline = extern __inline __attribute__ ( ( __always_inline__ ) ) __attribute__ ( ( __gnu_inline__ ) );`;
        static if(is(typeof({ mixin(enumMixinStr___extern_always_inline); }))) {
            mixin(enumMixinStr___extern_always_inline);
        }
    }




    static if(!is(typeof(__fortify_function))) {
        private enum enumMixinStr___fortify_function = `enum __fortify_function = extern __inline __attribute__ ( ( __always_inline__ ) ) __attribute__ ( ( __gnu_inline__ ) ) ;`;
        static if(is(typeof({ mixin(enumMixinStr___fortify_function); }))) {
            mixin(enumMixinStr___fortify_function);
        }
    }




    static if(!is(typeof(__restrict_arr))) {
        private enum enumMixinStr___restrict_arr = `enum __restrict_arr = __restrict;`;
        static if(is(typeof({ mixin(enumMixinStr___restrict_arr); }))) {
            mixin(enumMixinStr___restrict_arr);
        }
    }
    static if(!is(typeof(__HAVE_GENERIC_SELECTION))) {
        private enum enumMixinStr___HAVE_GENERIC_SELECTION = `enum __HAVE_GENERIC_SELECTION = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___HAVE_GENERIC_SELECTION); }))) {
            mixin(enumMixinStr___HAVE_GENERIC_SELECTION);
        }
    }






    static if(!is(typeof(bool_))) {
        private enum enumMixinStr_bool_ = `enum bool_ = _Bool;`;
        static if(is(typeof({ mixin(enumMixinStr_bool_); }))) {
            mixin(enumMixinStr_bool_);
        }
    }




    static if(!is(typeof(true_))) {
        private enum enumMixinStr_true_ = `enum true_ = 1;`;
        static if(is(typeof({ mixin(enumMixinStr_true_); }))) {
            mixin(enumMixinStr_true_);
        }
    }




    static if(!is(typeof(false_))) {
        private enum enumMixinStr_false_ = `enum false_ = 0;`;
        static if(is(typeof({ mixin(enumMixinStr_false_); }))) {
            mixin(enumMixinStr_false_);
        }
    }




    static if(!is(typeof(__bool_true_false_are_defined))) {
        private enum enumMixinStr___bool_true_false_are_defined = `enum __bool_true_false_are_defined = 1;`;
        static if(is(typeof({ mixin(enumMixinStr___bool_true_false_are_defined); }))) {
            mixin(enumMixinStr___bool_true_false_are_defined);
        }
    }



}
