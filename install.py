import os
import shutil
import tempfile
import os.path as p


def install():
    src = p.abspath(p.join(__file__, "..", "nvim"))
    dst = p.abspath(p.join(p.expandvars("$HOME"), ".config", "nvim"))
    if p.exists(dst):
        # FIXME: when there is a file in temp dir whose name is same as dst
        shutil.move(dst, tempfile.gettempdir())
    os.symlink(src, dst)
    os.system(
        "git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim"
    )


if __name__ == "__main__":
    install()
