root='/storage/antonio/data03'
timestamp=$(date +%Y%m%d)


python find_repeaters_v2026.py ARIG &> "$root/ARIG/log/log_${timestamp}_arig.info" &
python find_repeaters_v2026.py CAIG &> "$root/CAIG/log/log_${timestamp}_caig.info" &
python find_repeaters_v2026.py CCIG &> "$root/CCIG/log/log_${timestamp}_ccig.info" &	
python find_repeaters_v2026.py CMIG &> "$root/CMIG/log/log_${timestamp}_cmig.info" &	
python find_repeaters_v2026.py CRIG &> "$root/CRIG/log/log_${timestamp}_crig.info" &	
wait

python find_repeaters_v2026.py DAIG &> "$root/DAIG/log/log_${timestamp}_daig.info" &	
python find_repeaters_v2026.py HUIG &> "$root/HUIG/log/log_${timestamp}_huig.info" &	
python find_repeaters_v2026.py MEIG &> "$root/MEIG/log/log_${timestamp}_meig.info" &	
python find_repeaters_v2026.py MMIG &> "$root/MMIG/log/log_${timestamp}_mmig.info" &	
wait


python find_repeaters_v2026.py MGIG &> "$root/MGIG/log/log_${timestamp}_mgig.info" &	
python find_repeaters_v2026.py PCIG &> "$root/PCIG/log/log_${timestamp}_pcig.info" &	
python find_repeaters_v2026.py PLIG &> "$root/PLIG/log/log_${timestamp}_plig.info" &	
python find_repeaters_v2026.py PNIG &> "$root/PNIG/log/log_${timestamp}_pnig.info" &	
wait

python find_repeaters_v2026.py TLIG &> "$root/TLIG/log/log_${timestamp}_tlig.info" &	
python find_repeaters_v2026.py TGIG &> "$root/TGIG/log/log_${timestamp}_tgig.info" &	
python find_repeaters_v2026.py THIG &> "$root/THIG/log/log_${timestamp}_thig.info" &	
python find_repeaters_v2026.py TUIG &> "$root/TUIG/log/log_${timestamp}_tuig.info" &	
wait

python find_repeaters_v2026.py TXIG &> "$root/TXIG/log/log_${timestamp}_txig.info" &	
python find_repeaters_v2026.py ZIIG &> "$root/ZIIG/log/log_${timestamp}_ziig.info" &	
python find_repeaters_v2026.py OXIG &> "$root/OXIG/log/log_${timestamp}_oxig.info" &	
python find_repeaters_v2026.py YOIG &> "$root/YOIG/log/log_${timestamp}_yoig.info" &	
python find_repeaters_v2026.py PEIG &> "$root/PEIG/log/log_${timestamp}_peig.info" &	
wait
