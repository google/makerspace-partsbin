import sys
import pcbnew

# Load board and initialize plot controller
board = pcbnew.LoadBoard(sys.argv[1])
pc = pcbnew.PLOT_CONTROLLER(board)
po = pc.GetPlotOptions()
po.SetPlotFrameRef(False)

# Set current layer
pc.SetLayer(pcbnew.Edge_Cuts)

# Plot single layer to file
pc.OpenPlotfile("pcb", pcbnew.PLOT_FORMAT_SVG, "front_copper")
print("Plotting to " + pc.GetPlotFileName())
pc.PlotLayer()
pc.ClosePlot()
