AI Agent isolation
===

This is a template to run Claude Code with full priviledges in an isolated enviroment.

It is based on Podman Compose. This setup works for any type of agent which comes with a TUI. OpenCode, Ralph, Junie, etc. ACP is also easy to add.

Instructions for Windows
---

1. Install WSL (as administrator): `wsl --install`
2. Install Podman Desktop with the Compose extension from https://podman-desktop.io/
3. Reboot
4. In Podman Desktop: click containers and follow instructions until you can start the demo container quay.io/podman/hello. Open the logs of the demo container to verify that it worked.
    * Alternatively, run the commands:
      ```
      podman machine init
      podman machine start
      podman run quay.io/podman/hello
      ```
5. Open this project in a terminal, run `podman compose up -d`. Claude should be running in the background.
6. Bring it to the foreground with `podman compose attach claude`
7. Bob's your uncle.
