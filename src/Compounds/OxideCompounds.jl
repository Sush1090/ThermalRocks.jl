abstract type OxideCompounds <: Compound end

struct Al₂O₃ <:OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function Al₂O₃(;name = "CORUNDUM",A = [1.612E+02 -1.353E-03 -1.815E+06 -1.059E+03  5.38E-07],MolarMass = 101.961,T_range = [(298,2250)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export Al₂O₃

struct AlOOH <:OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function AlOOH(;name = "BOEHMITE",A = [2.057E+02 -3.492E-02 1.027E+06 -2.635E+03  0],MolarMass = 59.988,T_range = [(298,600)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export AlOOH


struct B₂O₃ <:OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function B₂O₃(;name = "DIBORON TRIOXIDE",A = [1.847E+02 7.108E-03 6.441E+05 -2.270E+03  0],MolarMass = 69.62,T_range = [(298,723)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export B₂O₃

struct BaO <:OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function BaO(;name = "BARIUM MONOXIDE",A = [5.722E+01 5.370E-03 -1.669E+05 -1.668E+02 0],MolarMass = 153.326,T_range = [(298,1800)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export BaO

struct BeO <:OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function BeO(;name = "BROMELLITE",A = [8.274E+01 -7.301E-03 -4.158E+05 -8.718E+02 1.845E-06],MolarMass = 25.012,T_range = [(298,2000)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export BeO


struct Bi₂O₃ <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function Bi₂O₃(;name = "BISMITE",A = [1.036E+02 3.336E-02 0 0 0],MolarMass = 465.959,T_range = [(298,800)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export Bi₂O₃

struct CaO <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function CaO(;name = "LIME",A = [5.185E+01 2.444E-03 -9.340E+05 0 0],MolarMass = 56.077,T_range = [(298,2500)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export CaO


struct CaOH2 <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function CaOH2(;name = "PORTLANDITE",A = [1.867E+02 -2.191E-02 0 -1.600E+03 0],MolarMass = 74.093,T_range = [(298,700)],PieceWise = false)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export CaOH2


struct SiO₂ <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function SiO₂(name = "QUARTZ";A = [8.145E+01 1.828E-03 -1.810E+05 -6.985E+02 5.406E-06;
                                        5.796E+01 9.330E-03 1.835E+6 0 0],MolarMass = 60.084,T_range = [(298,844),(844,1700)],PieceWise = true)
        if name == "QUARTZ"
                @assert size(A,1) == size(T_range,1) 
                return new(name,A,MolarMass,T_range,PieceWise)
        end

        if name == "CRISTOBALITE"
            A = [-4.160E+03 2.548E+00 -6.286E+07 7.168E+0 0;7.275E+01 1.300E-03 -4.132E+06  0 0];
            T_range = [(298,523),(523,1800)] 
            PieceWise = true
            @assert size(A,1) == size(T_range,1) 
            return new(name,A,MolarMass,T_range,PieceWise)
        end

        if name == "COESITE"
            A = [2.331E+02 -7.777E-02 2.604E+06 -3.375E+03 1.924E-05];
            T_range = [(298,1800)] 
            PieceWise = true
            @assert size(A,1) == size(T_range,1) 
            return new(name,A,MolarMass,T_range,PieceWise)   
        end

        if name == "STISHOVITE"
            A = [1.470E+02 -4.027E-02 -2.834E+05 -1.559E+03 1.203E-05];
            T_range = [(298,1800)] 
            PieceWise = true 
            return new(name,A,MolarMass,T_range,PieceWise)       
        end

       if name == "SILICAGLASS"
            A = [1.27200E+02 -1.0777E-02 4.3127E+05 -1.4638E+03 0];
            T_range = [(298,1700)] 
            PieceWise = false 
            return new(name,A,MolarMass,T_range,PieceWise)       
        end

    end
end
export SiO₂

struct Fe₂O₃ <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function Fe₂O₃(;name = "HEMATITE",A = [8.378E+02 -6.656E-01 4.989E+06 -1.075E+04 3.487E-04;
                                            -1.096E+03 2.727E-01 -1.024E+08 3.396E+04 0],MolarMass = 159.692,T_range = [(298,950),(950,1800)],PieceWise = true)
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
    end
end
export Fe₂O₃


struct Na₂O <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function Na₂O(;name = "DISODIUM MONOXIDE",A = [1.140E+02 7.486E-03 0 -8.134E+02 0],MolarMass = 61.979,T_range = [(298,1000)],PieceWise = false)
        @assert size(A,1) == size(T_range,1) 
        new(name,A,MolarMass,T_range,PieceWise)

    end
end
export Na₂O


struct MgO <:OxideCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function MgO(;name = "PERICLASE",A = [6.653E+01 -6.143E-03 -6.093E+05 -3.592E+02 2.451E-06],MolarMass = 40.304,
        T_range = [(298,2500)],PieceWise = false)
        @assert size(A,1) == size(T_range,1) 
        new(name,A,MolarMass,T_range,PieceWise)
    end
end
export MgO

struct FeO <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function FeO(;name = "FERROUS OXIDE",A = [3.908E+01 8.574E-03 -7.325E+05 2.466E+02 0],MolarMass = 71.846,
        T_range = [(298,1800)],PieceWise = false)
        @assert size(A,1) == size(T_range,1) 
        new(name,A,MolarMass,T_range,PieceWise)
    end
end
export FeO

struct K₂O <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function K₂O(;name = "FERROUS OXIDE",A = [7.450E+01 3.965E-02 -2.346E+05 0 0],MolarMass = 94.196,
        T_range = [(298,2000)],PieceWise = false)
        @assert size(A,1) == size(T_range,1) 
        new(name,A,MolarMass,T_range,PieceWise)
    end
end
export K₂O


struct TiO₂ <: OxideCompounds
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function TiO₂(name = "RUTILE";A = [8.462E+01 5.990E-04 -1.101E+06 -2.957E+02 0],MolarMass = 79.879,
        T_range = [(298,2100)],PieceWise = false)
        if name == "RUTILE"
            @assert size(A,1) == size(T_range,1) 
            return new(name,A,MolarMass,T_range,PieceWise)
        end
        if name == "ANATASE"
            A = [4.396E+01 1.374E-02 -2.595E+06 6.294E+02 0]
            T_range = [(298,1300)]
            @assert size(A,1) == size(T_range,1) 
            return new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export TiO₂