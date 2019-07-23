help([[
For detailed instructions, go to:
   https://www.cadence.com/
]])
whatis("Version: 12.3")
whatis("URL: https://www.cadence.com/")
whatis("Cadence is a leading EDA and System Design Enablement provider delivering tools, software, and IP")

local version = "12.3"

setenv("CDS_INST_DIR", "/shared/software/cadence/ICADV123")
setenv("CDS_Netlisting_Mode", "Analog")
setenv("CDS_AUTO_64BIT", "ALL")

setenv("OA_HOME", capture("ls -d -1 /shared/software/cadence/ICADV123/oa_v22* | tr -d '\n'"))

prepend_path("PATH", "/shared/software/cadence/ICADV123/tools/plot/bin")
prepend_path("PATH", "/shared/software/cadence/ICADV123/tools/dfII/bin")
prepend_path("PATH", "/shared/software/cadence/ICADV123/tools/bin")
prepend_path("PATH", "/shared/software/cadence/ICADV123/bin")
