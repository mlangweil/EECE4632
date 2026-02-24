# 2026-02-02T15:31:07.256239300
import vitis

client = vitis.create_client()
client.set_workspace(path="F:/EECE4632/Lab3")

comp = client.get_component(name="stream")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

