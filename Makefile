# **(Install all dependencies
# 	and configure ARM
#	Package Manager automatically)**

# => make all



# **(Install or uninstall ARM)**
# Install: 		=> make install
# Uninstall: 	=> make remove



# **(The targets below are installed automatically)**
# Install Alien:   => 	make alien-deps

# Install General Dependencies:
# =>	make lang-pkg-deps







# Do not modify
CMD_ALIEN_FEDORA= sudo dnf install alien -y
CMD_ALIEN_DEBIAN= sudo apt install alien -y
CMD_ALIEN_CENTOS= sudo yum install alien -y
CMD_ALIEN_OPENSUSE= sudo zypper install alien -y
CMD_ALIEN_ERROR= echo "Alien could not be installed automatically!\nPlease, install manually package {alien}."

# Do not modify
CMD_DEPS_FEDORA= sudo dnf install python3 pip tk ruby irb -y
CMD_DEPS_DEBIAN= sudo apt install python3 python-pip python-tk ruby irb -y
CMD_DEPS_CENTOS= sudo yum install epel-release && sudo yum install python3 python-pip tkinter ruby irb -y
CMD_DEPS_OPENSUSE= sudo zypper install python3 python-pip python-tk ruby irb -y
CMD_DEPS_ERROR= echo "Dependencies could not be installed automatically, please install them manually:\n(Python 3), (Python PiP), (Python tkinter), (ruby), (irb)\n\n"


# You can modify if you wish
CMD_INSTALL= sudo cp -Rf
CMD_REMOVE= sudo rm -Rf
CMD_AUTH= sudo chmod 777

ARM-PKG_SRC= arm-pkg
ARM-SRC_SRC= arm-src

ARM-SOURCE= arm-source
DIR=/bin



# Targets
all: install

install: alien-deps lang-pkg-deps
	$(CMD_AUTH) $(ARM-PKG_SRC)
	$(CMD_INSTALL) $(ARM-PKG_SRC) $(DIR)/$(ARM-PKG_SRC)
	$(CMD_INSTALL) $(ARM-SOURCE) $(DIR)/$(ARM-SOURCE)

	$(CMD_AUTH) $(ARM-SRC_SRC)
	$(CMD_INSTALL) $(ARM-SRC_SRC) $(DIR)/$(ARM-SRC_SRC)


remove:
	$(CMD_REMOVE) $(DIR)/$(ARM-PKG_SRC)
	$(CMD_REMOVE) $(DIR)/$(ARM-SRC_SRC)
	$(CMD_REMOVE) $(DIR)/$(ARM-SOURCE)
	



# Dependencies
lang-pkg-deps:
# Modify this variable to $(CMD_DEPS_xxx)

# 	@$(CMD_DEPS_FEDORA)
	@$(CMD_DEPS_DEBIAN)
# 	@$(CMD_DEPS_CENTOS)
# 	@$(CMD_DEPS_OPENSUSE)

#	@$(CMD_DEPS_FEDORA)


alien-deps:
# Modify this variable to $(CMD_ALIEN_xxx)

#	@$(CMD_ALIEN_FEDORA)
	@$(CMD_ALIEN_DEBIAN)
#	@$(CMD_ALIEN_CENTOS)
#	@$(CMD_ALIEN_OPENSUSE)

#	@$(CMD_ALIEN_FEDORA)

