# PowerShell script to extract all ISO images in subfolders with 7zip
# I use to manage home media server files

Get-ChildItem $folderPath -recurse | % {

  if ($_.Name -match "^*.`.iso$") {
    $parent = "$(Split-Path $_.FullName -Parent)";
    write-host "Extracting $($_.FullName) to $parent"

    $arguments = @("x", "`"$($_.FullName)`"", "-o`"$($parent)`"");
    $ex = start-process -FilePath "`"C:\Program Files\7-Zip\7z.exe`"" -ArgumentList $arguments -wait -PassThru;

    if ( $ex.ExitCode -eq 0) {
      write-host "Extraction successful, deleting $($_.FullName)"
      rmdir -Path $_.FullName -Force
    }
  }
}
