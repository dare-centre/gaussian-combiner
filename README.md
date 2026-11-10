# Gaussian Combiner

[![super-linter](../../actions/workflows/super-linter.yml/badge.svg)](../../actions/workflows/super-linter.yml) ![human-only code](https://img.shields.io/badge/human--only-code-white)

Combining multiple univariate Gaussians into one multivariate Gaussian.

## Table of Contents

- [Key Files](#key-files)
- [Software Requirements](#software-requirements)
- [Getting Started](#getting-started)

## Key Files

| File                                       | Notes          |
| :----------------------------------------- | :------------- |
| `src/univariate-distros-to-multivariate.m` | MATLAB script. |

## Software Requirements

| Software | Notes                                                                          |
| :------- | :----------------------------------------------------------------------------- |
| MATLAB   | [Available here](https://www.mathworks.com/products/matlab.html). Proprietary. |

### MATLAB Configuration

Please ensure the MATLAB environment has the following package installed:

- Statistics and Machine Learning Toolbox.

## Getting Started

The file `univariate-distros-to-multivariate.m` should be run from MATLAB.

That MATLAB script generates three univariate Gaussian distributions, each with
distinct means and standard deviations, and combines them into a multivariate distribution.
