include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-ua2f
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Brukamen <169296793@qq.com>
PKG_LICENSE:=GPL-3.0-or-later

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-ua2f
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI for ua2f
	DEPENDS:=
endef

define Build/Prepare
endef

define Build/Compile
endef

define Package/luci-app-ua2f/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./autoua2f $(1)/etc/config/

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./controller/autoua2f.lua $(1)/usr/lib/lua/luci/controller/

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/
	$(INSTALL_DATA) ./cbi/autoua2f.lua $(1)/usr/lib/lua/luci/model/cbi/
	
	$(INSTALL_DIR) $(1)/etc/init.d/
	$(foreach file,$(wildcard ./init.d/*), \
		$(INSTALL_BIN) $(file) $(1)/etc/init.d/$(notdir $(file)); \
	)

	chmod +x $(1)/etc/init.d/autoua2f
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
