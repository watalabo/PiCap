tshark -r $1.pcap -Y 'wlan.fc.type_subtype == 0x000e' -T fields -e frame.time -e wlan.da -e wlan.vht.mimo_control.ncindex -e wlan.vht.mimo_control.nrindex -e wlan.vht.compressed_beamforming_report -e wlan.vht.mimo_control.codebookinfo -e wlan.vht.mimo_control.grouping -e wlan.vht.mimo_control.chanwidth -E header=y -E separator=, -E quote=d > $1.csv
