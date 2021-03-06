-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Inverse is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (15 downto 0);
    N_read : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of Inverse is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_C : STD_LOGIC_VECTOR (3 downto 0) := "1100";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv5_14 : STD_LOGIC_VECTOR (4 downto 0) := "10100";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal xf_division_lut_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal xf_division_lut_ce0 : STD_LOGIC;
    signal xf_division_lut_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmpx_fu_254_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_reg_558 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_4_fu_264_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_4_reg_563 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_5_fu_274_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_5_reg_568 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_6_fu_284_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmpx_6_reg_573 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_8_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_reg_578 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_294_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_reg_582 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_300_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_reg_586 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_306_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_reg_590 : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_fu_320_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal B_L_fu_355_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal B_L_reg_606 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_33_fu_361_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_33_reg_612 : STD_LOGIC_VECTOR (4 downto 0);
    signal pos_4_fu_375_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal pos_5_fu_410_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal pos_7_fu_445_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp1_reg_111 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_312_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_fu_341_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_6_ph1_reg_122 : STD_LOGIC_VECTOR (2 downto 0);
    signal pos_6_ph2_reg_133 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_23_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_133_fu_367_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_6_ph3_reg_144 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_31_fu_431_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_135_fu_402_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_6_ph_reg_155 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_27_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_134_fu_437_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_pos_6_phi_fu_169_p8 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_phi_mux_block_2_phi_fu_186_p8 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_reg_200 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2_reg_211 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_3_reg_222 : STD_LOGIC_VECTOR (2 downto 0);
    signal N_cast_fu_526_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_mux_N_write_assign_phi_fu_236_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal N_write_assign_reg_233 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_phi_mux_p_0_in_phi_fu_246_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_0_in_reg_242 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_35_fu_516_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_fu_326_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_18_cast_fu_332_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_16_fu_336_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal pos_6_cast_fu_347_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal block_2_cast_fu_351_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_21_fu_381_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_23_cast_fu_387_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_22_fu_391_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_29_fu_416_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_30_cast_fu_422_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_30_fu_426_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_25_fu_451_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_27_cast_fu_457_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_26_fu_461_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_140_fu_477_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_38_cast_cast_fu_480_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_34_fu_483_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_32_fu_472_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_36_fu_489_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_37_fu_498_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal index_fu_508_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal N_fu_521_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal val_fu_531_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_condition_171 : BOOLEAN;
    signal ap_condition_174 : BOOLEAN;

    component Inverse_xf_divisicud IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (11 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    xf_division_lut_U : component Inverse_xf_divisicud
    generic map (
        DataWidth => 16,
        AddressRange => 2049,
        AddressWidth => 12)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => xf_division_lut_address0,
        ce0 => xf_division_lut_ce0,
        q0 => xf_division_lut_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg(0) <= '0';
                ap_return_0_preg(1) <= '0';
                ap_return_0_preg(2) <= '0';
                ap_return_0_preg(3) <= '0';
                ap_return_0_preg(4) <= '0';
                ap_return_0_preg(5) <= '0';
                ap_return_0_preg(6) <= '0';
                ap_return_0_preg(7) <= '0';
                ap_return_0_preg(8) <= '0';
                ap_return_0_preg(9) <= '0';
                ap_return_0_preg(10) <= '0';
                ap_return_0_preg(11) <= '0';
                ap_return_0_preg(12) <= '0';
                ap_return_0_preg(13) <= '0';
                ap_return_0_preg(14) <= '0';
                ap_return_0_preg(15) <= '0';
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                                        ap_return_0_preg(15 downto 0) <= val_fu_531_p1(15 downto 0);
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv8_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                    ap_return_1_preg <= ap_phi_mux_N_write_assign_phi_fu_236_p4;
                end if; 
            end if;
        end if;
    end process;


    N_write_assign_reg_233_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_8_fu_288_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                N_write_assign_reg_233 <= N_read;
            elsif (((tmp_8_reg_578 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                N_write_assign_reg_233 <= N_cast_fu_526_p1;
            end if; 
        end if;
    end process;

    p_0_in_reg_242_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_8_fu_288_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_0_in_reg_242 <= ap_const_lv16_FFFF;
            elsif (((tmp_8_reg_578 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                p_0_in_reg_242 <= xf_division_lut_q0;
            end if; 
        end if;
    end process;

    pos_6_ph1_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                if ((tmp_fu_312_p3 = ap_const_lv1_1)) then 
                    pos_6_ph1_reg_122 <= ap_const_lv3_0;
                elsif (((tmp_17_fu_341_p2 = ap_const_lv1_0) and (tmp_fu_312_p3 = ap_const_lv1_0))) then 
                    pos_6_ph1_reg_122 <= pos_fu_320_p2;
                end if;
            end if; 
        end if;
    end process;

    pos_6_ph2_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                if ((tmp_133_fu_367_p3 = ap_const_lv1_1)) then 
                    pos_6_ph2_reg_133 <= ap_const_lv3_0;
                elsif (((tmp_133_fu_367_p3 = ap_const_lv1_0) and (tmp_23_fu_396_p2 = ap_const_lv1_0))) then 
                    pos_6_ph2_reg_133 <= pos_4_fu_375_p2;
                end if;
            end if; 
        end if;
    end process;

    pos_6_ph3_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                if ((tmp_135_fu_402_p3 = ap_const_lv1_1)) then 
                    pos_6_ph3_reg_144 <= ap_const_lv3_0;
                elsif (((tmp_135_fu_402_p3 = ap_const_lv1_0) and (tmp_31_fu_431_p2 = ap_const_lv1_0))) then 
                    pos_6_ph3_reg_144 <= pos_5_fu_410_p2;
                end if;
            end if; 
        end if;
    end process;

    pos_6_ph_reg_155_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                if ((tmp_134_fu_437_p3 = ap_const_lv1_1)) then 
                    pos_6_ph_reg_155 <= ap_const_lv3_0;
                elsif (((tmp_134_fu_437_p3 = ap_const_lv1_0) and (tmp_27_fu_466_p2 = ap_const_lv1_0))) then 
                    pos_6_ph_reg_155 <= pos_7_fu_445_p2;
                end if;
            end if; 
        end if;
    end process;

    tmp1_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_294_p2 = ap_const_lv1_0) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                tmp1_reg_111 <= ap_const_lv3_0;
            elsif (((tmp_17_fu_341_p2 = ap_const_lv1_1) and (tmp_fu_312_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                tmp1_reg_111 <= pos_fu_320_p2;
            end if; 
        end if;
    end process;

    tmp_1_reg_200_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_10_fu_300_p2 = ap_const_lv1_0) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                tmp_1_reg_200 <= ap_const_lv3_0;
            elsif (((tmp_23_fu_396_p2 = ap_const_lv1_1) and (tmp_133_fu_367_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                tmp_1_reg_200 <= pos_4_fu_375_p2;
            end if; 
        end if;
    end process;

    tmp_2_reg_211_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_10_fu_300_p2 = ap_const_lv1_1) and (tmp_11_fu_306_p2 = ap_const_lv1_0) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                tmp_2_reg_211 <= ap_const_lv3_0;
            elsif (((tmp_31_fu_431_p2 = ap_const_lv1_1) and (tmp_135_fu_402_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                tmp_2_reg_211 <= pos_5_fu_410_p2;
            end if; 
        end if;
    end process;

    tmp_3_reg_222_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_11_fu_306_p2 = ap_const_lv1_1) and (tmp_10_fu_300_p2 = ap_const_lv1_1) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                tmp_3_reg_222 <= ap_const_lv3_0;
            elsif (((tmp_27_fu_466_p2 = ap_const_lv1_1) and (tmp_134_fu_437_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                tmp_3_reg_222 <= pos_7_fu_445_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                B_L_reg_606 <= B_L_fu_355_p2;
                tmp_33_reg_612 <= tmp_33_fu_361_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_10_reg_586 <= tmp_10_fu_300_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_10_fu_300_p2 = ap_const_lv1_1) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_11_reg_590 <= tmp_11_fu_306_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_8_reg_578 <= tmp_8_fu_288_p2;
                tmpx_4_reg_563 <= x(11 downto 8);
                tmpx_5_reg_568 <= x(7 downto 4);
                tmpx_6_reg_573 <= tmpx_6_fu_284_p1;
                tmpx_reg_558 <= x(15 downto 12);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_9_reg_582 <= tmp_9_fu_294_p2;
            end if;
        end if;
    end process;
    ap_return_0_preg(31 downto 16) <= "0000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, tmp_8_fu_288_p2, tmp_9_fu_294_p2, tmp_10_fu_300_p2, tmp_11_fu_306_p2, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, tmp_fu_312_p3, tmp_17_fu_341_p2, tmp_23_fu_396_p2, tmp_133_fu_367_p3, tmp_31_fu_431_p2, tmp_135_fu_402_p3, tmp_27_fu_466_p2, tmp_134_fu_437_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((tmp_11_fu_306_p2 = ap_const_lv1_1) and (tmp_10_fu_300_p2 = ap_const_lv1_1) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif (((tmp_10_fu_300_p2 = ap_const_lv1_1) and (tmp_11_fu_306_p2 = ap_const_lv1_0) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                elsif (((tmp_10_fu_300_p2 = ap_const_lv1_0) and (tmp_9_fu_294_p2 = ap_const_lv1_1) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif (((tmp_9_fu_294_p2 = ap_const_lv1_0) and (tmp_8_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((tmp_8_fu_288_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_17_fu_341_p2 = ap_const_lv1_1) and (tmp_fu_312_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state4 => 
                if (((tmp_23_fu_396_p2 = ap_const_lv1_1) and (tmp_133_fu_367_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state5 => 
                if (((tmp_31_fu_431_p2 = ap_const_lv1_1) and (tmp_135_fu_402_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state6 => 
                if (((tmp_27_fu_466_p2 = ap_const_lv1_1) and (tmp_134_fu_437_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    B_L_fu_355_p2 <= std_logic_vector(unsigned(pos_6_cast_fu_347_p1) + unsigned(block_2_cast_fu_351_p1));
    N_cast_fu_526_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(N_fu_521_p2),8));
    N_fu_521_p2 <= std_logic_vector(signed(ap_const_lv5_14) - signed(B_L_reg_606));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_condition_171_assign_proc : process(tmp_9_reg_582, tmp_10_reg_586, tmp_11_reg_590)
    begin
                ap_condition_171 <= ((tmp_11_reg_590 = ap_const_lv1_1) and (tmp_10_reg_586 = ap_const_lv1_1) and (tmp_9_reg_582 = ap_const_lv1_1));
    end process;


    ap_condition_174_assign_proc : process(tmp_9_reg_582, tmp_10_reg_586, tmp_11_reg_590)
    begin
                ap_condition_174 <= ((tmp_10_reg_586 = ap_const_lv1_1) and (tmp_11_reg_590 = ap_const_lv1_0) and (tmp_9_reg_582 = ap_const_lv1_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_N_write_assign_phi_fu_236_p4_assign_proc : process(tmp_8_reg_578, N_cast_fu_526_p1, N_write_assign_reg_233, ap_CS_fsm_state8)
    begin
        if (((tmp_8_reg_578 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_phi_mux_N_write_assign_phi_fu_236_p4 <= N_cast_fu_526_p1;
        else 
            ap_phi_mux_N_write_assign_phi_fu_236_p4 <= N_write_assign_reg_233;
        end if; 
    end process;


    ap_phi_mux_block_2_phi_fu_186_p8_assign_proc : process(tmp_9_reg_582, tmp_10_reg_586, ap_CS_fsm_state3, ap_condition_171, ap_condition_174)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
            if ((tmp_9_reg_582 = ap_const_lv1_0)) then 
                ap_phi_mux_block_2_phi_fu_186_p8 <= ap_const_lv4_0;
            elsif (((tmp_10_reg_586 = ap_const_lv1_0) and (tmp_9_reg_582 = ap_const_lv1_1))) then 
                ap_phi_mux_block_2_phi_fu_186_p8 <= ap_const_lv4_4;
            elsif ((ap_const_boolean_1 = ap_condition_174)) then 
                ap_phi_mux_block_2_phi_fu_186_p8 <= ap_const_lv4_8;
            elsif ((ap_const_boolean_1 = ap_condition_171)) then 
                ap_phi_mux_block_2_phi_fu_186_p8 <= ap_const_lv4_C;
            else 
                ap_phi_mux_block_2_phi_fu_186_p8 <= "XXXX";
            end if;
        else 
            ap_phi_mux_block_2_phi_fu_186_p8 <= "XXXX";
        end if; 
    end process;


    ap_phi_mux_p_0_in_phi_fu_246_p4_assign_proc : process(xf_division_lut_q0, tmp_8_reg_578, ap_CS_fsm_state8, p_0_in_reg_242)
    begin
        if (((tmp_8_reg_578 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_phi_mux_p_0_in_phi_fu_246_p4 <= xf_division_lut_q0;
        else 
            ap_phi_mux_p_0_in_phi_fu_246_p4 <= p_0_in_reg_242;
        end if; 
    end process;


    ap_phi_mux_pos_6_phi_fu_169_p8_assign_proc : process(tmp_9_reg_582, tmp_10_reg_586, ap_CS_fsm_state3, pos_6_ph1_reg_122, pos_6_ph2_reg_133, pos_6_ph3_reg_144, pos_6_ph_reg_155, ap_condition_171, ap_condition_174)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
            if ((tmp_9_reg_582 = ap_const_lv1_0)) then 
                ap_phi_mux_pos_6_phi_fu_169_p8 <= pos_6_ph1_reg_122;
            elsif (((tmp_10_reg_586 = ap_const_lv1_0) and (tmp_9_reg_582 = ap_const_lv1_1))) then 
                ap_phi_mux_pos_6_phi_fu_169_p8 <= pos_6_ph2_reg_133;
            elsif ((ap_const_boolean_1 = ap_condition_174)) then 
                ap_phi_mux_pos_6_phi_fu_169_p8 <= pos_6_ph3_reg_144;
            elsif ((ap_const_boolean_1 = ap_condition_171)) then 
                ap_phi_mux_pos_6_phi_fu_169_p8 <= pos_6_ph_reg_155;
            else 
                ap_phi_mux_pos_6_phi_fu_169_p8 <= "XXX";
            end if;
        else 
            ap_phi_mux_pos_6_phi_fu_169_p8 <= "XXX";
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(ap_CS_fsm_state8, val_fu_531_p1, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_return_0 <= val_fu_531_p1;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(ap_phi_mux_N_write_assign_phi_fu_236_p4, ap_CS_fsm_state8, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_return_1 <= ap_phi_mux_N_write_assign_phi_fu_236_p4;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;

    block_2_cast_fu_351_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_block_2_phi_fu_186_p8),5));
    index_fu_508_p3 <= 
        tmp_36_fu_489_p4 when (tmp_32_fu_472_p2(0) = '1') else 
        tmp_37_fu_498_p4;
    pos_4_fu_375_p2 <= std_logic_vector(unsigned(tmp_1_reg_200) + unsigned(ap_const_lv3_1));
    pos_5_fu_410_p2 <= std_logic_vector(unsigned(tmp_2_reg_211) + unsigned(ap_const_lv3_1));
    pos_6_cast_fu_347_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_pos_6_phi_fu_169_p8),5));
    pos_7_fu_445_p2 <= std_logic_vector(unsigned(tmp_3_reg_222) + unsigned(ap_const_lv3_1));
    pos_fu_320_p2 <= std_logic_vector(unsigned(tmp1_reg_111) + unsigned(ap_const_lv3_1));
    tmp_10_fu_300_p2 <= "1" when (tmpx_4_fu_264_p4 = ap_const_lv4_0) else "0";
    tmp_11_fu_306_p2 <= "1" when (tmpx_5_fu_274_p4 = ap_const_lv4_0) else "0";
    tmp_133_fu_367_p3 <= tmp_1_reg_200(2 downto 2);
    tmp_134_fu_437_p3 <= tmp_3_reg_222(2 downto 2);
    tmp_135_fu_402_p3 <= tmp_2_reg_211(2 downto 2);
    tmp_140_fu_477_p1 <= x(15 - 1 downto 0);
    tmp_15_fu_326_p2 <= std_logic_vector(unsigned(ap_const_lv3_3) - unsigned(tmp1_reg_111));
    tmp_16_fu_336_p2 <= std_logic_vector(shift_right(unsigned(tmpx_reg_558),to_integer(unsigned('0' & tmp_18_cast_fu_332_p1(4-1 downto 0)))));
    tmp_17_fu_341_p2 <= "1" when (tmp_16_fu_336_p2 = ap_const_lv4_0) else "0";
    tmp_18_cast_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_15_fu_326_p2),4));
    tmp_21_fu_381_p2 <= std_logic_vector(unsigned(ap_const_lv3_3) - unsigned(tmp_1_reg_200));
    tmp_22_fu_391_p2 <= std_logic_vector(shift_right(unsigned(tmpx_4_reg_563),to_integer(unsigned('0' & tmp_23_cast_fu_387_p1(4-1 downto 0)))));
    tmp_23_cast_fu_387_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_21_fu_381_p2),4));
    tmp_23_fu_396_p2 <= "1" when (tmp_22_fu_391_p2 = ap_const_lv4_0) else "0";
    tmp_25_fu_451_p2 <= std_logic_vector(unsigned(ap_const_lv3_3) - unsigned(tmp_3_reg_222));
    tmp_26_fu_461_p2 <= std_logic_vector(shift_right(unsigned(tmpx_6_reg_573),to_integer(unsigned('0' & tmp_27_cast_fu_457_p1(4-1 downto 0)))));
    tmp_27_cast_fu_457_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_25_fu_451_p2),4));
    tmp_27_fu_466_p2 <= "1" when (tmp_26_fu_461_p2 = ap_const_lv4_0) else "0";
    tmp_29_fu_416_p2 <= std_logic_vector(unsigned(ap_const_lv3_3) - unsigned(tmp_2_reg_211));
    tmp_30_cast_fu_422_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_29_fu_416_p2),4));
    tmp_30_fu_426_p2 <= std_logic_vector(shift_right(unsigned(tmpx_5_reg_568),to_integer(unsigned('0' & tmp_30_cast_fu_422_p1(4-1 downto 0)))));
    tmp_31_fu_431_p2 <= "1" when (tmp_30_fu_426_p2 = ap_const_lv4_0) else "0";
    tmp_32_fu_472_p2 <= "1" when (B_L_reg_606 = ap_const_lv5_0) else "0";
    tmp_33_fu_361_p2 <= std_logic_vector(signed(ap_const_lv5_1F) + signed(B_L_fu_355_p2));
    tmp_34_fu_483_p2 <= std_logic_vector(shift_left(unsigned(tmp_140_fu_477_p1),to_integer(unsigned('0' & tmp_38_cast_cast_fu_480_p1(15-1 downto 0)))));
    tmp_35_fu_516_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_fu_508_p3),64));
    tmp_36_fu_489_p4 <= x(14 downto 4);
    tmp_37_fu_498_p4 <= tmp_34_fu_483_p2(14 downto 4);
    tmp_38_cast_cast_fu_480_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_33_reg_612),15));
    tmp_8_fu_288_p2 <= "1" when (x = ap_const_lv16_0) else "0";
    tmp_9_fu_294_p2 <= "1" when (tmpx_fu_254_p4 = ap_const_lv4_0) else "0";
    tmp_fu_312_p3 <= tmp1_reg_111(2 downto 2);
    tmpx_4_fu_264_p4 <= x(11 downto 8);
    tmpx_5_fu_274_p4 <= x(7 downto 4);
    tmpx_6_fu_284_p1 <= x(4 - 1 downto 0);
    tmpx_fu_254_p4 <= x(15 downto 12);
    val_fu_531_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_p_0_in_phi_fu_246_p4),32));
    xf_division_lut_address0 <= tmp_35_fu_516_p1(12 - 1 downto 0);

    xf_division_lut_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            xf_division_lut_ce0 <= ap_const_logic_1;
        else 
            xf_division_lut_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
