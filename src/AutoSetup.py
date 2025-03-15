import subprocess as bash

hos = bash.run(["cat", "/etc/hostname"], capture_output=True, text=True).stdout.strip()
  
if hos == "debian":

   print("hi")
#  bash.run(["chmod", "+x", "src/shell/debian.sh"])
#  bash.run(["bash", "src/shell/debian.sh"])

elif hos == "Arch":

  bash.run(["chmod", "+x", "src/shell/arch.sh"])
  bash.run(["bash", "src/shell/arch.sh"])

elif hos == "archiso":

  bash.run(["chmod", "+x", "src/shell/archiso.sh"])
  bash.run(["bash", "src/shell/archiso.sh"])

else:
    print("bahaa support only debian and Arch")
