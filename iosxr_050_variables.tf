locals {
  project_title       = "SP-B"
  project_description = "Topology created using Terraform to represent SP-X"

  routers = [
    {
      name = "pe01"
      host = "10.0.1.51"
    },
    {
      name = "pe02"
      host = "10.0.1.52"
    },
    {
      name = "p01"
      host = "10.0.1.53"
    },
    {
      name = "p02"
      host = "10.0.1.54"
    },
    {
      name = "p03"
      host = "10.0.1.55"
    },
    {
      name = "p04"
      host = "10.0.1.56"
    },
    {
      name = "pe03"
      host = "10.0.1.57"
    },
    {
      name = "pe04"
      host = "10.0.1.58"
    },
    {
      name = "asbr01"
      host = "10.0.1.59"
    },
    {
      name = "asbr02"
      host = "10.0.1.60"
    },
    {
      name = "rrpce01"
      host = "10.0.1.61"
    },
    {
      name = "rrpce02"
      host = "10.0.1.62"
    },
  ]

  xr_username = "admin"
  xr_password = "C!sco123"

  ospf_process_id = "1"
  hello_interval  = 10
  dead_interval   = 40
  priority        = 10
}

variable "routers_info" {
  type = map(any)
  default = {
    pe01 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.1"
      loopback_ipv6 = "fc00:10:31:1:0::1"
    },
    pe02 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.2"
      loopback_ipv6 = "fc00:10:31:1:0::2"
    },
    p01 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.3"
      loopback_ipv6 = "fc00:10:31:1:0::3"
    },
    p02 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.4"
      loopback_ipv6 = "fc00:10:31:1:0::4"
    },
    p03 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.5"
      loopback_ipv6 = "fc00:10:31:1:0::5"
    },
    p04 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.6"
      loopback_ipv6 = "fc00:10:31:1:0::6"
    },
    pe03 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.7"
      loopback_ipv6 = "fc00:10:31:1:0::7"
    },
    pe04 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.8"
      loopback_ipv6 = "fc00:10:31:1:0::8"
    },
    asbr01 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.9"
      ipv6_address  = "fc00:10:31:1:0::9"
    },
    asbr02 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.10"
      loopback_ipv6 = "fc00:10:31:1:0::10"
    },
    rrpce01 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.11"
      loopback_ipv6 = "fc00:10:31:1:0::11"
    },
    rrpce02 = {
      loopback_id   = 0
      loopback_ipv4 = "10.31.1.12"
      loopback_ipv6 = "fc00:10:31:1:0::12"
    },
  }
}

variable "ospf_interfaces" {
  type = map(any)
  default = {
    1 = {
      device                      = "pe01"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },
    2 = {
      device                      = "pe01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    3 = {
      device                      = "pe01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    4 = {
      device                      = "pe01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },

    5 = {
      device                      = "pe02"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    6 = {
      device                      = "pe02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    7 = {
      device                      = "pe02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    8 = {
      device                      = "pe02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    9 = {
      device                      = "pe03"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    10 = {
      device                      = "pe03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    11 = {
      device                      = "pe03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    12 = {
      device                      = "pe03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    13 = {
      device                      = "pe04"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    14 = {
      device                      = "pe04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    15 = {
      device                      = "pe04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    16 = {
      device                      = "pe04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    17 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    18 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    19 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    20 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    21 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/2"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    22 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/3"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    23 = {
      device                      = "p01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/4"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    24 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    25 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    26 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    27 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    28 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/2"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    29 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/3"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    30 = {
      device                      = "p03"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/4"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    31 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    32 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    33 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    34 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    35 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/2"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    36 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/3"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    37 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/4"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    38 = {
      device                      = "p02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/5"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    39 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },

    40 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    41 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    42 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    43 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/2"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    44 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/3"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    45 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/4"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    46 = {
      device                      = "p04"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/5"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    47 = {
      device                      = "asbr01"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },
    48 = {
      device                      = "asbr01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    49 = {
      device                      = "asbr01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    50 = {
      device                      = "asbr01"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    51 = {
      device                      = "asbr02"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },
    52 = {
      device                      = "asbr02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    53 = {
      device                      = "asbr02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/1"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    54 = {
      device                      = "asbr02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/10"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    55 = {
      device                      = "rrpce01"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    56 = {
      device                      = "rrpce02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },
    57 = {
      device                      = "rrpce02"
      area                        = 0
      interface_id                = "Loopback0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = true
      passive_disable             = false
    },
    58 = {
      device                      = "rrpce02"
      area                        = 0
      interface_id                = "GigabitEthernet0/0/0/0"
      network_broadcast           = false
      network_non_broadcast       = false
      network_point_to_point      = true
      network_point_to_multipoint = false
      passive_enable              = false
      passive_disable             = true
    },

  }
}