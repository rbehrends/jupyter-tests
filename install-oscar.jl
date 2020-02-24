using Pkg

function PkgAdd(pkg)
  try
    Pkg.add(pkg)
  catch
    for (exception, backtrace) in Base.catch_stack()
      showerror(stdout, exception, backtrace)
      println()
    end
  end
end

GAP = PackageSpec("GAP")
AbstractAlgebra = PackageSpec("AbstractAlgebra")
Nemo = PackageSpec("Nemo")
Hecke = PackageSpec("Hecke")
Singular = PackageSpec("Singular")
Polymake = PackageSpec("Polymake")
HomalgProject = PackageSpec("HomalgProject")
IJulia = PackageSpec("IJulia")
Oscar = PackageSpec(url="https://github.com/oscar-system/Oscar.jl")
Cxx = PackageSpec("Cxx")

PkgAdd(GAP)
PkgAdd(AbstractAlgebra)
PkgAdd(Nemo)
PkgAdd(Hecke)
PkgAdd(Singular)
PkgAdd(Polymake)
PkgAdd(HomalgProject)
PkgAdd(Oscar)
PkgAdd(IJulia)
PkgAdd(Cxx)
Pkg.build(IJulia)

try
  Pkg.update()
catch
end
