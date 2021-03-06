library verilog;
use verilog.vl_types.all;
entity p405s_vct_top is
    port(
        VCT_errorOut    : out    vl_logic;
        VCT_msrDR       : out    vl_logic;
        VCT_msrIR       : out    vl_logic;
        VCT_wbRfci      : out    vl_logic;
        VCT_wbRfi       : out    vl_logic;
        VCT_sxr         : out    vl_logic_vector(0 to 11);
        VCT_swap01      : out    vl_logic;
        VCT_swap23      : out    vl_logic;
        VCT_vectorBus   : out    vl_logic_vector(0 to 7);
        VCT_msrWE       : out    vl_logic;
        VCT_errorSprSuppress: out    vl_logic;
        VCT_sprDataBus  : out    vl_logic_vector(0 to 31);
        VCT_msrDE       : out    vl_logic;
        VCT_swapQ01     : out    vl_logic;
        VCT_swapQ23     : out    vl_logic;
        PLB_dcuErr      : in     vl_logic;
        PCL_wbLdNotSt   : in     vl_logic;
        PCL_mtSPR       : in     vl_logic;
        PCL_sprHold     : in     vl_logic;
        EIC_critIntrp   : in     vl_logic;
        EIC_extIntrp    : in     vl_logic;
        PCL_algnErr     : in     vl_logic;
        IFB_exeFlush    : in     vl_logic;
        PCL_exeCpuOp    : in     vl_logic;
        IFB_exeIfetchErr: in     vl_logic_vector(0 to 4);
        PCL_exeWrExtEn  : in     vl_logic;
        PCL_exePrivOp   : in     vl_logic;
        IFB_stuffStL2   : in     vl_logic;
        IFB_swapEnable  : in     vl_logic;
        CB              : in     vl_logic;
        coreReset       : in     vl_logic;
        MMU_dsStatus    : in     vl_logic_vector(0 to 7);
        EXE_wrteeIn     : in     vl_logic;
        DBG_intrp       : in     vl_logic;
        DBG_exeIacSuppress: in     vl_logic;
        DBG_trapEnQ     : in     vl_logic;
        TIM_fitIntrp    : in     vl_logic;
        TIM_pitIntrp    : in     vl_logic;
        PCL_exeTrap     : in     vl_logic;
        TIM_watchDogIntrp: in     vl_logic;
        PGM_pvrBus      : in     vl_logic_vector(0 to 31);
        VCT_exeSuppress : out    vl_logic;
        VCT_anySwap     : out    vl_logic;
        PCL_exeApuOp    : in     vl_logic;
        DBG_exeSuppress : in     vl_logic;
        VCT_msrCE       : out    vl_logic;
        VCT_msrEE       : out    vl_logic;
        DBG_wbDacSuppress: in     vl_logic;
        PCL_exeApuValidOp: in     vl_logic;
        VCT_timerIntrp  : out    vl_logic;
        VCT_sxrOR_L2    : out    vl_logic;
        PCL_exeFull     : in     vl_logic;
        JTG_stopReq     : in     vl_logic;
        DBG_stopReq     : in     vl_logic;
        IFB_runStL2     : in     vl_logic;
        APU_exception   : in     vl_logic;
        VCT_msrPR       : out    vl_logic;
        PGM_mmuEn       : in     vl_logic;
        PCL_dIcmpForWbFlushQDlydL2: in     vl_logic;
        EXE_vctSprDcds  : in     vl_logic_vector(0 to 5);
        EXE_sprDataBus  : in     vl_logic_vector(0 to 31);
        VCT_dcuWbAbort  : out    vl_logic;
        VCT_wbSuppress  : out    vl_logic;
        IFB_exeRfi      : in     vl_logic;
        IFB_exeRfci     : in     vl_logic;
        IFB_exeSc       : in     vl_logic;
        PCL_wbFull      : in     vl_logic;
        VCT_dearE2      : out    vl_logic;
        VCT_wbFlush     : out    vl_logic;
        PCL_blkFlush    : in     vl_logic_vector(0 to 2);
        VCT_icuWbAbort  : out    vl_logic;
        PCL_exeDvcHold  : in     vl_logic;
        PCL_exeDvcOrParityHold: in     vl_logic;
        MMU_dsStateBorC : in     vl_logic;
        PCL_exeFpuOp    : in     vl_logic;
        FPU_exception   : in     vl_logic;
        PCL_wbHold      : in     vl_logic;
        DBG_udeIntrp    : in     vl_logic;
        DBG_weakStopReq : in     vl_logic;
        VCT_msrFE0      : out    vl_logic;
        VCT_msrFE1      : out    vl_logic;
        VCT_msrDWE      : out    vl_logic;
        VCT_wbErrSuppress: out    vl_logic;
        VCT_stuffStepSupL2: out    vl_logic;
        VCT_srr1DWE     : out    vl_logic;
        VCT_srr3DWE     : out    vl_logic;
        IFB_stepStL2    : in     vl_logic;
        VCT_exeBrTrapErrSuppress: out    vl_logic;
        VCT_wbFlushAsync: out    vl_logic;
        VCT_msrWEL2     : out    vl_logic;
        PCL_wbStorageOp : in     vl_logic;
        VCT_wbLoadSuppress: out    vl_logic;
        IFB_swapStL2    : in     vl_logic;
        PCL_exe2Full    : in     vl_logic;
        JTG_dbgWaitEn   : in     vl_logic;
        IFB_dcdFullL2   : in     vl_logic;
        VCT_mmuWbAbort  : out    vl_logic;
        MMU_wbHold      : in     vl_logic;
        VCT_mmuExeSuppress: out    vl_logic;
        VCT_exeSuppForApu: out    vl_logic;
        DCU_SCL2        : in     vl_logic;
        PCL_wbHoldNonErr: in     vl_logic;
        VCT_exeSuppForExe2Clear: out    vl_logic;
        VCT_apuWbFlush  : out    vl_logic;
        VCT_exeSuppForCr: out    vl_logic;
        LSSD_coreTestEn : in     vl_logic;
        JTG_stepUPD     : in     vl_logic;
        JTG_stuffUPD    : in     vl_logic;
        MMU_dsParityErr : in     vl_logic;
        MMU_tlbSXParityErr: in     vl_logic;
        MMU_tlbREParityErr: in     vl_logic;
        PCL_dofDregFull : in     vl_logic;
        EXE_dofDregParityErrL2: in     vl_logic;
        lwbFullL2       : in     vl_logic;
        IFB_exeISideMachChk: in     vl_logic;
        PCL_lwbCacheableL2: in     vl_logic;
        ICU_CCR0DPE     : in     vl_logic;
        ICU_CCR0DPP     : in     vl_logic;
        ICU_CCR0IPE     : in     vl_logic;
        ICU_CCR0TPE     : in     vl_logic;
        DCU_FlushParityError: in     vl_logic
    );
end p405s_vct_top;
