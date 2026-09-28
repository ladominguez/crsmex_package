timestamp =`date +%Y%m%d`
log_file  = log_$(timestamp)
python find_repeaters_v2026.py ARIG &> ARIG/log/$(log_file)_arig.info &
#python find_repeaters_v2026.py CAIG &> CAIG/log/$(log_file)_caig.info &
python find_repeaters_v2026.py CCIG &> CCIG/log/$(log_file)_ccig.info &	
python find_repeaters_v2026.py CMIG &> CMIG/log/$(log_file)_cmig.info &	
python find_repeaters_v2026.py CRIG &> CRIG/log/$(log_file)_crig.info &	
wait

timestamp =`date +%Y%m%d`
log_file  = log_$(timestamp)
python find_repeaters_v2026.py DAIG &> DAIG/log/$(log_file)_daig.info &	
python find_repeaters_v2026.py HUIG &> HUIG/log/$(log_file)_huig.info &	
python find_repeaters_v2026.py MEIG &> MEIG/log/$(log_file)_meig.info &	
python find_repeaters_v2026.py MMIG &> MMIG/log/$(log_file)_mmig.info &	
wait


timestamp =`date +%Y%m%d`
log_file  = log_$(timestamp)
python find_repeaters_v2026.py MGIG &> MGIG/log/$(log_file)_mgig.info &	
python find_repeaters_v2026.py PCIG &> PCIG/log/$(log_file)_pcig.info &	
python find_repeaters_v2026.py PLIG &> PLIG/log/$(log_file)_plig.info &	
python find_repeaters_v2026.py PNIG &> PNIG/log/$(log_file)_pnig.info &	
wait


timestamp =`date +%Y%m%d`
log_file  = log_$(timestamp)
python find_repeaters_v2026.py TLIG &> TLIG/log/$(log_file)_tlig.info &	
python find_repeaters_v2026.py TGIG &> TGIG/log/$(log_file)_tgig.info &	
python find_repeaters_v2026.py THIG &> THIG/log/$(log_file)_thig.info &	
python find_repeaters_v2026.py TUIG &> TUIG/log/$(log_file)_tuig.info &	
wait

timestamp =`date +%Y%m%d`
log_file  = log_$(timestamp)
python find_repeaters_v2026.py TXIG &> TXIG/log/$(log_file)_txig.info &	
python find_repeaters_v2026.py ZIIG &> ZIIG/log/$(log_file)_ziig.info &	
python find_repeaters_v2026.py OXIG &> OXIG/log/$(log_file)_oxig.info &	
python find_repeaters_v2026.py YOIG &> YOIG/log/$(log_file)_yoig.info &	
python find_repeaters_v2026.py PEIG &> PEIG/log/$(log_file)_peig.info &	
wait
