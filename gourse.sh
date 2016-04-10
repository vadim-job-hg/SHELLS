gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo1.txt" repo1 "E:\Program Files\PyProjects\tipe10ru\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo2.txt" repo2 "E:\Program Files\PyProjects\CodeCombat\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo3.txt" repo3 "E:\Program Files\phpProjects\DataTable\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo4.txt" repo4 "E:\Program Files\phpProjects\Facebook\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo5.txt" repo5 "E:\Program Files\phpProjects\Google\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo6.txt" repo6 "E:\Program Files\phpProjects\JS-SCRIPTS\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo7.txt" repo7 "E:\Program Files\Apache\localhost\www\Autorize\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo8.txt" repo8 "E:\Program Files\phpProjects\PHP-SCRIPTS\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo9.txt" repo9 "E:\Program Files\phpProjects\SHELLS\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo10.txt" repo10 "E:\Program Files\phpProjects\Stripe\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo11.txt" repo11 "E:\Program Files\phpProjects\Autorize\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo12.txt" repo12 "E:\Program Files\phpProjects\WEB-RTC\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --output-custom-log "E:\Program Files\PyProjects\gourse_merge\repo13.txt" repo13 --multi-sampling "E:\Program Files\phpProjects\WEB-SOCKETS\.git"

sed -i -r "s#(.+)\|#\1|/repo1#" repo1.txt
sed -i -r "s#(.+)\|#\1|/repo2#" repo2.txt
sed -i -r "s#(.+)\|#\1|/repo3#" repo3.txt
sed -i -r "s#(.+)\|#\1|/repo4#" repo4.txt
...
sed -i -r "s#(.+)\|#\1|/repo13#" repo13.txt
cat *.txt | sort -n > combined.txt

gource combined.txt --key --title "Your clip name" --bloom-multiplier 0.5 --bloom-intensity 0.5 \
--user-image-dir /Users/datle/Zalora/avatar/ --hide filenames --seconds-per-day 0.2 \
--auto-skip-seconds 1 -1280x720 -o - \
| ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 4 -bf 0 combined.mp4
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling E:\Program Files\phpProjects\tto\.git