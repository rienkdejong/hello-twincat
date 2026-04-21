$dte = new-object -com "TcXaeShell.DTE.17.0" # XaeShell64 COM ProgId
$dte.SuppressUI = $true # suppress VS interface

# open solution file
echo "Opening solution"
$slnPath = "$pwd\HelloWorld.sln"
$sln = $dte.Solution
$sln.Open($slnPath)

echo "Building TwinCAT project"
$sln.SolutionBuild.Build($true)

echo "Exiting..."
$dte.Quit()
