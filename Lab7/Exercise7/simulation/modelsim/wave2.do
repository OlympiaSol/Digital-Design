view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 7 0 /ram256x8/address 
wave create -pattern none -portmode in -language vhdl /ram256x8/clock 
wave create -pattern none -portmode in -language vhdl -range 7 0 /ram256x8/data 
wave create -pattern none -portmode in -language vhdl /ram256x8/wren 
wave create -pattern none -portmode out -language vhdl -range 7 0 /ram256x8/q 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 1000ns NewSig:/ram256x8/address 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 40ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/ram256x8/clock 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 1000ns NewSig:/ram256x8/data 
{wave export -file ram256x8_tb -starttime 0 -endtime 1000 -format vhdl -designunit ram256x8} 
WaveCollapseAll -1
wave clipboard restore
