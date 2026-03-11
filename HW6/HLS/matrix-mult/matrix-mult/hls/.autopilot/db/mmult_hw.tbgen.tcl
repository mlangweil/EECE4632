set moduleName mmult_hw
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mmult_hw}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
	{ in1 int 64 regular {axi_slave 0}  }
	{ in2 int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ dim int 32 unused {axi_slave 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in1","offset": { "type": "dynamic","port_name": "in1","bundle": "control"},"direction": "READONLY"},{"cName": "in2","offset": { "type": "dynamic","port_name": "in2","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "in2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "dim", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"mmult_hw","role":"start","value":"0","valid_bit":"0"},{"name":"mmult_hw","role":"continue","value":"0","valid_bit":"4"},{"name":"mmult_hw","role":"auto_start","value":"0","valid_bit":"7"},{"name":"dim","role":"data","value":"16"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"mmult_hw","role":"start","value":"0","valid_bit":"0"},{"name":"mmult_hw","role":"done","value":"0","valid_bit":"1"},{"name":"mmult_hw","role":"idle","value":"0","valid_bit":"2"},{"name":"mmult_hw","role":"ready","value":"0","valid_bit":"3"},{"name":"mmult_hw","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"in1","role":"data","value":"16"},{"name":"in2","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "21", "151", "152", "153"],
		"CDFG" : "mmult_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49191", "EstimateLatencyMax" : "49191",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210", "Port" : "gmem", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "19", "SubInstance" : "grp_mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4_fu_195", "Port" : "gmem", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "17", "SubInstance" : "grp_mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2_fu_180", "Port" : "gmem", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "in1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "dim", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2_fu_180", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln29", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1_VITIS_LOOP_30_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4_fu_195", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_36_3_VITIS_LOOP_37_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150"],
		"CDFG" : "mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16389", "EstimateLatencyMax" : "16389",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_5_VITIS_LOOP_44_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U21", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U22", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U23", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U24", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U25", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U26", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U27", "Parent" : "21"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U28", "Parent" : "21"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U29", "Parent" : "21"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U30", "Parent" : "21"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U31", "Parent" : "21"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U32", "Parent" : "21"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U33", "Parent" : "21"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U34", "Parent" : "21"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U35", "Parent" : "21"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U36", "Parent" : "21"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U37", "Parent" : "21"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U38", "Parent" : "21"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U39", "Parent" : "21"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U40", "Parent" : "21"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U41", "Parent" : "21"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U42", "Parent" : "21"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U43", "Parent" : "21"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U44", "Parent" : "21"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U45", "Parent" : "21"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U46", "Parent" : "21"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U47", "Parent" : "21"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U48", "Parent" : "21"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U49", "Parent" : "21"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U50", "Parent" : "21"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U51", "Parent" : "21"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U52", "Parent" : "21"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U53", "Parent" : "21"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U54", "Parent" : "21"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U55", "Parent" : "21"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U56", "Parent" : "21"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U57", "Parent" : "21"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U58", "Parent" : "21"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U59", "Parent" : "21"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U60", "Parent" : "21"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U61", "Parent" : "21"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U62", "Parent" : "21"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U63", "Parent" : "21"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U64", "Parent" : "21"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U65", "Parent" : "21"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U66", "Parent" : "21"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U67", "Parent" : "21"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U68", "Parent" : "21"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U69", "Parent" : "21"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U70", "Parent" : "21"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U71", "Parent" : "21"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U72", "Parent" : "21"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U73", "Parent" : "21"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U74", "Parent" : "21"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U75", "Parent" : "21"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U76", "Parent" : "21"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U77", "Parent" : "21"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U78", "Parent" : "21"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U79", "Parent" : "21"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U80", "Parent" : "21"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U81", "Parent" : "21"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U82", "Parent" : "21"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U83", "Parent" : "21"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U84", "Parent" : "21"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U85", "Parent" : "21"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U86", "Parent" : "21"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U87", "Parent" : "21"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U88", "Parent" : "21"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U89", "Parent" : "21"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U90", "Parent" : "21"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U91", "Parent" : "21"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U92", "Parent" : "21"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U93", "Parent" : "21"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U94", "Parent" : "21"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U95", "Parent" : "21"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U96", "Parent" : "21"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U97", "Parent" : "21"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U98", "Parent" : "21"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U99", "Parent" : "21"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U100", "Parent" : "21"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U101", "Parent" : "21"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U102", "Parent" : "21"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U103", "Parent" : "21"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U104", "Parent" : "21"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U105", "Parent" : "21"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U106", "Parent" : "21"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U107", "Parent" : "21"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U108", "Parent" : "21"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U109", "Parent" : "21"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U110", "Parent" : "21"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U111", "Parent" : "21"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U112", "Parent" : "21"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U113", "Parent" : "21"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U114", "Parent" : "21"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U115", "Parent" : "21"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U116", "Parent" : "21"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U117", "Parent" : "21"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U118", "Parent" : "21"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U119", "Parent" : "21"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U120", "Parent" : "21"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U121", "Parent" : "21"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U122", "Parent" : "21"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U123", "Parent" : "21"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U124", "Parent" : "21"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U125", "Parent" : "21"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U126", "Parent" : "21"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U127", "Parent" : "21"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U128", "Parent" : "21"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U129", "Parent" : "21"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U130", "Parent" : "21"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U131", "Parent" : "21"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U132", "Parent" : "21"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U133", "Parent" : "21"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U134", "Parent" : "21"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U135", "Parent" : "21"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U136", "Parent" : "21"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U137", "Parent" : "21"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U138", "Parent" : "21"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U139", "Parent" : "21"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U140", "Parent" : "21"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U141", "Parent" : "21"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U142", "Parent" : "21"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U143", "Parent" : "21"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U144", "Parent" : "21"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U145", "Parent" : "21"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U146", "Parent" : "21"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U147", "Parent" : "21"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.mul_32s_32s_32_1_1_U148", "Parent" : "21"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mmult_hw {
		gmem {Type IO LastRead 24 FirstWrite -1}
		in1 {Type I LastRead 0 FirstWrite -1}
		in2 {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		dim {Type I LastRead -1 FirstWrite -1}}
	mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln29 {Type I LastRead 0 FirstWrite -1}
		A {Type O LastRead -1 FirstWrite 2}
		A_1 {Type O LastRead -1 FirstWrite 2}
		A_2 {Type O LastRead -1 FirstWrite 2}
		A_3 {Type O LastRead -1 FirstWrite 2}
		A_4 {Type O LastRead -1 FirstWrite 2}
		A_5 {Type O LastRead -1 FirstWrite 2}
		A_6 {Type O LastRead -1 FirstWrite 2}
		A_7 {Type O LastRead -1 FirstWrite 2}}
	mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln36 {Type I LastRead 0 FirstWrite -1}
		B {Type O LastRead -1 FirstWrite 2}
		B_1 {Type O LastRead -1 FirstWrite 2}
		B_2 {Type O LastRead -1 FirstWrite 2}
		B_3 {Type O LastRead -1 FirstWrite 2}
		B_4 {Type O LastRead -1 FirstWrite 2}
		B_5 {Type O LastRead -1 FirstWrite 2}
		B_6 {Type O LastRead -1 FirstWrite 2}
		B_7 {Type O LastRead -1 FirstWrite 2}}
	mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6 {
		gmem {Type O LastRead -1 FirstWrite 4}
		B {Type I LastRead 1 FirstWrite -1}
		B_1 {Type I LastRead 1 FirstWrite -1}
		B_2 {Type I LastRead 1 FirstWrite -1}
		B_3 {Type I LastRead 1 FirstWrite -1}
		B_4 {Type I LastRead 1 FirstWrite -1}
		B_5 {Type I LastRead 1 FirstWrite -1}
		B_6 {Type I LastRead 1 FirstWrite -1}
		B_7 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 1 FirstWrite -1}
		A_1 {Type I LastRead 1 FirstWrite -1}
		A_2 {Type I LastRead 1 FirstWrite -1}
		A_3 {Type I LastRead 1 FirstWrite -1}
		A_4 {Type I LastRead 1 FirstWrite -1}
		A_5 {Type I LastRead 1 FirstWrite -1}
		A_6 {Type I LastRead 1 FirstWrite -1}
		A_7 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49191", "Max" : "49191"}
	, {"Name" : "Interval", "Min" : "49192", "Max" : "49192"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
