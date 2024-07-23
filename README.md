# ThermalRocks.jl


[![Build Status](https://github.com/Sush1090/ThermalRocks.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Sush1090/ThermalRocks.jl/actions/workflows/CI.yml?query=branch%3Amain)

A package to have specific heat of rocks and its compositions over different temperature profiles.

Based on "Estimating Heat Capacity and Heat Content of Rocks by - C. Robertson and B. S. Hemingway" https://pubs.usgs.gov/of/1995/0622/report.pdf

It uses the Neumann–Kopp rule for computing the specific heat capacity by combining compounds.
  


## Theory
The database presented uses the Shotomate scheme of approximation of Specific heat over temperature.

For compounds:
$C_p(T) = a_1 + a_2T + \frac{a_3}{T^2} = \frac{a_4}{\sqrt{T}} + a_5T^2$

For empirical rocks:
$C_p(T) = a_1 + 10^{-4} a_2T   + 10^{4}  \frac{a_3}{T^2} = \frac{a_4}{\sqrt{T}} + a_5T^2$

The database provides coeffecients for the above equations. 

## Usage 
For already exisiting compounds
```
julia> using ThermalRocks

julia> SiO2 = SiO₂("QUARTZ")
SiO₂("QUARTZ", [81.45 0.001828 … -698.5 5.406e-6; 57.96 0.00933 … 0.0 0.0], 60.084, Tuple[(298, 844), (844, 1700)], true)

julia> SpecificHeat(SiO2,400) # at 400K
782.0702682910592 # J/kg/K
```

For making custom compositions
```
julia> using ThermalRocks

julia> CC = [SiO₂("SILICAGLASS"),Al₂O₃(),Fe₂O₃(),FeO(),MgO(),CaO(),Na₂O(),K₂O()]; # Westerly granite composition

julia> w = [63.48,15.62,1.85,2.70,2.2,4.15,3.59,3.58]./100; #97% of composition taken

julia> MyComp = CustomComposition(name="test",compounds=CC,weights=w);

julia> SpecificHeat(MyComp,400) # at 400K
870.3047388987216 # J/kg/K
```

## Declaring New Compound/Rock
Every Compond is a struct of the following form:

```
struct MyCompound <: MyCompoundType
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function MyCompound(;name = "MyCompoundName",A = [a b c d e],MolarMass = M,T_range = [(T1,T2)],PieceWise = true)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export MyCompound
```

It contains default parameter values from the database and if needed it is possible to modify without declaring a new `struct`.

`MyCompoundType` is the type of compound: `OxideCompunds`, `SulphurCompounds`, etc ...


## Package Features
- Provides already implemented vast range of data for compounds and rocks.
- Finds specific heat capacity over different temperatures for Compounds found in rocks. Fitted over experimental data.
- Allows user to get a rough estimate of a custom composition using Neumann-kopp rule. 
- Allows user to implement custom data under the framework of Shotomate approximations. 