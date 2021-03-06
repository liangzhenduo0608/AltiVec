library verilog;
use verilog.vl_types.all;
entity p405s_exeIfb is
    port(
        exe2Cr0EnL2     : out    vl_logic;
        exeBL2          : out    vl_logic;
        exeBcL2         : out    vl_logic;
        exeCr0EnL2      : out    vl_logic;
        exeCrAndL2      : out    vl_logic;
        exeCrBfEnL2     : out    vl_logic;
        exeCrNegBBL2    : out    vl_logic;
        exeCrNegBTL2    : out    vl_logic;
        exeCrOrL2       : out    vl_logic;
        exeCrUpdateL2   : out    vl_logic;
        exeCrXorL2      : out    vl_logic;
        exeCtrUpForBcctrL2: out    vl_logic;
        exeDataBrBIL2   : out    vl_logic_vector(0 to 4);
        exeDataBrBOL2   : out    vl_logic_vector(0 to 3);
        exeDataBr_5L2   : out    vl_logic;
        exeDataBr_21L2  : out    vl_logic;
        exeDataL2       : out    vl_logic_vector(6 to 20);
        exeDataLKL2     : out    vl_logic;
        exeIsyncL2      : out    vl_logic;
        exeLrUpdateL2   : out    vl_logic;
        exeMcrfL2       : out    vl_logic;
        exeMcrxrL2      : out    vl_logic;
        exeMfsprL2      : out    vl_logic;
        exeMtCtrL2      : out    vl_logic;
        exeMtcrfL2      : out    vl_logic;
        exeMtsprL2      : out    vl_logic;
        exeOpForExe2L2  : out    vl_logic;
        exeRfciL2       : out    vl_logic;
        exeRfiL2        : out    vl_logic;
        exeScL2         : out    vl_logic;
        exeStwcxL2      : out    vl_logic;
        exeTlbsxL2      : out    vl_logic;
        wbIsyncL2       : out    vl_logic;
        wbMtCtrL2       : out    vl_logic;
        wbMtLrL2        : out    vl_logic;
        APU_dcdCrField  : in     vl_logic_vector(0 to 2);
        APU_dcdRc       : in     vl_logic;
        APU_dcdValidOp_Neg: in     vl_logic;
        CB              : in     vl_logic;
        PCL_exe2DataE1  : in     vl_logic;
        PCL_exe2DataE2  : in     vl_logic;
        PCL_exe2FlushorClear: in     vl_logic;
        dcdCrUpdate     : in     vl_logic;
        dcdCtrUpForBcctr: in     vl_logic;
        dcdDataL2       : in     vl_logic_vector(5 to 21);
        dcdDataLK       : in     vl_logic;
        dcdLrUpdate     : in     vl_logic;
        dcdMtCtr        : in     vl_logic;
        dcdPlaB         : in     vl_logic;
        dcdPlaBc        : in     vl_logic;
        dcdPlaCr0En     : in     vl_logic;
        dcdPlaCrAnd     : in     vl_logic;
        dcdPlaCrBfEn    : in     vl_logic;
        dcdPlaCrNegBB   : in     vl_logic;
        dcdPlaCrNegBT   : in     vl_logic;
        dcdPlaCrOr      : in     vl_logic;
        dcdPlaCrXor     : in     vl_logic;
        dcdPlaExe2Op    : in     vl_logic;
        dcdPlaIsync     : in     vl_logic;
        dcdPlaMcrf      : in     vl_logic;
        dcdPlaMcrxr     : in     vl_logic;
        dcdPlaMfspr     : in     vl_logic;
        dcdPlaMtcrf     : in     vl_logic;
        dcdPlaMtspr     : in     vl_logic;
        dcdPlaRfci      : in     vl_logic;
        dcdPlaRfi       : in     vl_logic;
        dcdPlaSc        : in     vl_logic;
        dcdPlaStwcx     : in     vl_logic;
        dcdPlaTlbsx     : in     vl_logic;
        exeDataE1       : in     vl_logic;
        exeDataE2       : in     vl_logic;
        exeDataSel      : in     vl_logic;
        exeFlushorClear : in     vl_logic;
        exeMtCtr        : in     vl_logic;
        exeMtLr         : in     vl_logic;
        wbDataE1        : in     vl_logic;
        wbDataE2        : in     vl_logic;
        wbFlushOrClear  : in     vl_logic
    );
end p405s_exeIfb;
