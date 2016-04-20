library verilog;
use verilog.vl_types.all;
entity p405s_icu_top is
    port(
        DCU_plbPriorityBit1: out    vl_logic;
        ICU_ABus        : out    vl_logic_vector(0 to 29);
        ICU_CCR0DDK     : out    vl_logic;
        ICU_EO          : out    vl_logic_vector(0 to 1);
        ICU_GPRC        : out    vl_logic;
        ICU_LDBE        : out    vl_logic;
        ICU_U0Attr      : out    vl_logic;
        ICU_abort       : out    vl_logic;
        ICU_cacheable   : out    vl_logic;
        ICU_dcuCCR0_L2  : out    vl_logic_vector(0 to 11);
        ICU_diagBus     : out    vl_logic_vector(0 to 22);
        ICU_dsCA        : out    vl_logic;
        ICU_ifbError    : out    vl_logic_vector(0 to 1);
        ICU_isBus       : out    vl_logic_vector(0 to 63);
        ICU_isCA        : out    vl_logic;
        ICU_mmuEoOdd    : out    vl_logic;
        ICU_mmuRdarE2   : out    vl_logic;
        ICU_ocmIcuReady : out    vl_logic;
        ICU_ocmReqPending: out    vl_logic;
        ICU_plbPriority : out    vl_logic_vector(0 to 1);
        ICU_request     : out    vl_logic;
        ICU_scanout     : out    vl_logic_vector(0 to 2);
        ICU_sleepReq    : out    vl_logic;
        ICU_sprData     : out    vl_logic_vector(0 to 31);
        ICU_syncAfterReset: out    vl_logic;
        ICU_traceEnable : out    vl_logic;
        ICU_tranSize    : out    vl_logic_vector(2 to 3);
        CB              : in     vl_logic;
        DCU_icuSize     : in     vl_logic_vector(0 to 2);
        EXE_dsEA_NEG    : in     vl_logic_vector(0 to 29);
        EXE_icuSprDcds  : in     vl_logic_vector(0 to 2);
        EXE_sprData     : in     vl_logic_vector(0 to 31);
        ICU_scanin      : in     vl_logic_vector(0 to 2);
        IFB_cntxSync    : in     vl_logic;
        IFB_fetchReq    : in     vl_logic;
        IFB_icuCancelData: in     vl_logic;
        IFB_isAbort     : in     vl_logic_vector(0 to 2);
        IFB_isEA        : in     vl_logic_vector(0 to 29);
        IFB_isNL        : in     vl_logic;
        JTG_iCacheWr_NEG: in     vl_logic;
        JTG_inst        : in     vl_logic_vector(0 to 31);
        MMU_dsEndianL2  : in     vl_logic;
        MMU_dsU0AttrL2  : in     vl_logic;
        MMU_icuDsAbort  : in     vl_logic;
        MMU_icuIsAbort  : in     vl_logic;
        MMU_isCacheableNEG: in     vl_logic_vector(0 to 2);
        MMU_isDsCacheableL2: in     vl_logic;
        MMU_isDsXltValidL2: in     vl_logic;
        MMU_isEndian    : in     vl_logic;
        MMU_isRANEG     : in     vl_logic_vector(0 to 29);
        MMU_isU0Attr    : in     vl_logic;
        MMU_isXltValid  : in     vl_logic;
        MMU_rdarDsRAL2  : in     vl_logic_vector(0 to 29);
        OCM_isDATA      : in     vl_logic_vector(0 to 63);
        OCM_isDValid    : in     vl_logic_vector(0 to 1);
        OCM_isHold      : in     vl_logic;
        PCL_icuOp       : in     vl_logic_vector(0 to 3);
        PCL_mfSPR       : in     vl_logic;
        PCL_mtSPR       : in     vl_logic;
        PCL_sprHold     : in     vl_logic;
        PLB_dcuBusy     : in     vl_logic;
        PLB_icuAddrAck  : in     vl_logic;
        PLB_icuBusy     : in     vl_logic;
        PLB_icuDBus     : in     vl_logic_vector(0 to 63);
        PLB_icuError    : in     vl_logic;
        PLB_icuRdDAck   : in     vl_logic;
        PLB_icuRdWdAddr : in     vl_logic_vector(1 to 3);
        PLB_sSize       : in     vl_logic;
        PLB_sampleCycle : in     vl_logic;
        VCT_exeAbort    : in     vl_logic;
        VCT_icuWbAbort  : in     vl_logic;
        resetCoreIn     : in     vl_logic;
        testEn          : in     vl_logic;
        VCT_msrIR       : in     vl_logic;
        ICU_parityErrE  : out    vl_logic;
        ICU_parityErrO  : out    vl_logic;
        ICU_tagParityErr: out    vl_logic;
        ICU_CCR0DPE     : out    vl_logic;
        ICU_CCR0DPP     : out    vl_logic;
        ICU_CCR0IPE     : out    vl_logic;
        ICU_CCR0TPE     : out    vl_logic;
        ICU_CCR1DCTE    : out    vl_logic;
        ICU_CCR1DCDE    : out    vl_logic;
        ICU_CCR1TLBE    : out    vl_logic;
        PLB_sampleCycleAlt: in     vl_logic;
        CPM_c405SyncBypass: in     vl_logic;
        icu_bist_debug_si: in     vl_logic_vector(3 downto 0);
        icu_bist_debug_so: out    vl_logic_vector(3 downto 0);
        icu_bist_debug_en: in     vl_logic_vector(3 downto 0);
        icu_bist_mode_reg_in: in     vl_logic_vector(18 downto 0);
        icu_bist_mode_reg_out: out    vl_logic_vector(18 downto 0);
        icu_bist_parallel_dr: in     vl_logic;
        icu_bist_mode_reg_si: in     vl_logic;
        icu_bist_mode_reg_so: out    vl_logic;
        icu_bist_shift_dr: in     vl_logic;
        icu_bist_mbrun  : in     vl_logic;
        resetMemBist    : in     vl_logic
    );
end p405s_icu_top;