



function FindFirstIdx(x,T_range::Vector{Tuple}) 
    for i in eachindex(T_range)
       if  (x in Interval(T_range[i][1],T_range[i][2]))
            return i
       end
    end
    return @error "Temperature not in the defined range of the solid"
end


"""
The Shotomate equation computes the specific heat of a given compound at a given temperature T. 
    Cₚ = A₁ + A₂T + A₃/T² + A₄/√T + A₅T²
"""
function Shotomate(coeff::Vector,T)
    Tvec = [1,T,T^-2,1/sqrt(T),T^2]
    return coeff'*Tvec
end

function SpecificHeat(comp::Compound,T)
        idx = FindFirstIdx(T,comp.T_range)
        A = comp.A[idx,:];
        return Shotomate(A,T)*(1000/comp.MolarMass)
end


# function SpecificHeat(rock::Rocks,T)

# end


# function CompundList()
    
# end


# function RockList()
    
# end