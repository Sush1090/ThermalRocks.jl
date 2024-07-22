
abstract type Rocks end

struct WESTERLYGRANITE <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function WESTERLYGRANITE(;name = "WESTERLY GRANITE",A = [2.29354 -1.9986 2.0526 -29.3049],T_range = [(298,1000)])
        new(name,A,T_range)
    end
end
export WESTERLYGRANITE

struct ANDESITE <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function ANDESITE(;name = "ANDESITE",A = [1.61648 -0.47131 -0.68382 -13.5460],T_range = [(298,1000)])
        new(name,A,T_range)
    end
end
export ANDESITE

struct PERIDOTITE <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function PERIDOTITE(;name = "PERIDOTITE",A = [3.99066 -9.9989 4.54157 -57.6564],T_range = [(298,650)])
        new(name,A,T_range)
    end
end
export PERIDOTITE

struct BASALT <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function BASALT(;name = "BASALT",A = [1.65291 -0.9541 -0.89296 -13.5666],T_range = [(298,1000)])
        new(name,A,T_range)
    end
end
export BASALT

struct DRESSERBASALT <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function DRESSERBASALT(;name = "DRESSER BASALT",A = [1.95807 -4.4 -4.81952 -10.9362],T_range = [(298,1273)])
        new(name,A,T_range)
    end
end
export DRESSERBASALT

struct ROCKVILLEGRANITE <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function ROCKVILLEGRANITE(;name = "ROCKVILLE GRANITE",A = [2.43251 -4.286 -0.22667 -26.7659],T_range = [(298,844)])
        new(name,A,T_range)
    end
end
export ROCKVILLEGRANITE

struct QUARTZITE <: Rocks
    name::AbstractString
    A
    T_range::Vector{Tuple}
    function QUARTZITE(;name = "QUARTZITE",A = [0.67797 1.594 -7.38482 12.647],T_range = [(298,1273)])
        new(name,A,T_range)
    end
end
export QUARTZITE



