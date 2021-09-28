% script for analyse the fused images

fileName_source_l = ['D:\VTK\论文\图像融合\Rfn-nest\imagefusion-rfn-nest\images\21_pairs_tno\ir\IR1.png'];
fileName_source_r = ['D:\VTK\论文\图像融合\Rfn-nest\imagefusion-rfn-nest\images\21_pairs_tno\vis\VIS1.png'];
fileName_fused = ['D:\VTK\论文\图像融合\Rfn-nest\imagefusion-rfn-nest\outputs\alpha_1e4_21\fused_rfnnest_700_wir_6.0_wvi_3.0_21_res\fused_rfnnest_700_wir_6.0_wvi_3.0_IR1.png'];

% fused results
fused_image = imread(fileName_fused);
% input
sourceTestImage1 = imread(fileName_source_l);
sourceTestImage2 = imread(fileName_source_r);
tic;
metrics = analysis_Reference(fused_image,sourceTestImage1,sourceTestImage2);
toc;
temp = [metrics.EN, metrics.SD, metrics.MI, metrics.Nabf, metrics.SCD, metrics.MS_SSIM]


