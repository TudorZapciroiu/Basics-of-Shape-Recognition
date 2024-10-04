
# Basics of Shape Recognition

This repository contains fundamental algorithms and techniques used for shape recognition in computer vision. It focuses on extracting shape descriptors, performing shape analysis, and applying them in recognition tasks.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Shape Descriptors](#shape-descriptors)
- [Examples](#examples)
- [License](#license)

## Introduction
Shape recognition is a key aspect of computer vision, used in tasks like object detection, character recognition, and image classification. This repository explores basic concepts of shape recognition by implementing algorithms for contour extraction, Fourier descriptors, and other shape-based analysis methods.

## Installation
To use this repository, clone the repo and ensure you have the required dependencies.

```bash
git clone https://github.com/TudorZapciroiu/Basics-of-Shape-Recognition.git
```

Make sure you have MATLAB or the necessary environment set up to run the scripts.

## Usage
The repository provides several MATLAB scripts that analyze and extract shape descriptors from contour data. Each script corresponds to a specific technique, such as:
- **ellipticFourierDescriptors.m**: Computes elliptic Fourier descriptors for a given contour.
- **angularFunctionDescriptors.m**: Extracts angular-based shape descriptors for contour analysis.

## Shape Descriptors
This repository implements two key methods for extracting shape descriptors:

1. **Elliptic Fourier Descriptors**: 
   - The `ellipticFourierDescriptors.m` script calculates Fourier descriptors, which are useful for representing the shape of a closed contour in a compact form.
   - These descriptors are often employed for shape comparison and classification tasks.
   
2. **Angular Function Descriptors**: 
   - The `angularFunctionDescriptors.m` script computes descriptors based on angular changes along the contour. This method emphasizes the curvature properties of the shape.

Both methods provide a way to transform complex shapes into numerical descriptors that can be analyzed or compared efficiently.

## Examples
You can test the shape recognition methods by running the MATLAB scripts on a given contour dataset. Below is an example of how to run the scripts:

```matlab
% Load contour data
curve = load('contour_data.mat');

% Calculate elliptic Fourier descriptors
nc = 10; % number of Fourier coefficients
ellipticFourierDescriptors(curve, nc);

% Calculate angular function descriptors
angularFunctionDescriptors(curve, nc);
```

Ensure that the contour data is provided in the form of a 2D matrix, where the first row contains the X-coordinates and the second row contains the Y-coordinates of the contour.

## License
This repository is licensed under the MIT License. See the LICENSE file for details.
