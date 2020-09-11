set DEVICE=Logitech Webcam C930e
:: set DEVICE=SplitCam Video Driver

set FRAMERATE=15
set BITRATE=800000

set FRAME_WIDTH=1280
set FRAME_HEIGHT=720

set /A FRAME_LEFT=(1280 - FRAME_WIDTH)/2
set /A FRAME_TOP=(720 - FRAME_HEIGHT)/2

ffmpeg -f dshow -video_size 1280x720 -framerate %FRAMERATE% -i video="%DEVICE%" -vf crop=%FRAME_WIDTH%:%FRAME_HEIGHT%:%FRAME_LEFT%:%FRAME_TOP% -vcodec libx264 -preset veryfast -vprofile baseline -b:v %BITRATE% -tune zerolatency -g 30 -pix_fmt yuv420p -r %FRAMERATE% -f rawvideo tcp://localhost:5000