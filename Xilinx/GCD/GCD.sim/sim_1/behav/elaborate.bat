@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 67f8c96cdf4c458d8584ba46c883d97b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot gcd_behav xil_defaultlib.gcd -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
