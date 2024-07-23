# ThermalRocks.jl


[![Build Status](https://github.com/Sush1090/ThermalRocks.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Sush1090/ThermalRocks.jl/actions/workflows/CI.yml?query=branch%3Amain)

A package to have basic properties of rocks that are used as thermal stores.

Based on "Estimating Heat Capacity and Heat Content of Rocks by - C. Robertson and B. S. Hemingway" https://pubs.usgs.gov/of/1995/0622/report.pdf

It uses the Neumann–Kopp rule for computing the specific heat capacity by combining compounds.
  


## Theory
The database presented uses the Shotomate scheme of approximation of Specific heat over temperature.

For compounds:
$C_p(T) = a_1 + a_2T + \frac{a_3}{T^2} = \frac{a_4}{\sqrt{T}} + a_5T^2$

For empirical rocks:
$C_p(T) = a_1 + a_2T  10^{-4} + 10^{4}  \frac{a_3}{T^2} = \frac{a_4}{\sqrt{T}} + a_5T^2$