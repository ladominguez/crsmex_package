timestamp =`date +%Y%m%d`
station   = $(0)
log_file  = log_$(timestamp)

_SUCCESS := "\033[32m[%s]\033[0m %s\n" # Green text for "printf"
_DANGER := "\033[31m[%s]\033[0m %s\n" # Red text for "printf"
clean:
	out_dir := $(shell grep ut_dir find_repeaters_v2026.py | head -1 | awk '{print $3}' | sed 's/"//g') 
	@read -p "Are you sure? [y/N] " ans && ans=$${ans:-N} ; \
        if [ $${ans} = y ] || [ $${ans} = Y ]; then \
	echo $(out_dir)/*.*; \
	share_dir = `grep share_dir find_repeaters_v2026.py | head -1 | awk '{print $3}' | sed 's/"//g')`; \
	echo $(share_dir)/*.*; \
        printf $(_SUCCESS) "YES" ; \
        else \
        printf $(_DANGER) "NO" ; \
        fi
	@echo 'Next steps...'

clean:

arig:
	echo "Processing station ARIG ... "
	python find_repeaters_v2026.py ARIG &> logs/$(log_file)_arig.info &	
caig:
	echo "Processing station CAIG ... "
	python find_repeaters_v2026.py CAIG &> $(log_file)_caig.info	
ccig:
	echo "Processing station CCIG ... "
	python find_repeaters_v2026.py CCIG &> $(log_file)_ccig.info 	
cmig:
	echo "Processing station CMIG ... "
	python find_repeaters_v2026.py CMIG &> $(log_file)_cmig.info 	
crig:
	echo "Processing station CRIG ... "
	python find_repeaters_v2026.py CRIG &> $(log_file)_crig.info 	
daig:
	echo "Processing station DAIG ... "
	python find_repeaters_v2026.py DAIG &> $(log_file)_daig.info 	
huig:
	echo "Processing station HUIG ... "
	python find_repeaters_v2026.py HUIG &> $(log_file)_huig.info 	
meig:
	echo "Processing station MEIG ... "
	python find_repeaters_v2026.py MEIG &> $(log_file)_meig.info 	
mmig:
	echo "Processing station MMIG ... "
	python find_repeaters_v2026.py MMIG &> $(log_file)_mmig.info 	
mgig:
	echo "Processing station MGIG ... "
	python find_repeaters_v2026.py MGIG &> $(log_file)_mgig.info 	
pcig:
	echo "Processing station PCIG ... "
	python find_repeaters_v2026.py PCIG &> $(log_file)_pcig.info 	
plig:
	echo "Processing station PLIG ... "
	python find_repeaters_v2026.py PLIG &> $(log_file)_plig.info 	
pnig:
	echo "Processing station PNIG ... "
	python find_repeaters_v2026.py PNIG &> $(log_file)_pnig.info 	
tlig:
	echo "Processing station TLIG ... "
	python find_repeaters_v2026.py TLIG &> $(log_file)_tlig.info 	
tlig_mac:
	echo "Processing station TLIG on Mac ... "
	python find_repeaters_v2023_mac.py TLIG &> $(log_file)_tlig.info 	
tgig:
	echo "Processing station TGIG ... "
	python find_repeaters_v2026.py TGIG &> $(log_file)_tgig.info 	
tgig_mac:
	echo "Processing station TGIG ... "
	python find_repeaters_v2023_mac.py TGIG &> $(log_file)_tgig.info 	
thig:
	echo "Processing station THIG ... "
	python find_repeaters_v2026.py THIG &> $(log_file)_thig.info &	
thig_mac:
	echo "Processing station THIG ... "
	python find_repeaters_v2023_mac.py THIG &> $(log_file)_thig.info &	
tuig:
	echo "Processing station TUIG ... "
	python find_repeaters_v2026.py TUIG &> $(log_file)_tuig.info 	
tuig_mac:
	echo "Processing station TUIG ... "
	python find_repeaters_v2023_mac.py TUIG &> $(log_file)_tuig.info &	
txig:
	echo "Processing station TXIG ... "
	python find_repeaters_v2026.py TXIG &> $(log_file)_txig.info 	
txig_mac:
	echo "Processing station TXIG ... "
	python find_repeaters_v2023_mac.py TXIG &> $(log_file)_txig.info &	
ziig:
	echo "Processing station ZIIG ... "
	python find_repeaters_v2026.py ZIIG &> $(log_file)_ziig.info &	
ziig_mac:
	echo "Processing station ZIIG ... "
	python find_repeaters_v2023_mac.py ZIIG &> $(log_file)_ziig.info &	
oxig:
	echo "Processing station OXIG ... "
	python find_repeaters_v2026.py OXIG &> $(log_file)_oxig.info &	
yoig:
	echo "Processing station YOIG ... "
	python find_repeaters_v2026.py YOIG &> $(log_file)_yoig.info &	
yoig_mac:
	echo "Processing station YOIG ... "
	python find_repeaters_v2023_mac.py YOIG &> $(log_file)_yoig.info &	
peig:
	echo "Processing station PEIG ... "
	python find_repeaters_v2026.py PEIG &> $(log_file)_peig.info &	
bb2i:
	echo "Processing station BB2I"
	python find_repeaters_v2026.py BB2I &> $(log_file)_bb2i.info &
bb4i:
	echo "Processing station BB4I"
	python find_repeaters_v2026.py BB4I &> $(log_file)_bb4i.info &
taui:
	echo "Processing station TAUI"
	python find_repeaters_v2026.py TAUI &> $(log_file)_taui.info &
1s01:
	echo "Processing station 1S01"
	python find_repeaters_v2026.py 1S01 &> $(log_file)_1S01.info &
1s03:
	echo "Processing station 1S03"
	python find_repeaters_v2026.py 1S03 &> $(log_file)_1S03.info &
1s04:
	echo "Processing station 1S04"
	python find_repeaters_v2026.py 1S04 &> $(log_file)_1S04.info &
1s05:
	echo "Processing station 1S05"
	python find_repeaters_v2026.py 1S05 &> $(log_file)_1S05.info &
1s07:
	echo "Processing station 1S07"
	python find_repeaters_v2026.py 1S07 &> $(log_file)_1S07.info &
1s08:
	echo "Processing station 1S08"
	python find_repeaters_v2026.py 1S08 &> $(log_file)_1S08.info &
1s09:
	echo "Processing station 1S09"
	python find_repeaters_v2026.py 1S09 &> $(log_file)_1S09.info &
omet:
	echo "Processing station OMET"
	python find_repeaters_v2026.py OMET &> $(log_file)_omet.info &
fast:
	echo "Processing station FAST"
	python find_repeaters_FAST.py FAST &> $(log_file)_fast.info &
ftig:
	echo "Processing station FTIG"
	python find_repeaters_FAST.py FTIG 
ftig2:
	echo "Processing station FTIG"
	python find_repeaters_FAST.py FTIG2 
fast3C:
	echo "Processing station FAST"
	python find_repeaters_FAST_3C.py FAST &> $(log_file)_fast3C.info &
check_test:
	echo "Check test ... >1.0 correlation error."
	python find_repeaters_v2026.py check_test &> $(log_file)_check_test.info 	
	
