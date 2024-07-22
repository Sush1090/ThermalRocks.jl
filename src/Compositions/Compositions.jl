
abstract type Compositions end
export Compositions


abstract type MixingRule end
export MixingRule

"""
`NeumannKoppRule` : Takes weighted average of the Specific heats of the composition compounds. 
"""
struct NeumannKoppRule <:MixingRule
    name::AbstractString

    function NeumannKoppRule(;name="NeumannKoppRule")
        
    end
end
export NeumannKoppRule

struct CustomComposition <: Compositions
    name::AbstractString
    compounds::Vector{Compound}
    weights::Vector{Float64}
    function CustomComposition(;name,compounds,weights)
        new(name,compounds,weights)
    end
end
export CustomComposition


