package("DeerShortcut")

    add_urls("git@github.com:Moon-Ocean/DeerShortcut.git")

    on_install(function (package)
        if package:config("shared") then
            package:add("PATH", "bin")
        end
        import("package.tools.xmake").install(package)
    end)