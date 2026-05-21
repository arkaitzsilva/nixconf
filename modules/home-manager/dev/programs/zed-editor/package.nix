{
  flake.modules.homeManager.dev = { pkgs, osConfig, ... }: {
    programs.zed-editor.package =
      if osConfig.hardware.nvidia.prime.offload.enable or false then
        pkgs.symlinkJoin {
          name = "zeditor-wrapped";
          paths = [ pkgs.zed-editor ];
          nativeBuildInputs = [ pkgs.makeWrapper ];
          postBuild = ''
            wrapProgram $out/bin/zeditor \
              --set VK_ICD_FILENAMES /run/opengl-driver/share/vulkan/icd.d/nvidia_icd.json \
              --set __NV_PRIME_RENDER_OFFLOAD 1
          '';
        }
      else pkgs.zed-editor;
    };
}
