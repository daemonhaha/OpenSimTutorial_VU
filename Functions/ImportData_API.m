
% c3d import-export
import org.opensim.modeling.*
c3dPath='C:\Users\u0088756\Documents\PostDoc\Data\DataNexus\ExpFriedl\TrapdoorExp\Friedl_v2\Session 1\gait_63.c3d';
c3d = osimC3D(c3dPath,1);       % on is with computation COP, 2 is applied as torques

% Get some stats...
nTrajectories = c3d.getNumTrajectories();
rMakers = c3d.getRate_marker();
nForces = c3d.getNumForces();
rForces = c3d.getRate_force();

% Get Start and end time
t0 = c3d.getStartTime();
tn = c3d.getEndTime();

% Rotate the data 
c3d.rotateData('x',-90);
c3d.rotateData('y',180);

% Write the marker and force data to file
c3d.writeTRC('C:\Users\u0088756\Desktop\test_data_markers.trc');
c3d.writeMOT('C:\Users\u0088756\Desktop\test_data_forces.mot');
