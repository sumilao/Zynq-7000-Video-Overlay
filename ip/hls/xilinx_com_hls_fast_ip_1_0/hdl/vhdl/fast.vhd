-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fast is
port (
    p_src_mat_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_src_mat_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_src_mat_data_V_empty_n : IN STD_LOGIC;
    p_src_mat_data_V_read : OUT STD_LOGIC;
    p_dst_mat_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_mat_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_mat_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_mat_data_V_full_n : IN STD_LOGIC;
    p_dst_mat_data_V_write : OUT STD_LOGIC;
    p_threshold : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p_src_mat_rows_read_ap_vld : IN STD_LOGIC;
    p_src_mat_cols_read_ap_vld : IN STD_LOGIC;
    p_dst_mat_rows_read_ap_vld : IN STD_LOGIC;
    p_dst_mat_cols_read_ap_vld : IN STD_LOGIC;
    p_threshold_ap_vld : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of fast is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal fast_Loop_1_proc5765_U0_ap_start : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_start_full_n : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_ap_done : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_ap_continue : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_ap_idle : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_ap_ready : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_start_out : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_start_write : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_src_mat_data_V_read : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_src_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal fast_Loop_1_proc5765_U0_p_src_V_V_write : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_src_mat_rows_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal fast_Loop_1_proc5765_U0_p_src_mat_rows_read_out_write : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_src_mat_cols_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal fast_Loop_1_proc5765_U0_p_src_mat_cols_read_out_write : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_dst_mat_rows_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal fast_Loop_1_proc5765_U0_p_dst_mat_rows_read_out_write : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_dst_mat_cols_read_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal fast_Loop_1_proc5765_U0_p_dst_mat_cols_read_out_write : STD_LOGIC;
    signal fast_Loop_1_proc5765_U0_p_threshold_out_din : STD_LOGIC_VECTOR (7 downto 0);
    signal fast_Loop_1_proc5765_U0_p_threshold_out_write : STD_LOGIC;
    signal xFFastCornerDetectio_U0_p_strm_in_V_V_read : STD_LOGIC;
    signal xFFastCornerDetectio_U0_p_strm_out_V_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal xFFastCornerDetectio_U0_p_strm_out_V_V_write : STD_LOGIC;
    signal xFFastCornerDetectio_U0_p_src_mat_rows_read_read : STD_LOGIC;
    signal xFFastCornerDetectio_U0_p_src_mat_cols_read_read : STD_LOGIC;
    signal xFFastCornerDetectio_U0_p_threshold_read : STD_LOGIC;
    signal xFFastCornerDetectio_U0_ap_done : STD_LOGIC;
    signal xFFastCornerDetectio_U0_ap_start : STD_LOGIC;
    signal xFFastCornerDetectio_U0_ap_ready : STD_LOGIC;
    signal xFFastCornerDetectio_U0_ap_idle : STD_LOGIC;
    signal xFFastCornerDetectio_U0_ap_continue : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_ap_start : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_ap_done : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_ap_continue : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_ap_idle : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_ap_ready : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_p_dst_mat_rows_read_read : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_p_dst_mat_cols_read_read : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_p_dst_V_V_read : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_p_dst_mat_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal fast_Loop_2_proc58_U0_p_dst_mat_data_V_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_src_V_V_full_n : STD_LOGIC;
    signal p_src_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_src_V_V_empty_n : STD_LOGIC;
    signal p_src_mat_rows_read_c_full_n : STD_LOGIC;
    signal p_src_mat_rows_read_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_src_mat_rows_read_c_empty_n : STD_LOGIC;
    signal p_src_mat_cols_read_c_full_n : STD_LOGIC;
    signal p_src_mat_cols_read_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_src_mat_cols_read_c_empty_n : STD_LOGIC;
    signal p_dst_mat_rows_read_c_full_n : STD_LOGIC;
    signal p_dst_mat_rows_read_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_dst_mat_rows_read_c_empty_n : STD_LOGIC;
    signal p_dst_mat_cols_read_c_full_n : STD_LOGIC;
    signal p_dst_mat_cols_read_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_dst_mat_cols_read_c_empty_n : STD_LOGIC;
    signal p_threshold_c_full_n : STD_LOGIC;
    signal p_threshold_c_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_threshold_c_empty_n : STD_LOGIC;
    signal p_dst_V_V_full_n : STD_LOGIC;
    signal p_dst_V_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal p_dst_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_xFFastCornerDetectio_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFFastCornerDetectio_U0_full_n : STD_LOGIC;
    signal start_for_xFFastCornerDetectio_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xFFastCornerDetectio_U0_empty_n : STD_LOGIC;
    signal start_for_fast_Loop_2_proc58_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fast_Loop_2_proc58_U0_full_n : STD_LOGIC;
    signal start_for_fast_Loop_2_proc58_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fast_Loop_2_proc58_U0_empty_n : STD_LOGIC;
    signal xFFastCornerDetectio_U0_start_full_n : STD_LOGIC;
    signal xFFastCornerDetectio_U0_start_write : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_start_full_n : STD_LOGIC;
    signal fast_Loop_2_proc58_U0_start_write : STD_LOGIC;

    component fast_Loop_1_proc5765 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src_mat_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_mat_data_V_empty_n : IN STD_LOGIC;
        p_src_mat_data_V_read : OUT STD_LOGIC;
        p_src_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_src_V_V_full_n : IN STD_LOGIC;
        p_src_V_V_write : OUT STD_LOGIC;
        p_dst_mat_rows_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_mat_cols_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_threshold : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_mat_rows_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_read_out_full_n : IN STD_LOGIC;
        p_src_mat_rows_read_out_write : OUT STD_LOGIC;
        p_src_mat_cols_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read_out_full_n : IN STD_LOGIC;
        p_src_mat_cols_read_out_write : OUT STD_LOGIC;
        p_dst_mat_rows_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_dst_mat_rows_read_out_full_n : IN STD_LOGIC;
        p_dst_mat_rows_read_out_write : OUT STD_LOGIC;
        p_dst_mat_cols_read_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        p_dst_mat_cols_read_out_full_n : IN STD_LOGIC;
        p_dst_mat_cols_read_out_write : OUT STD_LOGIC;
        p_threshold_out_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_threshold_out_full_n : IN STD_LOGIC;
        p_threshold_out_write : OUT STD_LOGIC );
    end component;


    component xFFastCornerDetectio IS
    port (
        p_strm_in_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_strm_in_V_V_empty_n : IN STD_LOGIC;
        p_strm_in_V_V_read : OUT STD_LOGIC;
        p_strm_out_V_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_strm_out_V_V_full_n : IN STD_LOGIC;
        p_strm_out_V_V_write : OUT STD_LOGIC;
        p_src_mat_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_read_empty_n : IN STD_LOGIC;
        p_src_mat_rows_read_read : OUT STD_LOGIC;
        p_src_mat_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_read_empty_n : IN STD_LOGIC;
        p_src_mat_cols_read_read : OUT STD_LOGIC;
        p_threshold_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_threshold_empty_n : IN STD_LOGIC;
        p_threshold_read : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component fast_Loop_2_proc58 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_dst_mat_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_mat_rows_read_empty_n : IN STD_LOGIC;
        p_dst_mat_rows_read_read : OUT STD_LOGIC;
        p_dst_mat_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_dst_mat_cols_read_empty_n : IN STD_LOGIC;
        p_dst_mat_cols_read_read : OUT STD_LOGIC;
        p_dst_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_dst_V_V_empty_n : IN STD_LOGIC;
        p_dst_V_V_read : OUT STD_LOGIC;
        p_dst_mat_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_mat_data_V_full_n : IN STD_LOGIC;
        p_dst_mat_data_V_write : OUT STD_LOGIC );
    end component;


    component fifo_w8_d2_A_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_xFFastCg8j IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_fast_Lohbi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    fast_Loop_1_proc5765_U0 : component fast_Loop_1_proc5765
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => fast_Loop_1_proc5765_U0_ap_start,
        start_full_n => fast_Loop_1_proc5765_U0_start_full_n,
        ap_done => fast_Loop_1_proc5765_U0_ap_done,
        ap_continue => fast_Loop_1_proc5765_U0_ap_continue,
        ap_idle => fast_Loop_1_proc5765_U0_ap_idle,
        ap_ready => fast_Loop_1_proc5765_U0_ap_ready,
        start_out => fast_Loop_1_proc5765_U0_start_out,
        start_write => fast_Loop_1_proc5765_U0_start_write,
        p_src_mat_rows_read => p_src_mat_rows_read,
        p_src_mat_cols_read => p_src_mat_cols_read,
        p_src_mat_data_V_dout => p_src_mat_data_V_dout,
        p_src_mat_data_V_empty_n => p_src_mat_data_V_empty_n,
        p_src_mat_data_V_read => fast_Loop_1_proc5765_U0_p_src_mat_data_V_read,
        p_src_V_V_din => fast_Loop_1_proc5765_U0_p_src_V_V_din,
        p_src_V_V_full_n => p_src_V_V_full_n,
        p_src_V_V_write => fast_Loop_1_proc5765_U0_p_src_V_V_write,
        p_dst_mat_rows_read => p_dst_mat_rows_read,
        p_dst_mat_cols_read => p_dst_mat_cols_read,
        p_threshold => p_threshold,
        p_src_mat_rows_read_out_din => fast_Loop_1_proc5765_U0_p_src_mat_rows_read_out_din,
        p_src_mat_rows_read_out_full_n => p_src_mat_rows_read_c_full_n,
        p_src_mat_rows_read_out_write => fast_Loop_1_proc5765_U0_p_src_mat_rows_read_out_write,
        p_src_mat_cols_read_out_din => fast_Loop_1_proc5765_U0_p_src_mat_cols_read_out_din,
        p_src_mat_cols_read_out_full_n => p_src_mat_cols_read_c_full_n,
        p_src_mat_cols_read_out_write => fast_Loop_1_proc5765_U0_p_src_mat_cols_read_out_write,
        p_dst_mat_rows_read_out_din => fast_Loop_1_proc5765_U0_p_dst_mat_rows_read_out_din,
        p_dst_mat_rows_read_out_full_n => p_dst_mat_rows_read_c_full_n,
        p_dst_mat_rows_read_out_write => fast_Loop_1_proc5765_U0_p_dst_mat_rows_read_out_write,
        p_dst_mat_cols_read_out_din => fast_Loop_1_proc5765_U0_p_dst_mat_cols_read_out_din,
        p_dst_mat_cols_read_out_full_n => p_dst_mat_cols_read_c_full_n,
        p_dst_mat_cols_read_out_write => fast_Loop_1_proc5765_U0_p_dst_mat_cols_read_out_write,
        p_threshold_out_din => fast_Loop_1_proc5765_U0_p_threshold_out_din,
        p_threshold_out_full_n => p_threshold_c_full_n,
        p_threshold_out_write => fast_Loop_1_proc5765_U0_p_threshold_out_write);

    xFFastCornerDetectio_U0 : component xFFastCornerDetectio
    port map (
        p_strm_in_V_V_dout => p_src_V_V_dout,
        p_strm_in_V_V_empty_n => p_src_V_V_empty_n,
        p_strm_in_V_V_read => xFFastCornerDetectio_U0_p_strm_in_V_V_read,
        p_strm_out_V_V_din => xFFastCornerDetectio_U0_p_strm_out_V_V_din,
        p_strm_out_V_V_full_n => p_dst_V_V_full_n,
        p_strm_out_V_V_write => xFFastCornerDetectio_U0_p_strm_out_V_V_write,
        p_src_mat_rows_read_dout => p_src_mat_rows_read_c_dout,
        p_src_mat_rows_read_empty_n => p_src_mat_rows_read_c_empty_n,
        p_src_mat_rows_read_read => xFFastCornerDetectio_U0_p_src_mat_rows_read_read,
        p_src_mat_cols_read_dout => p_src_mat_cols_read_c_dout,
        p_src_mat_cols_read_empty_n => p_src_mat_cols_read_c_empty_n,
        p_src_mat_cols_read_read => xFFastCornerDetectio_U0_p_src_mat_cols_read_read,
        p_threshold_dout => p_threshold_c_dout,
        p_threshold_empty_n => p_threshold_c_empty_n,
        p_threshold_read => xFFastCornerDetectio_U0_p_threshold_read,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_done => xFFastCornerDetectio_U0_ap_done,
        ap_start => xFFastCornerDetectio_U0_ap_start,
        ap_ready => xFFastCornerDetectio_U0_ap_ready,
        ap_idle => xFFastCornerDetectio_U0_ap_idle,
        ap_continue => xFFastCornerDetectio_U0_ap_continue);

    fast_Loop_2_proc58_U0 : component fast_Loop_2_proc58
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => fast_Loop_2_proc58_U0_ap_start,
        ap_done => fast_Loop_2_proc58_U0_ap_done,
        ap_continue => fast_Loop_2_proc58_U0_ap_continue,
        ap_idle => fast_Loop_2_proc58_U0_ap_idle,
        ap_ready => fast_Loop_2_proc58_U0_ap_ready,
        p_dst_mat_rows_read_dout => p_dst_mat_rows_read_c_dout,
        p_dst_mat_rows_read_empty_n => p_dst_mat_rows_read_c_empty_n,
        p_dst_mat_rows_read_read => fast_Loop_2_proc58_U0_p_dst_mat_rows_read_read,
        p_dst_mat_cols_read_dout => p_dst_mat_cols_read_c_dout,
        p_dst_mat_cols_read_empty_n => p_dst_mat_cols_read_c_empty_n,
        p_dst_mat_cols_read_read => fast_Loop_2_proc58_U0_p_dst_mat_cols_read_read,
        p_dst_V_V_dout => p_dst_V_V_dout,
        p_dst_V_V_empty_n => p_dst_V_V_empty_n,
        p_dst_V_V_read => fast_Loop_2_proc58_U0_p_dst_V_V_read,
        p_dst_mat_data_V_din => fast_Loop_2_proc58_U0_p_dst_mat_data_V_din,
        p_dst_mat_data_V_full_n => p_dst_mat_data_V_full_n,
        p_dst_mat_data_V_write => fast_Loop_2_proc58_U0_p_dst_mat_data_V_write);

    p_src_V_V_U : component fifo_w8_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_Loop_1_proc5765_U0_p_src_V_V_din,
        if_full_n => p_src_V_V_full_n,
        if_write => fast_Loop_1_proc5765_U0_p_src_V_V_write,
        if_dout => p_src_V_V_dout,
        if_empty_n => p_src_V_V_empty_n,
        if_read => xFFastCornerDetectio_U0_p_strm_in_V_V_read);

    p_src_mat_rows_read_c_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_Loop_1_proc5765_U0_p_src_mat_rows_read_out_din,
        if_full_n => p_src_mat_rows_read_c_full_n,
        if_write => fast_Loop_1_proc5765_U0_p_src_mat_rows_read_out_write,
        if_dout => p_src_mat_rows_read_c_dout,
        if_empty_n => p_src_mat_rows_read_c_empty_n,
        if_read => xFFastCornerDetectio_U0_p_src_mat_rows_read_read);

    p_src_mat_cols_read_c_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_Loop_1_proc5765_U0_p_src_mat_cols_read_out_din,
        if_full_n => p_src_mat_cols_read_c_full_n,
        if_write => fast_Loop_1_proc5765_U0_p_src_mat_cols_read_out_write,
        if_dout => p_src_mat_cols_read_c_dout,
        if_empty_n => p_src_mat_cols_read_c_empty_n,
        if_read => xFFastCornerDetectio_U0_p_src_mat_cols_read_read);

    p_dst_mat_rows_read_c_U : component fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_Loop_1_proc5765_U0_p_dst_mat_rows_read_out_din,
        if_full_n => p_dst_mat_rows_read_c_full_n,
        if_write => fast_Loop_1_proc5765_U0_p_dst_mat_rows_read_out_write,
        if_dout => p_dst_mat_rows_read_c_dout,
        if_empty_n => p_dst_mat_rows_read_c_empty_n,
        if_read => fast_Loop_2_proc58_U0_p_dst_mat_rows_read_read);

    p_dst_mat_cols_read_c_U : component fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_Loop_1_proc5765_U0_p_dst_mat_cols_read_out_din,
        if_full_n => p_dst_mat_cols_read_c_full_n,
        if_write => fast_Loop_1_proc5765_U0_p_dst_mat_cols_read_out_write,
        if_dout => p_dst_mat_cols_read_c_dout,
        if_empty_n => p_dst_mat_cols_read_c_empty_n,
        if_read => fast_Loop_2_proc58_U0_p_dst_mat_cols_read_read);

    p_threshold_c_U : component fifo_w8_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_Loop_1_proc5765_U0_p_threshold_out_din,
        if_full_n => p_threshold_c_full_n,
        if_write => fast_Loop_1_proc5765_U0_p_threshold_out_write,
        if_dout => p_threshold_c_dout,
        if_empty_n => p_threshold_c_empty_n,
        if_read => xFFastCornerDetectio_U0_p_threshold_read);

    p_dst_V_V_U : component fifo_w8_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => xFFastCornerDetectio_U0_p_strm_out_V_V_din,
        if_full_n => p_dst_V_V_full_n,
        if_write => xFFastCornerDetectio_U0_p_strm_out_V_V_write,
        if_dout => p_dst_V_V_dout,
        if_empty_n => p_dst_V_V_empty_n,
        if_read => fast_Loop_2_proc58_U0_p_dst_V_V_read);

    start_for_xFFastCg8j_U : component start_for_xFFastCg8j
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xFFastCornerDetectio_U0_din,
        if_full_n => start_for_xFFastCornerDetectio_U0_full_n,
        if_write => fast_Loop_1_proc5765_U0_start_write,
        if_dout => start_for_xFFastCornerDetectio_U0_dout,
        if_empty_n => start_for_xFFastCornerDetectio_U0_empty_n,
        if_read => xFFastCornerDetectio_U0_ap_ready);

    start_for_fast_Lohbi_U : component start_for_fast_Lohbi
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_fast_Loop_2_proc58_U0_din,
        if_full_n => start_for_fast_Loop_2_proc58_U0_full_n,
        if_write => fast_Loop_1_proc5765_U0_start_write,
        if_dout => start_for_fast_Loop_2_proc58_U0_dout,
        if_empty_n => start_for_fast_Loop_2_proc58_U0_empty_n,
        if_read => fast_Loop_2_proc58_U0_ap_ready);




    ap_done <= fast_Loop_2_proc58_U0_ap_done;
    ap_idle <= (xFFastCornerDetectio_U0_ap_idle and fast_Loop_2_proc58_U0_ap_idle and fast_Loop_1_proc5765_U0_ap_idle);
    ap_ready <= fast_Loop_1_proc5765_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= fast_Loop_2_proc58_U0_ap_done;
    ap_sync_ready <= fast_Loop_1_proc5765_U0_ap_ready;
    fast_Loop_1_proc5765_U0_ap_continue <= ap_const_logic_1;
    fast_Loop_1_proc5765_U0_ap_start <= ap_start;
    fast_Loop_1_proc5765_U0_start_full_n <= (start_for_xFFastCornerDetectio_U0_full_n and start_for_fast_Loop_2_proc58_U0_full_n);
    fast_Loop_2_proc58_U0_ap_continue <= ap_continue;
    fast_Loop_2_proc58_U0_ap_start <= start_for_fast_Loop_2_proc58_U0_empty_n;
    fast_Loop_2_proc58_U0_start_full_n <= ap_const_logic_1;
    fast_Loop_2_proc58_U0_start_write <= ap_const_logic_0;
    p_dst_mat_data_V_din <= fast_Loop_2_proc58_U0_p_dst_mat_data_V_din;
    p_dst_mat_data_V_write <= fast_Loop_2_proc58_U0_p_dst_mat_data_V_write;
    p_src_mat_data_V_read <= fast_Loop_1_proc5765_U0_p_src_mat_data_V_read;
    start_for_fast_Loop_2_proc58_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_xFFastCornerDetectio_U0_din <= (0=>ap_const_logic_1, others=>'-');
    xFFastCornerDetectio_U0_ap_continue <= ap_const_logic_1;
    xFFastCornerDetectio_U0_ap_start <= start_for_xFFastCornerDetectio_U0_empty_n;
    xFFastCornerDetectio_U0_start_full_n <= ap_const_logic_1;
    xFFastCornerDetectio_U0_start_write <= ap_const_logic_0;
end behav;