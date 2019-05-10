## Compression of facial images using PCA
  Used PCA to reduce the dimensionality of the images
# Prerequisites
  MATLAB
  
# Problem Statement
    You are the lead developer in a software engineering firm and have been given the task of
    compressing facial images. You have recently learnt about PCA in the class and decide to
    apply it for the given task. The images are given in the folder images.zip and are of size
    256x256 each. Use PCA to reduce the dimensionality of the images and answer the following

    1. Reconstruct the images back using a small number of components (35)
    2. Use scatterplots to examine how the images are clustered in the 1D, 2D and 3D space
    using the required number of principal components.

    Note that the images are large enough that you might not be able to compute the covariance
    matrix C due to memory limits. However, you can find the eigenvectors of L = A T ∗ A, and
    compute the eigenvectors of C = A ∗ A T using L or vice-versa.
