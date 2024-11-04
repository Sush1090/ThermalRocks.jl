using ThermalRocks, Plots

CC = [SiO₂("SILICAGLASS"),Al₂O₃(),Fe₂O₃(),FeO(),MgO(),CaO(),Na₂O(),K₂O()]; # Westerly granite composition
w = [69.2,15.42,1.01,1.49,0.76,1.98,4.05,4.46]./100;
#w = [59,17.1,4.35,2.07,1.05,4.89,4.23,2.87]./100
#w = [41.92,0.77,2.72,4.93,43.5,0.4,0,0.01]./100
#w = [54.10,13.7,3.24,9.07,3.47,6.91,3.26,1.69]./100
#w = [63.48,15.62,1.85,2.70,2.2,4.15,3.59,3.58]./100;
#w = [66.26,15.62,1.04,2.58,0.70,2.65,3.51,4.85]./100

#num 8
#w = [97.84,0.87,0.27,0.25,0.05,0.81,0.02,0.03]./100
@show sum(w)
comp = CustomComposition(name="test",compounds=CC,weights=w);

rock = WESTERLYGRANITE(); #best
#rock = ANDESITE() #okay
#rock = PERIDOTITE(); #bad res
#rock = BASALT();
#rock =DRESSERBASALT();
#rock= ROCKVILLEGRANITE();

#8
#rock = QUARTZITE();
tt = collect(range(300,650,100));
cp_comp = similar(tt);
cp_rock = similar(tt);
for i in eachindex(tt)
    cp_comp[i] = SpecificHeat(comp,tt[i]);
    cp_rock[i] = SpecificHeat(rock,tt[i]);
end

plot(tt,cp_comp,label = "Composition",xlabel = "K",ylabel = "J/kg/K")

plot!(tt,cp_rock,label = "Rock")