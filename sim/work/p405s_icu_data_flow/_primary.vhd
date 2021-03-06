library verilog;
use verilog.vl_types.all;
entity p405s_icu_data_flow is
    port(
        BlockFlush      : out    vl_logic;
        Block_CAR       : out    vl_logic;
        Block_COF       : out    vl_logic;
        Block_LSA       : out    vl_logic;
        Block_SAQ       : out    vl_logic;
        Block_mult_req  : out    vl_logic;
        DPP1_NEG        : out    vl_logic;
        ICU_ABus_NEG    : out    vl_logic_vector(0 to 29);
        ICU_CCR0DDK     : out    vl_logic;
        ICU_GPRC        : out    vl_logic;
        ICU_LDBE        : out    vl_logic;
        ICU_U0Attr_NEG  : out    vl_logic;
        ICU_baSel       : out    vl_logic;
        ICU_dcuLNC      : out    vl_logic;
        ICU_dcuLOA      : out    vl_logic;
        ICU_dcuWOA      : out    vl_logic;
        ICU_sprData     : out    vl_logic_vector(0 to 31);
        ICU_tagDataSel  : out    vl_logic;
        ICU_paritySel   : out    vl_logic;
        ICU_traceEnable : out    vl_logic;
        IPP0_NEG        : out    vl_logic;
        IPP1_NEG        : out    vl_logic;
        df_cpuEa        : out    vl_logic_vector(27 to 29);
        df_dataCc       : out    vl_logic_vector(18 to 27);
        df_forceOnly1Req: out    vl_logic;
        df_ftchMissBlkWr: out    vl_logic;
        df_jtagIsEa_NEG : out    vl_logic_vector(18 to 26);
        df_lruRdCcInNEG : out    vl_logic_vector(18 to 26);
        df_lruWrCcIn    : out    vl_logic_vector(18 to 26);
        df_nonC_8       : out    vl_logic;
        df_nonCpreFetchEn: out    vl_logic;
        df_plb27L2      : out    vl_logic;
        df_plbaOverflow : out    vl_logic;
        df_preFetchEnable: out    vl_logic;
        df_rars         : out    vl_logic_vector(0 to 21);
        df_rarsTLE      : out    vl_logic;
        df_selCCR0      : out    vl_logic;
        df_tagVccRegIn  : out    vl_logic_vector(18 to 26);
        df_vcarVcarsCompare: out    vl_logic;
        rdar            : out    vl_logic_vector(0 to 29);
        CB              : in     vl_logic;
        DCU_icuSize     : in     vl_logic_vector(0 to 2);
        EXE_dsEA_NEG    : in     vl_logic_vector(0 to 29);
        EXE_icuSprDcds  : in     vl_logic_vector(0 to 2);
        EXE_sprData     : in     vl_logic_vector(0 to 31);
        IFB_isEA        : in     vl_logic_vector(0 to 29);
        MMU_dsEndianL2  : in     vl_logic;
        MMU_dsU0AttrL2  : in     vl_logic;
        MMU_isEndian    : in     vl_logic;
        MMU_isRA        : in     vl_logic_vector(0 to 29);
        MMU_isU0Attr    : in     vl_logic;
        MMU_rdarDsRAL2  : in     vl_logic_vector(0 to 29);
        PCL_mfSPR       : in     vl_logic;
        PCL_mtSPR       : in     vl_logic;
        PCL_sprHold     : in     vl_logic;
        cdbdrE1         : in     vl_logic;
        dataCcSel       : in     vl_logic_vector(0 to 3);
        dsRdMuxSel      : in     vl_logic;
        dsVcar1E2       : in     vl_logic;
        dsVcar2E2       : in     vl_logic;
        fillWr0L2       : in     vl_logic;
        icReadData      : in     vl_logic_vector(0 to 31);
        icuCacheSize    : in     vl_logic_vector(0 to 2);
        icuRdarE1       : in     vl_logic;
        icuRdarE2       : in     vl_logic;
        jtag2ndWr       : in     vl_logic;
        lruRdSel        : in     vl_logic;
        plbHighSel      : in     vl_logic_vector(0 to 1);
        plbLowSel       : in     vl_logic_vector(0 to 1);
        rarsSel         : in     vl_logic_vector(0 to 1);
        resetCore       : in     vl_logic;
        scL2            : in     vl_logic;
        scanin          : in     vl_logic;
        tagVSel         : in     vl_logic_vector(0 to 1);
        vcarE2          : in     vl_logic;
        vcarInSelL2     : in     vl_logic;
        vcarSelHi_NEG   : in     vl_logic;
        vcarSelLow_NEG  : in     vl_logic;
        vcarsCCE2       : in     vl_logic;
        vcarsSel        : in     vl_logic_vector(0 to 1);
        vcarspSel       : in     vl_logic_vector(0 to 1);
        VCT_msrIR       : in     vl_logic;
        ICU_CCR0DPE     : out    vl_logic;
        ICU_CCR0DPP     : out    vl_logic;
        ICU_CCR0IPE     : out    vl_logic;
        ICU_CCR0TPE     : out    vl_logic;
        ICU_CCR1ICTE    : out    vl_logic;
        ICU_CCR1ICDE    : out    vl_logic;
        ICU_CCR1DCTE    : out    vl_logic;
        ICU_CCR1DCDE    : out    vl_logic;
        ICU_CCR1TLBE    : out    vl_logic
    );
end p405s_icu_data_flow;
