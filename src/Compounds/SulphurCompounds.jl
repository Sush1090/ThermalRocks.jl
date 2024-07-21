abstract type SulphurCompounds <: Compound end

struct CuS <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function Cus(;name = "Covellite",A = [4.305e1 2.02e-2 -1.38072e5 0  0],MolarMass = 95.612,T_range = [(298,800)],PieceWise = false)
        if PieceWise ==false
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        else 
            @info "Compound with Piecewise entries" 
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export CuS


struct CuFeS₂ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function CuFeS₂(;name = "Chalcopyrite",A = [-5.8753E+02 3.7073E-01 -1.4721E+07 1.275E+04 0; -1.01845E+03 1.358E+00 0 0 0],MolarMass = 183.525,
        T_range = [(298,830),(830,930)],PieceWise = true)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export CuFeS₂



struct FeS₂ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function FeS₂(;name = "PYRITE",A = [-2.032E+01 5.030E-02 -3.200E+06 1.787E+03 0],MolarMass = 119.979,
        T_range = [(298,1000)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export FeS₂

struct MnS <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function MnS(;name = "ALABANDITE",A = [1.353E+02 -5.775E-02 1.169E+06 -1.435E+03 2.087E-05],MolarMass = 87.004,
        T_range = [(298,1800)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export MnS


struct MoS₂ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function MoS₂(;name = "MOLYBDENITE",A = [1.045E+02 -4.812E-03 -6.291E+03 -6.817E+02 0],MolarMass = 160.072,
        T_range = [(298,1200)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export MoS₂

struct Ni₃S₂ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function MoS₂(;name = "HEAZLEWOODITE",A = [1.057E+03 -8.988E-01 8.139E+06 -1.388E+04 4.660E-04],MolarMass = 240.202,
        T_range = [(298,840)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export Ni₃S₂


struct PbS <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function PbS(;name = "GALENA",A = [4.460E+01 1.640E-02 0 0 0],MolarMass = 239.266,
        T_range = [(298,900)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export PbS

struct Sb₂S₃ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function Sb₂S₃(;name = "STIBNITE",A = [1.705E+02 -4.860E-03 7.539E+05 -9.978E+02 0],MolarMass = 339.698,
        T_range = [(298,900)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export Sb₂S₃


struct SnS <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function SnS(;name = "HERZENBERGITE",A = [2.672E+01 3.035E-02 0 0 0],MolarMass = 150.776,
        T_range = [(875,1153)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export SnS

struct WS₂ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function WS₂(;name = "TUNGSTENITE",A = [7.633E+01 5.561E-04 -1.137E+06 0 1.408E-06],MolarMass = 247.982,
        T_range = [(298,1500)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export WS₂

struct ZnS <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function ZnS(;name = "SPHALERITE",A = [6.151E+01 7.631E-04 -7.963E+04 -2.604E+02 0],MolarMass = 97.456,
        T_range = [(298,1300)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export ZnS


struct FeSb₂S₄ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function FeSb₂S₄(;name = "BERTHIERITE",A = [1.000+01 7.930E-02 -6.416E+06 3.691E+03 0],MolarMass = 427.611,
        T_range = [(298,900)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export FeSb₂S₄


struct CuSbS₂ <:SulphurCompounds 
    name::AbstractString
    A
    MolarMass
    T_range::Vector{Tuple}
    PieceWise::Bool
    function CuSbS₂(;name = "CHALCOSTIBITE",A = [8.810E+01 4.040E-02 0 0 0],MolarMass = 249.428,
        T_range = [(298,900)],PieceWise = false)
        if PieceWise ==true
            @info "Compound with Piecewise entries" 
            @assert size(A,1) == size(T_range,1) 
            new(name,A,MolarMass,T_range,PieceWise)
        
        else
            new(name,A,MolarMass,T_range,PieceWise)
        end
    end
end
export CuSbS₂


