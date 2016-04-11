gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "\gourse_merge\repo1.txt" repo1 "\path1\to\.git"
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --multi-sampling --output-custom-log "\gourse_merge\repo2.txt" repo2 "\path2\to\.git"
...
gource 1280x1024 -f  --hide dirnames,filenames,mouse,progress --highlight-all-users --output-custom-log "\gourse_merge\repon.txt" repon --multi-sampling "\pathn\to\.git"

sed -i -r "s#(.+)\|#\1|/repo1#" repo1.txt
sed -i -r "s#(.+)\|#\1|/repo2#" repo2.txt
...
sed -i -r "s#(.+)\|#\1|/repon#" repon.txt
cd gourse_merge
cat *.txt | sort -n > combined.txt

gource combined.txt --key --title "Your clip name" --bloom-multiplier 0.5 --bloom-intensity 0.5 \--user-image-dir /Users/datle/Zalora/avatar/ --hide filenames --seconds-per-day 0.2 \--auto-skip-seconds 1 -1280x720 -o - \| ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 4 -bf 0 combined.mp4