$dte = new-object -com "TcXaeShell.DTE.17.0" # XaeShell64 COM ProgId
$dte.SuppressUI = $true

# open solution file
echo "Opening solution"
$workingdir = pwd
$slnPath = "$workingdir\HelloWorld.sln"
echo $slnPath
$sln = $dte.Solution
$sln.Open($slnPath)

echo "Building TwinCAT project"
$sln.SolutionBuild.Build($true)

echo "Exiting..."
$dte.Quit()
