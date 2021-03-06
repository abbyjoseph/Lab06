@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Oct 09 16:33:59 -0500 2020
REM SW Build 2960000 on Wed Aug  5 22:57:20 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim sseg_decoder_test_behav -key {Behavioral:sim_2:Functional:sseg_decoder_test} -tclbatch sseg_decoder_test.tcl -log simulate.log"
call xsim  sseg_decoder_test_behav -key {Behavioral:sim_2:Functional:sseg_decoder_test} -tclbatch sseg_decoder_test.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
