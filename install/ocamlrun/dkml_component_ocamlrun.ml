open Dkml_install_register

let () =
  let reg = Component_registry.get () in
  Component_registry.add_component reg
    (module struct
      include Dkml_install_api.Default_component_config

      let component_name = "ocamlrun"

      let depends_on = []
    end)
