set (__dependencies)
if (PARAVIEW_USE_MPI)
  set (__dependencies
    vtkFiltersParallelMPI
    )

  if (PARAVIEW_USE_ICE_T)
    list(APPEND __dependencies
      vtkicet)
  endif()
endif()

vtk_module(vtkPVVTKExtensionsRendering
  GROUPS
    ParaViewRendering
  DEPENDS
    vtkChartsCore
    vtkFiltersExtraction
    vtkFiltersGeneric
    vtkFiltersHyperTree
    vtkFiltersParallel
    vtkInteractionStyle
    vtkPVVTKExtensionsCore
    vtkRenderingAnnotation
    vtkRenderingFreeTypeOpenGL
    vtkRenderingParallel
    ${__dependencies}
  COMPILE_DEPENDS
    vtkUtilitiesEncodeString
)
