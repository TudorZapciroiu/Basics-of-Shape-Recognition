
# Basics of Shape Recognition

This repository contains fundamental algorithms and techniques used for shape recognition in computer vision. It focuses on extracting shape descriptors, performing shape analysis, and applying them in recognition tasks.

## Table of Contents
- [Basics of Shape Recognition](#basics-of-shape-recognition)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Examples](#examples)

## Introduction
Shape recognition is a key aspect of computer vision, used in tasks like object detection, character recognition, and image classification. This repository explores basic concepts of shape recognition by implementing algorithms for contour extraction, Fourier descriptors, and other shape-based analysis methods.

## Installation
To test the project for yourself, clone the repo and ensure you have MATLAB installed.

```bash
git clone https://github.com/TudorZapciroiu/Basics-of-Shape-Recognition.git
```


## Usage
This project provides several MATLAB scripts that analyze and extract shape descriptors from contour data or full pictures. Each script corresponds to a specific technique, such as:
- **ellipticFourierDescriptors.m**: Computes elliptic Fourier descriptors for a given contour.
- **angularFunctionDescriptors.m**: Extracts angular-based shape descriptors for contour analysis.
- **objectExtract**: Extracts shape contours from an image and computes the elliptical and angular Fourier descriptors, as well as the curvature functions for each detected shape.
- **massCenter**: Computes the coordinates for the geometrical center of mass and the vector containing the distances form each point of the contour to the center of mass. This vector can be used un determining the similarity between two shapes.
- **shapeReconstruction**: Given a set of elliptical Fourier descriptors, this script reconstructs the original shape and marks its center of mass.


## Examples
You can test the shape recognition methods by running the MATLAB scripts on a given contour dataset. Below is an example of how to run the scripts:

```matlab
im = imread('test.png');

if (~islogical(im))
    % make the image gray-scale
    if (ndims(im)>2) 
        im = rgb2gray(im);
    end
    % compute the gray threshold for binarizing
   level=graythresh(im); 
    % binarizare imagine
    BW = im2bw(im,level);
end

[B,L,N] = bwboundaries(BW,'noholes'); 

nc = 15; % number of Fourier coefficients
for k=1:N
    X = B{k}(:,2);
    Y = B{k}(:,1);
    contur = [X'; Y'];
% Calculate elliptic Fourier descriptors
ellipticFourierDescriptors(curve, nc);

% Calculate angular function descriptors
angularFunctionDescriptors(curve, nc);
```

Ensure that the *'test.png'* file is saved in the same folder as your script.

