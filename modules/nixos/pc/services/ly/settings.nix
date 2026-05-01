{
  flake.modules.nixos.pc = {
    services.displayManager.ly = {
      settings = {
        save = true;
        allow_empty_password = false;
        animation = "matrix";
        cmatrix_min_codepoint = "0x30";
        cmatrix_max_codepoint = "0x32";
        brightness_down_key = "F5";
        # brightness_down_cmd = "${pkgs.brightnessctl}/bin/brightnessctl -q -n s 10%-";
        brightness_up_key = "F6";
        # brightness_up_cmd = "${pkgs.brightnessctl}/bin/brightnessctl -q -n s 10%+";
        lang = "es";
        hide_version_string = true;
        xsessions = "";
      };
      x11Support = false;
    };
  };
}
