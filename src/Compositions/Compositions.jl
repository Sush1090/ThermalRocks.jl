
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


"""
`CustomComposition`: A struct that combines compounds and its corresponding weights for a custom inputs
"""
struct CustomComposition <: Compositions
    name::AbstractString
    compounds::Vector{Compound}
    weights::Vector{Float64}
    function CustomComposition(;name,compounds,weights)
        @assert size(compounds) == size(weights)
        new(name,compounds,weights)
    end
end
export CustomComposition


