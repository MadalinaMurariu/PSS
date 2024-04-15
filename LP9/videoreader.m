v = VideoReader('veh_small.mp4');
% Read all the frames from the video, one frame at a time.
nFrames = v.NumFrames;
filtered_frames = zeros(v.Height, v.Width, v.NumChannels, nFrames);
while hasFrame(v)
    frame = readFrame(v);
    filtered_frame = filter_video_spst(b, a, double(frame)/255);
    filtered_frames(:,:,:,v.CurrentTimeIndex) = filtered_frame;
end
% Create a new video file with the filtered frames
output_video = VideoWriter('filtered_veh_small.mp4','MPEG-4');
open(output_video);
writeVideo(output_video, filtered_frames);
close(output_video);
