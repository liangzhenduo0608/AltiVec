library verilog;
use verilog.vl_types.all;
entity p405s_ifb_top is
    port(
        IFB_TEL2        : out    vl_logic;
        IFB_TETypeL2    : out    vl_logic_vector(0 to 10);
        IFB_cntxSync    : out    vl_logic;
        IFB_cntxSyncOCM : out    vl_logic;
        IFB_coreSleepReqL2: out    vl_logic;
        IFB_dcdApu      : out    vl_logic_vector(0 to 31);
        IFB_dcdBubble   : out    vl_logic;
        IFB_dcdDataIn_Neg: out    vl_logic_vector(0 to 31);
        IFB_dcdFullApuL2: out    vl_logic;
        IFB_dcdFullL2   : out    vl_logic_vector(0 to 1);
        IFB_dcdRegE1    : out    vl_logic;
        IFB_dcdRegE2    : out    vl_logic;
        IFB_diagBus     : out    vl_logic_vector(0 to 7);
        IFB_exeClear    : out    vl_logic;
        IFB_exeCorrect  : out    vl_logic;
        IFB_exeDbgBrTaken: out    vl_logic;
        IFB_exeDisableDbL2: out    vl_logic;
        IFB_exeFlushA   : out    vl_logic;
        IFB_exeFlushB   : out    vl_logic;
        IFB_exeFullL2   : out    vl_logic;
        IFB_exeIfetchErrL2: out    vl_logic_vector(0 to 4);
        IFB_exeMcrxrL2  : out    vl_logic;
        IFB_exeOpForExe2L2: out    vl_logic;
        IFB_exeRfciL2   : out    vl_logic;
        IFB_exeRfiL2    : out    vl_logic;
        IFB_exeScL2     : out    vl_logic;
        IFB_extStopAck  : out    vl_logic;
        IFB_fetchReq    : out    vl_logic;
        IFB_iac1BitsEq  : out    vl_logic;
        IFB_iac1GtIar   : out    vl_logic;
        IFB_iac2BitsEq  : out    vl_logic;
        IFB_iac2GtIar   : out    vl_logic;
        IFB_iac3BitsEq  : out    vl_logic;
        IFB_iac3GtIar   : out    vl_logic;
        IFB_iac4BitsEq  : out    vl_logic;
        IFB_iac4GtIar   : out    vl_logic;
        IFB_icuCancelDataL2: out    vl_logic;
        IFB_isAbortForICU: out    vl_logic_vector(0 to 2);
        IFB_isAbortForMMU: out    vl_logic;
        IFB_isEA        : out    vl_logic_vector(0 to 29);
        IFB_isNL        : out    vl_logic;
        IFB_isNP        : out    vl_logic;
        IFB_isOcmAbus   : out    vl_logic_vector(0 to 29);
        IFB_nonSpecAcc  : out    vl_logic;
        IFB_ocmAbort    : out    vl_logic;
        IFB_postEntry   : out    vl_logic;
        IFB_rstStepPend : out    vl_logic;
        IFB_rstStuffPend: out    vl_logic;
        IFB_runStL2     : out    vl_logic;
        IFB_seIdleSt    : out    vl_logic;
        IFB_sprDataBus  : out    vl_logic_vector(0 to 31);
        IFB_stepStL2    : out    vl_logic;
        IFB_stopAck     : out    vl_logic;
        IFB_stuffStL2   : out    vl_logic;
        IFB_swapEnable  : out    vl_logic;
        IFB_swapStL2    : out    vl_logic;
        IFB_traceData   : out    vl_logic_vector(0 to 29);
        IFB_traceESL2   : out    vl_logic_vector(0 to 1);
        IFB_tracePipeHold: out    vl_logic;
        IFB_traceType   : out    vl_logic_vector(0 to 1);
        IFB_wbDisableDbL2: out    vl_logic;
        IFB_wbIar       : out    vl_logic_vector(0 to 29);
        APU_dcdCrField  : in     vl_logic_vector(0 to 2);
        APU_dcdRc       : in     vl_logic;
        APU_sleepReq    : in     vl_logic;
        CB              : in     vl_logic;
        DBG_exeTE       : in     vl_logic_vector(0 to 4);
        DBG_iacEn       : in     vl_logic;
        DBG_immdTE      : in     vl_logic_vector(0 to 2);
        DBG_stopReq     : in     vl_logic;
        DBG_wbTE        : in     vl_logic_vector(0 to 4);
        DBG_weakStopReq : in     vl_logic;
        DCU_sleepReq    : in     vl_logic;
        EXE_cc          : in     vl_logic_vector(0 to 3);
        EXE_sprDataBus  : in     vl_logic_vector(0 to 31);
        EXE_xer         : in     vl_logic_vector(0 to 2);
        ICU_ifbE        : in     vl_logic;
        ICU_ifbEDataBus : in     vl_logic_vector(0 to 31);
        ICU_ifbError    : in     vl_logic_vector(0 to 1);
        ICU_ifbO        : in     vl_logic;
        ICU_ifbODataBus : in     vl_logic_vector(0 to 31);
        ICU_isCA        : in     vl_logic;
        ICU_sleepReq    : in     vl_logic;
        ICU_syncAfterReset: in     vl_logic;
        ICU_traceEnable : in     vl_logic;
        JTG_dbdrPulse   : in     vl_logic;
        JTG_inst        : in     vl_logic_vector(0 to 31);
        JTG_step        : in     vl_logic;
        JTG_stopReq     : in     vl_logic;
        JTG_stuff       : in     vl_logic;
        LSSD_coreTestEn : in     vl_logic;
        MMU_isStatus    : in     vl_logic_vector(0 to 1);
        MMU_tlbSXHit    : in     vl_logic;
        PCL_Rbit        : in     vl_logic;
        PCL_blkFlush    : in     vl_logic;
        PCL_dIcmpForStep: in     vl_logic;
        PCL_dIcmpForStuff: in     vl_logic;
        PCL_dcdHoldForIFB: in     vl_logic_vector(0 to 2);
        PCL_exe2DataE1  : in     vl_logic;
        PCL_exe2DataE2  : in     vl_logic;
        PCL_exe2FlushorClear: in     vl_logic;
        PCL_exe2Full    : in     vl_logic;
        PCL_exe2IarE1   : in     vl_logic;
        PCL_exe2IarE2   : in     vl_logic;
        PCL_exeHoldForCr: in     vl_logic;
        PCL_exeIarHold  : in     vl_logic;
        PCL_icuOp_0     : in     vl_logic;
        PCL_sprHold     : in     vl_logic;
        PCL_wbClearTerms: in     vl_logic;
        PCL_wbFull      : in     vl_logic;
        PCL_wbHold      : in     vl_logic;
        PCL_wbStorageEnd: in     vl_logic;
        PCL_wbStorageOp : in     vl_logic;
        PGM_apuPresent  : in     vl_logic;
        TRC_fifoFull    : in     vl_logic;
        TRC_fifoOneEntryFree: in     vl_logic;
        TRC_se          : in     vl_logic;
        TRC_seCtrEqZeroL2: in     vl_logic;
        TRC_sleepReq    : in     vl_logic;
        VCT_anySwap     : in     vl_logic;
        VCT_msrWE       : in     vl_logic;
        VCT_swap01      : in     vl_logic;
        VCT_swap23      : in     vl_logic;
        VCT_vectorBus   : in     vl_logic_vector(0 to 7);
        VCT_wbFlush     : in     vl_logic;
        VCT_wbRfci      : in     vl_logic;
        VCT_wbRfi       : in     vl_logic;
        VCT_wbSuppress  : in     vl_logic;
        XXX_traceDisable: in     vl_logic;
        coreReset       : in     vl_logic;
        dcdValidOp_Neg  : in     vl_logic;
        MMU_isParityErr : in     vl_logic;
        ICU_parityErrE  : in     vl_logic;
        ICU_tagParityErr: in     vl_logic;
        ICU_parityErrO  : in     vl_logic;
        IFB_exeISideMachChk: out    vl_logic;
        ICU_CCR0IPE     : in     vl_logic;
        ICU_CCR0TPE     : in     vl_logic
    );
end p405s_ifb_top;
