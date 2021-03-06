{
  "ietf-mud:mud" : {
    "mud-version" : 1,
    "mud-url" : "https://lightbulb.com/lightbulb",
    "last-update" : "2022-06-25T12:53:31.637+02:00",
    "cache-validity" : 100,
    "is-supported" : true,
    "systeminfo" : "lightbulb",
    "from-device-policy" : {
      "access-lists" : {
        "access-list" : [ {
          "name" : "from-ipv4-lightbulb"
        } ]
      }
    },
    "to-device-policy" : {
      "access-lists" : {
        "access-list" : [ {
          "name" : "to-ipv4-lightbulb"
        } ]
      }
    }
  },
  "ietf-access-control-list:access-lists" : {
    "acl" : [ {
      "name" : "from-ipv4-lightbulb",
      "type" : "ipv4-acl-type",
      "aces" : {
        "ace" : [ {
          "name" : "from-ipv4-lightbulb-0",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "destination-ipv4-network" : "18.185.182.159/32"
            },
            "tcp" : {
              "destination-port" : {
                "operator" : "eq",
                "port" : 443
              },
              "source-port" : {
                "operator" : "eq",
                "port" : 63636
              },
              "ietf-mud:direction-initiated" : "from-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "from-ipv4-lightbulb-1",
          "matches" : {
            "ietf-mud:mud" : {
              "local-networks" : [ null ]
            },
            "ipv4" : {
              "protocol" : 17,
              "destination-ipv4-network" : "255.255.255.255/32"
            },
            "udp" : {
              "destination-port" : {
                "operator" : "eq",
                "port" : 6667
              }
            },
            "eth" : {
              "destination-mac-address" : "ff:ff:ff:ff:ff:ff",
              "ethertype" : "0x0800"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "from-ipv4-lightbulb-2",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "destination-ipv4-network" : "52.58.249.45/32"
            },
            "tcp" : {
              "destination-port" : {
                "operator" : "eq",
                "port" : 8886
              },
              "source-port" : {
                "operator" : "eq",
                "port" : 40386
              },
              "ietf-mud:direction-initiated" : "from-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        } ]
      }
    }, {
      "name" : "to-ipv4-lightbulb",
      "type" : "ipv4-acl-type",
      "aces" : {
        "ace" : [ {
          "name" : "to-ipv4-lightbulb-0",
          "matches" : {
            "ietf-mud:mud" : {
              "controller" : "urn:ietf:params:mud:gateway"
            },
            "ipv4" : {
              "protocol" : 17
            },
            "udp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 67
              }
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "to-ipv4-lightbulb-1",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "source-ipv4-network" : "52.58.249.45/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 8886
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 40386
              },
              "ietf-mud:direction-initiated" : "to-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "to-ipv4-lightbulb-2",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "source-ipv4-network" : "18.185.182.159/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 443
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 63636
              },
              "ietf-mud:direction-initiated" : "to-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        } ]
      }
    } ]
  }
}