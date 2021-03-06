{
  "ietf-mud:mud" : {
    "mud-version" : 1,
    "mud-url" : "https://smartpowerplug.com/smartpowerplug",
    "last-update" : "2022-06-25T12:42:09.903+02:00",
    "cache-validity" : 100,
    "is-supported" : true,
    "systeminfo" : "smartpowerplug",
    "from-device-policy" : {
      "access-lists" : {
        "access-list" : [ {
          "name" : "from-ipv4-smartpowerplug"
        } ]
      }
    },
    "to-device-policy" : {
      "access-lists" : {
        "access-list" : [ {
          "name" : "to-ipv4-smartpowerplug"
        } ]
      }
    }
  },
  "ietf-access-control-list:access-lists" : {
    "acl" : [ {
      "name" : "from-ipv4-smartpowerplug",
      "type" : "ipv4-acl-type",
      "aces" : {
        "ace" : [ {
          "name" : "from-ipv4-smartpowerplug-0",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "destination-ipv4-network" : "3.121.131.36/32"
            },
            "tcp" : {
              "destination-port" : {
                "operator" : "eq",
                "port" : 443
              },
              "source-port" : {
                "operator" : "eq",
                "port" : 59766
              },
              "ietf-mud:direction-initiated" : "from-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "from-ipv4-smartpowerplug-1",
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
          "name" :"from-ipv4-smartpowerplug-2",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "destination-ipv4-network" : "3.120.92.134/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 40151
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 8886
              },
              "ietf-mud:direction-initiated": "from-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" :"from-ipv4-smartpowerplug-3",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "destination-ipv4-network" : "35.156.42.116/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 40572
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 8886
              },
              "ietf-mud:direction-initiated": "from-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        } ]
      }
    }, {
      "name" : "to-ipv4-smartpowerplug",
      "type" : "ipv4-acl-type",
      "aces" : {
        "ace" : [ {
          "name" : "to-ipv4-smartpowerplug-0",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "source-ipv4-network" : "3.121.131.36/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 443
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 59766
              },
              "ietf-mud:direction-initiated": "to-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "to-ipv4-smartpowerplug-1",
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
          "name" : "to-ipv4-smartpowerplug-2",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "source-ipv4-network" : "3.120.92.134/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 8886
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 40151
              },
              "ietf-mud:direction-initiated": "to-device"
            }
          },
          "actions" : {
            "forwarding" : "accept"
          }
        }, {
          "name" : "to-ipv4-smartpowerplug-3",
          "matches" : {
            "ipv4" : {
              "protocol" : 6,
              "source-ipv4-network" : "35.156.42.116/32"
            },
            "tcp" : {
              "source-port" : {
                "operator" : "eq",
                "port" : 8886
              },
              "destination-port" : {
                "operator" : "eq",
                "port" : 40572
              },
              "ietf-mud:direction-initiated": "to-device"
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