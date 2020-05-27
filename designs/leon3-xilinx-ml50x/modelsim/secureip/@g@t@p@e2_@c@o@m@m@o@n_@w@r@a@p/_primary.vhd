library verilog;
use verilog.vl_types.all;
entity GTPE2_COMMON_WRAP is
    generic(
        BIAS_CFG        : string  := "0000000000000000";
        COMMON_CFG      : string  := "00000000";
        PLL0_CFG        : string  := "0B007D8";
        PLL0_DMON_CFG   : string  := "0";
        PLL0_FBDIV      : integer := 4;
        PLL0_FBDIV_45   : integer := 5;
        PLL0_INIT_CFG   : string  := "00001E";
        PLL0_LOCK_CFG   : string  := "1E8";
        PLL0_REFCLK_DIV : integer := 1;
        PLL1_CFG        : string  := "0B007D8";
        PLL1_DMON_CFG   : string  := "0";
        PLL1_FBDIV      : integer := 4;
        PLL1_FBDIV_45   : integer := 5;
        PLL1_INIT_CFG   : string  := "00001E";
        PLL1_LOCK_CFG   : string  := "1E8";
        PLL1_REFCLK_DIV : integer := 1;
        PLL_CLKOUT_CFG  : string  := "00000000";
        RSVD_ATTR0      : string  := "0000";
        RSVD_ATTR1      : string  := "0000";
        SIM_PLL0REFCLK_SEL: string  := "001";
        SIM_PLL1REFCLK_SEL: string  := "001";
        SIM_RESET_SPEEDUP: string  := "TRUE";
        SIM_VERSION     : string  := "1.0"
    );
    port(
        DMONITOROUT     : out    vl_logic_vector(7 downto 0);
        DRPDO           : out    vl_logic_vector(15 downto 0);
        DRPRDY          : out    vl_logic;
        PLL0FBCLKLOST   : out    vl_logic;
        PLL0LOCK        : out    vl_logic;
        PLL0OUTCLK      : out    vl_logic;
        PLL0OUTREFCLK   : out    vl_logic;
        PLL0REFCLKLOST  : out    vl_logic;
        PLL1FBCLKLOST   : out    vl_logic;
        PLL1LOCK        : out    vl_logic;
        PLL1OUTCLK      : out    vl_logic;
        PLL1OUTREFCLK   : out    vl_logic;
        PLL1REFCLKLOST  : out    vl_logic;
        PMARSVDOUT      : out    vl_logic_vector(15 downto 0);
        REFCLKOUTMONITOR0: out    vl_logic;
        REFCLKOUTMONITOR1: out    vl_logic;
        BGBYPASSB       : in     vl_logic;
        BGMONITORENB    : in     vl_logic;
        BGPDB           : in     vl_logic;
        BGRCALOVRD      : in     vl_logic_vector(4 downto 0);
        BGRCALOVRDENB   : in     vl_logic;
        DRPADDR         : in     vl_logic_vector(7 downto 0);
        DRPCLK          : in     vl_logic;
        DRPDI           : in     vl_logic_vector(15 downto 0);
        DRPEN           : in     vl_logic;
        DRPWE           : in     vl_logic;
        GTEASTREFCLK0   : in     vl_logic;
        GTEASTREFCLK1   : in     vl_logic;
        GTGREFCLK0      : in     vl_logic;
        GTGREFCLK1      : in     vl_logic;
        GTREFCLK0       : in     vl_logic;
        GTREFCLK1       : in     vl_logic;
        GTWESTREFCLK0   : in     vl_logic;
        GTWESTREFCLK1   : in     vl_logic;
        PLL0LOCKDETCLK  : in     vl_logic;
        PLL0LOCKEN      : in     vl_logic;
        PLL0PD          : in     vl_logic;
        PLL0REFCLKSEL   : in     vl_logic_vector(2 downto 0);
        PLL0RESET       : in     vl_logic;
        PLL1LOCKDETCLK  : in     vl_logic;
        PLL1LOCKEN      : in     vl_logic;
        PLL1PD          : in     vl_logic;
        PLL1REFCLKSEL   : in     vl_logic_vector(2 downto 0);
        PLL1RESET       : in     vl_logic;
        PLLRSVD1        : in     vl_logic_vector(15 downto 0);
        PLLRSVD2        : in     vl_logic_vector(4 downto 0);
        PMARSVD         : in     vl_logic_vector(7 downto 0);
        RCALENB         : in     vl_logic;
        GSR             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BIAS_CFG : constant is 1;
    attribute mti_svvh_generic_type of COMMON_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL0_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL0_DMON_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL0_FBDIV : constant is 2;
    attribute mti_svvh_generic_type of PLL0_FBDIV_45 : constant is 2;
    attribute mti_svvh_generic_type of PLL0_INIT_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL0_LOCK_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL0_REFCLK_DIV : constant is 2;
    attribute mti_svvh_generic_type of PLL1_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL1_DMON_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL1_FBDIV : constant is 2;
    attribute mti_svvh_generic_type of PLL1_FBDIV_45 : constant is 2;
    attribute mti_svvh_generic_type of PLL1_INIT_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL1_LOCK_CFG : constant is 1;
    attribute mti_svvh_generic_type of PLL1_REFCLK_DIV : constant is 2;
    attribute mti_svvh_generic_type of PLL_CLKOUT_CFG : constant is 1;
    attribute mti_svvh_generic_type of RSVD_ATTR0 : constant is 1;
    attribute mti_svvh_generic_type of RSVD_ATTR1 : constant is 1;
    attribute mti_svvh_generic_type of SIM_PLL0REFCLK_SEL : constant is 1;
    attribute mti_svvh_generic_type of SIM_PLL1REFCLK_SEL : constant is 1;
    attribute mti_svvh_generic_type of SIM_RESET_SPEEDUP : constant is 1;
    attribute mti_svvh_generic_type of SIM_VERSION : constant is 1;
end GTPE2_COMMON_WRAP;