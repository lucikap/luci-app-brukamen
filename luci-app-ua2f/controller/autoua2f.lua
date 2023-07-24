module("luci.controller.autoua2f", package.seeall)

function index()
    entry({"admin", "school", "autoua2f"}, cbi("autoua2f"), _("防检测"), 94)
end
