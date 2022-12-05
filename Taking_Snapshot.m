function out=Taking_Snapshot(~)

imaqreset
vid = videoinput('winvideo', 1);
set(vid,'ReturnedColorSpace', 'RGB');
preview(vid);
image=getsnapshot(vid);
imtool(image);
out=image;