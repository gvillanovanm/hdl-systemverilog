class eg_env extends uvm_env;
  `uvm_component_utils(eg_env)

  eg_agent_a uu_eg_agent_a;

  function new(string name = "eg_env", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    uu_eg_agent_a = eg_agent_a::type_id::create("uu_eg_agent_a", this);
  endfunction: build_phase

endclass : eg_env