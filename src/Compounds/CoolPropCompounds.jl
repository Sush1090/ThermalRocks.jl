
"""
Struct to add gases and liquid properties that are in rocks
"""
abstract type CoolPropCompounds <:Compound end

const AtmosphericPressure = 101325
struct CO₂ <:CoolPropCompounds
    name:: AbstractString
    MolarMass
    function CO₂(;name="CO2")
        MolarMass = 1000*PropsSI("molarmass","T",300,"P",AtmosphericPressure,name)
        new(name,MolarMass)
    end
end 


function SpecificHeat(comp::CoolPropCompounds,T)
    return PropsSI("CPMASS","T",T,"P",AtmosphericPressure,comp.name)
end

