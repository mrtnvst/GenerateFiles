function Get-RandomFileName {
    $baseNames = @(
        "Data", "Log", "Backup", "Test", "Config",
        "Report", "Summary", "Invoice", "Picture", "Table", 
        "Note", "Letter", "Project", "Budget", "Plan"
    )
    return Get-Random -InputObject $baseNames
}