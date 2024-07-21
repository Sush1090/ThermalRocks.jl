module ThermalRocks



using CoolProp
using Intervals
# Write your package code here.

#Compounds
include("Compounds/Compounds.jl")
include("Compounds/SulphurCompounds.jl")
include("Compounds/OxideCompounds.jl")


include("Utils.jl")

end
