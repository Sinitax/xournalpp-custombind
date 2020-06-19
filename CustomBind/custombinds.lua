
-- Register all Toolbar actions and intialize all UI stuff
function initUi()
    app.registerUi({["menu"] = "Pen Shortcut", ["callback"] = "penAction", ["accelerator"] = "<Control>x"});
    app.registerUi({["menu"] = "Eraser Shortcut", ["callback"] = "eraserAction", ["accelerator"] = "<Control>y"});
end

function eraserAction()
    app.uiActionSelected("GROUP_TOOL", "ACTION_TOOL_ERASER");
    app.uiAction({["group"] = "GROUP_TOOL", ["action"] = "ACTION_TOOL_ERASER"});
end

function penAction()
    app.uiActionSelected("GROUP_TOOL", "ACTION_TOOL_PEN");
    app.uiAction({["group"] = "GROUP_TOOL", ["action"] = "ACTION_TOOL_PEN"});
end

