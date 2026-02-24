# 2026-02-02T15:28:34.361512400
import vitis

client = vitis.create_client()
client.set_workspace(path="F:/EECE4632/Lab3")

comp = client.create_hls_component(name = "stream",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

vitis.dispose()

