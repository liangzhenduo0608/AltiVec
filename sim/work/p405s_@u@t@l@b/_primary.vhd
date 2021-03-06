library verilog;
use verilog.vl_types.all;
entity p405s_UTLB is
    port(
        UTLB_CacheInhibit: out    vl_logic;
        UTLB_DSize      : out    vl_logic_vector(0 to 6);
        UTLB_DT         : out    vl_logic;
        UTLB_E          : out    vl_logic;
        UTLB_EPN        : out    vl_logic_vector(0 to 21);
        UTLB_EX         : out    vl_logic;
        UTLB_G          : out    vl_logic;
        UTLB_M          : out    vl_logic;
        UTLB_RPN        : out    vl_logic_vector(0 to 21);
        UTLB_TID        : out    vl_logic_vector(0 to 7);
        UTLB_U0         : out    vl_logic;
        UTLB_V          : out    vl_logic;
        UTLB_W          : out    vl_logic;
        UTLB_WR         : out    vl_logic;
        UTLB_ZSEL       : out    vl_logic_vector(0 to 3);
        UTLB_index      : out    vl_logic_vector(0 to 5);
        UTLB_miss       : out    vl_logic;
        dataComp        : out    vl_logic;
        tagComp         : out    vl_logic;
        EN_C1           : in     vl_logic;
        DSize           : in     vl_logic_vector(0 to 6);
        DT              : in     vl_logic;
        EPN_EA          : in     vl_logic_vector(0 to 21);
        EX              : in     vl_logic;
        RPN             : in     vl_logic_vector(0 to 21);
        TID             : in     vl_logic_vector(0 to 7);
        TestM1          : in     vl_logic;
        TestComp        : in     vl_logic;
        WR              : in     vl_logic;
        ZSEL            : in     vl_logic_vector(0 to 3);
        EN_ARRAYL1      : in     vl_logic;
        dataEn          : in     vl_logic;
        indexLookupb    : in     vl_logic;
        rdWrb           : in     vl_logic;
        tagEn           : in     vl_logic;
        tlbCacheInhibit : in     vl_logic;
        tlbE            : in     vl_logic;
        tlbG            : in     vl_logic;
        tlbM            : in     vl_logic;
        tlbU0           : in     vl_logic;
        tlbV            : in     vl_logic;
        tlbW            : in     vl_logic;
        tlb_invalidate  : in     vl_logic;
        tlbaddr         : in     vl_logic_vector(0 to 5);
        CB              : in     vl_logic;
        tagPar1         : in     vl_logic;
        tagPar2         : in     vl_logic;
        tagPar3         : in     vl_logic;
        tagPar4         : in     vl_logic;
        ramPar1         : in     vl_logic;
        ramPar2         : in     vl_logic;
        UTLB_T1         : out    vl_logic;
        UTLB_T2         : out    vl_logic;
        UTLB_T3         : out    vl_logic;
        UTLB_T4         : out    vl_logic;
        UTLB_R1         : out    vl_logic;
        UTLB_R2         : out    vl_logic;
        DVS             : in     vl_logic
    );
end p405s_UTLB;
