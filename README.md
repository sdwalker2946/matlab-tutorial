# matlab-tutorial

## Preliminary: Installing Git (for Windows, if not already installed)
1. Open Powershell
2. Copy and paste the following command to install Git: winget install --id Git.Git -e --source winget
3. After installation has finished, restart the terminal.
4. Copy and paste the following command to download ("clone") the Git repository: git clone https://github.com/sdwalker2946/matlab-tutorial

## Installing MATLAB (from W&M Software Distribution Site)
1. Go to https://software.wm.edu/
2. Select your operating system (for this tutorial, I will use Windows).
3. In the search bar, type "MATLAB."
4. Click the link to the only option that appears.
5. Click the "William & Mary's Matlab Portal" link to go to the MATLAB website.
6. On the website, click the "Sign in to get started" button to go to the sign-in page.

## A few notes about MATLAB vs. Mathematica
* Choosing the right language for the job - each language has its strengths and weaknesses.

**Comparing Use Cases for Each Language**
| **Feature**                      || **MATLAB**                   | **Mathematica**                       |
|:--------------------------------||:-----------------------------:|:------------------------------------:|
| Numerical Analysis              || ✅ Excellent for numeric speed| ✅ Very good with arbitrary precision|
| Scientific Computing            || ✅ Mature and optimized       | ✅ Powerful, especially symbolic-numeric mixed |
| Large Datasets                 || ✅ Optimized for big data     | ⚠️ Less efficient on very large data |
| Algebraic Analysis             || ⚠️ Limited symbolic ability   | ✅ Industry-leading symbolic math     |
| Precise/Closed-Form Solutions  || ⚠️ Weak symbolic closed-form  | ✅ Best-in-class symbolic and exact solutions |
| Aesthetic Plots               || ✅ High-quality, easy to use  | ✅ Highly customizable and flexible   |
| Engineering Toolboxes          || ✅ Extensive and specialized  | ⚠️ Limited toolboxes, more general    |
| Simulink / System Modeling     || ✅ Industry standard           | ❌ Not available                      |
| Signal/Image Processing        || ✅ Robust, mature toolboxes    | ⚠️ General purpose, less specialized  |
| Mixed Symbolic and Numeric     || ⚠️ Limited symbolic support   | ✅ Strong workflow integration        |
| Arbitrary Precision Arithmetic || ⚠️ Not supported natively      | ✅ Native, unlimited precision         |
| Algorithm Flexibility          || ⚠️ Mostly numerical algorithms| ✅ Highly flexible and adaptive       |
| Time Performance              || ✅ Generally faster            | ⚠️ Generally slower due to symbolic overhead|

* Fun Fact: Python libraries (NumPy, Matplotlib) have a similiar interface to MATLAB