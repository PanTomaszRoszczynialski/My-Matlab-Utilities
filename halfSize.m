desktop = com.mathworks.mde.desk.MLDesktop.getInstance;
desktopMainFrame = desktop.getMainFrame;
% Get desktop dimensions
desktopDims = desktopMainFrame.getSize;
desktopW = desktopDims.getWidth;
desktopH = desktopDims.getHeight;
% Resize desktop to half of original size
if desktopH > 600
    desktopMainFrame.setSize(desktopW,desktopH/2);
    set(gcf,'position',[10 75 1250 300]);
else
    desktopMainFrame.setSize(desktopW,desktopH*2);
end
