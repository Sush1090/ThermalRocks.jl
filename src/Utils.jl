



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
    Tvec = [1,T,1/T^2,1/sqrt(T),T^2]
    return coeff'*Tvec
end


function SpecificHeat(comp::Compound,T)
        idx = FindFirstIdx(T,comp.T_range)
        A = comp.A[idx,:];
        return Shotomate(A,T)*(1000/comp.MolarMass) #convertes to J/kg/K
end

function SpecificHeat(rock::Rocks,T)
    @assert T in Interval(rock.T_range[1][1],rock.T_range[1][2])
    Tvec = [1,1e-4T, 1e4/T^2, 1/sqrt(T)];
    A = rock.A[1,:];
    return (Tvec'*A)*1000 # converts to K/kg/K
end

function SpecificHeat(comp::CustomComposition,T)
    cp = similar(comp.weights);
    for i in eachindex(cp)
        cp[i] = SpecificHeat(comp.compounds[i],T)
    end
    return cp'*comp.weights;
end


export SpecificHeat
# function SpecificHeat(rock::Rocks,T)

# end


# function CompundList()
    
# end


# function RockList()
    
# end