# A list of your WordPress plugins.
{ callPackage, ... }:
let
  utils = callPackage ./utils.nix {};
  getPlugin = utils.getPlugin;

  requiredPlugins = [
    (getPlugin "opcache"      "0.3.1" "18x6fnfc7ka4ynxv4z3rf4011ivqc0qy0dsd6i4lxa113jjyqz6d")
    (getPlugin "nginx-helper" "1.9.9" "12bij1qjx1s282akbh232lmfypg2xa5n9n7mb8g4widl0xabys6n")
  ];
in requiredPlugins ++ [
  (getPlugin "akismet" "3.3"   "02vsjnr7bs54a744p64rx7jwlbcall6nhh1mv6w54zbwj4ygqz68")
  (getPlugin "jetpack" "4.6" "08dk1b5x2pr5gf2sqza41n0z8liiicalki0fxzkxsblgm81d5qbd")
]
